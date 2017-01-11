<?php
defined('_JEXEC') or die('Restricted access');

class modBannerSliderHelper
{
	// get the parameters
	function getparam($params)
	{
		$var = array();

		$var['moduleclass_sfx'] = $params->get('moduleclass_sfx');

		$var['banners']			= $params->get('banners', '');
		$var['categories']		= $params->get('categories', '');
		$var['clients']			= $params->get('clients', '');
		$var['type'] 			= $params->get('type', 1);

		$var['effect']			= $params->get('effect', 'fade');

		$var['width']			= $params->get('width', 180);
		$var['height']			= $params->get('height', 150);
		$var['delay']			= $params->get('delay', 3000);

		$var['random']			= $params->get('random', 1);
		
		$var['resize']			= $params->get('resize', 0);
		$var['center']			= $params->get('center', 0);
		
		$var['window']			= $params->get('window', 1);
		$var['impress']			= $params->get('track_impressions', 0);

		return $var;
	}
	
	function display($conf)
	{
		$where = array();
		if ($conf['banners'] != '') {
			$where[] = 'bid IN (' . modBannerSliderHelper::clean($conf['banners']) . ')';
		}
		
		if ($conf['categories'] != '') {
			$where[] = 'catid IN (' . modBannerSliderHelper::clean($conf['categories']) . ')';
		}

		if ($conf['clients'] != '') {
			$where[] = 'cid IN (' . modBannerSliderHelper::clean($conf['clients']) . ')';
		}
		
		$where = (count($where) > 0)
				 ? ' AND (' . implode(' OR ', $where) . ')'
				 : '';

		$query = "SELECT bid,imageurl,custombannercode,description,impmade,imptotal"
				 . " FROM #__banner WHERE showBanner=1 AND (imptotal = 0 OR impmade < imptotal)"
				 . $where . " ORDER BY bid";
		
		$db = &JFactory::getDBO();
		$db->setQuery($query);
		
		$data = $db->loadObjectList();
		
		modBannerSliderHelper::impress($data, $conf['impress']);
		
		require(JModuleHelper::getLayoutPath('mod_bannerslider'));
	}
	
	function impress($list, $trackImpressions)
	{
		$n = count($list);
		
		if ($n > 0) {
			$db = &JFactory::getDBO();

			$date = &JFactory::getDate();
			$trackDate = $date->toFormat('%Y-%m-%d');

			for ($i = 0; $i < $n; $i++) {
				$item = &$list[$i];

				$item->impmade++;
				$expire = ($item->impmade >= $item->imptotal) && ($item->imptotal != 0);
	
				$query = 'UPDATE #__banner SET impmade=impmade+1'
						 . ($expire ? ', showBanner=0' : '')
						 . ' WHERE bid = '.(int)$item->bid;
				$db->setQuery($query);
	
				if (!$db->query()) {
					JError::raiseError(500, $db->stderror());
				}
	
				if ($trackImpressions) {
					$query = 'INSERT INTO #__bannertrack(track_type,banner_id,track_date) VALUES'
							 . '( 1,' . (int)$item->bid . ',' . $db->Quote($trackDate) . ')';
					$db->setQuery($query);
	
					if (!$db->query()) {
						JError::raiseError(500, $db->stderror());
					}
				}
			}
		}
	}
	
	function clean($in)
	{
		return preg_replace(
			array('#^[^\d]+|[^\d,]|[^\d]+$#', '#,{2,}#'), 
			array('', ','),
			$in
		);
	}
	
	function htmlsafe($in)
	{
		if (empty($in)) {
			return '';
		}
		$in = htmlspecialchars($in, ENT_COMPAT, 'UTF-8');
		return preg_replace('#\s+#', ' ', $in);
	}
}
?>
