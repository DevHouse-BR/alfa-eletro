<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

require_once (dirname(__FILE__) . DS . 'diagram.php');
require_once (dirname(__FILE__) . DS . 'ipcountry' . DS . 'iptocountry.php');

jimport('joomla.environment.browser');
jimport('joomla.language.helper');

/**
 *
 * @version	$Id: helper.php 41 2009-04-16 17:24:47Z mmicha $
 * @package mod_vvisit_counter
 * @copyright Copyright (C) 2009 Majunke Michael majunke@mmajunke.de
 * @license GNU/GPL
 *
 */
class modVisitCounterHelper {

   	// Konstanten
   	//
    // da viele ein Problem mit const haben, erstmal rausgenommen
    // Marke : TODO_CO_MOD
    // const MODULE = 'mod_vvisit_counter' ;
    private $MODULE = 'mod_vvisit_counter' ;
	private $mdclsf = null;

    // Members
	//
    private $db = null ;
    private $all_visitors = null ;

	// Read our Parameters
    //
    // Days
    private $translate_table_texts = null ;
    private $today = null;
    private $yesterday = null;
    private $x_month = null;
    private $x_week = null;
    private $all = null;
    // IP
    private $ip = null;
    private $ip_type = null;
    private $ip_type_man = null;
    private $filterIPs = "" ;
	// Data
	private $countUserAsNewType = null ;
    private $locktime = null;
    private $initialvalue = null;
    private $records = null;
    // Show Days
    private $s_today = null;
    private $s_yesterday = null;
    private $s_all = null;
    private $s_week = null;
    private $s_month = null;
    private $s_week_startday = null ;
    // Show IP
    private $s_ip = null;
    private $s_ipCcode = null;
    private $s_ipCountry = null;
    private $s_ipCflag = null;
    private $s_ipCflag_width = null;
    private $s_ipCflag_height = null;
    private $s_ipCLic = null;
    private $s_ipCLicText = null;

    // Show Images before Days ( little Poeples )
    private $show_UsageImgs = null;
    // Show Digit Counter
    private $s_digit = null;
    // Display Type of Digits
    private $disp_type = null;
    // manuell Type
    private $disp_type_man = null;
    // Digits Counter Parameters
    private $s_digits_min = null;
    private $s_digits_max = null;
    private $s_digits_warnimg = null;

    private $pretext = null;
    private $posttext = null;

    private $widthtable = null;
    // call create Table or not
    private $s_trycreatetable = null;
    private $s_createtableName = null;
    // image
    // erstellen ?
    private $image_create = 0;
    private $image_path = null;
    // Stunden die das Bild aktuell ist
    private $image_newerAsHours = null;
    // Anzahl Tage
    private $image_showDays = null;

    private $image_sizeX = null;
    private $image_sizeY = null;
    // HTML COLORS
    private $image_lineColor = "#000000" ;
    private $image_dia_bgColor = "#DDDDDD";
    private $image_dia_RandColor = "#FF0000";
    // Read Only Param
    private $read_only_counter = false;

	// UserAgent Filter ( array with str;str;... )
	private $filterUserAgents = "" ;
	private $autoFilterRobots = FALSE;
	private $saveUserAgents = FALSE ;

	//
	private $callerIP = "";

	// Instanz of IP to Country Mapper
	private $ipToCountry = null;

	/**
	 * Konstruktor
	 */
    public function __construct(&$params)
    {
        //
       	$this->mdclsf = @$params->get( 'moduleclass_sfx' , '' ) ;

        // Read our Parameters
        // Translate, Days, ..
        $this->translate_table_texts = @$params->get('s_translate_table_texts', 0);
        $this->today = @$params->get('today', 'Today');
        $this->yesterday = @$params->get('yesterday', 'Yesterday');
        $this->x_month = @$params->get('month', 'This Month');
        $this->x_week = @$params->get('week', 'This Week');
        $this->all = @$params->get('all', 'All Days');

        // IP
        $this->ip = @$params->get('ip', '');
        $this->ip_type = @$params->get('ip_type', 'text');
        $this->ip_type_man = @$params->get('ip_type_man', "");
        if ($this->ip_type == 'dispTypeMan' && $this->ip_type_man != "") {
            $this->ip_type = $this->ip_type_man ;
        }
		$this->filterIPs = @$params->get('filterIPs', "");

        // Data
        $this->countUserAsNewType = @$params->get('s_countUserAsNewType', 0);
        $this->locktime = @$params->get('locktime', 30);
        $this->initialvalue = @$params->get('initialvalue', 0);
        $this->records = @$params->get('records', 1);
        // Show Days
        $this->s_today = @$params->get('s_today', 1);
        $this->s_yesterday = @$params->get('s_yesterday', 1);
        $this->s_all = @$params->get('s_all', 1);
        $this->s_week = @$params->get('s_week', 1);
        $this->s_month = @$params->get('s_month', 1);
        $this->s_week_startday = @$params->get('s_week_startday', 1);
        // Show IP
        $this->s_ip = @$params->get('s_ip', 0);
        $this->s_ipCcode = @$params->get('s_ipCcode', 0);
        $this->s_ipCountry = @$params->get('s_ipCountry', 0);
        $this->s_ipCflag = @$params->get('s_ipCflag', 0);
        $this->s_ipCflag_width = @$params->get('s_ipCflag_width', 20);
        $this->s_ipCflag_height = @$params->get('s_ipCflag_height', 13);

        $this->s_ipCLic = @$params->get('s_ipCLic', 1);
        $this->s_ipCLicText = @$params->get('s_ipCLicText',
		    "<p style='font-size:25%'>This page uses the IP-to-Country Database provided by WebHosting.Info (http://www.webhosting.info), available from http://ip-to-country.webhosting.info</p>");

        // Show Images before Days ( little Poeples )
        $this->show_UsageImgs = @$params->get('show_UsageImgs', 1);
        // Show Digit Counter
        $this->s_digit = @$params->get('s_digit', 1);
        // Display Type of Digits
        $this->disp_type = @$params->get('disp_type', "text");
        // manuell Type
        $this->disp_type_man = @$params->get('disp_type_man', "");
        if ($this->disp_type == 'dispTypeMan' && $this->disp_type_man != "") {
            $this->disp_type = $this->disp_type_man ;
        }
        // Digits Counter Parameters
        $this->s_digits_min = @$params->get('s_digits_min', "6");
        $this->s_digits_max = @$params->get('s_digits_max', "6");
        $this->s_digits_warnimg = @$params->get('s_digits_warnimg', "");

        $this->pretext = @$params->get('pretext', "");
        $this->posttext = @$params->get('posttext', "");

        $this->widthtable = @$params->get('widthtable', "100");
        // call create Table or not
        $this->s_trycreatetable = @$params->get('s_trycreatetable', 1);
        $this->s_createtableName = '#__' ;
        $this->s_createtableName .=  @$params->get('s_createtableName', "vvisitcounter" );

        // Image
        $this->image_create = @$params->get('image_create', 0);
        $this->image_path = @$params->get('image_path', '/tmp/imagemvc.png');
        $this->image_newerAsHours = @$params->get('image_newerAsHours', 6);
        $this->image_sizeX = @$params->get('image_sizeX', 160);
        $this->image_sizeY = @$params->get('image_sizeY', 90);
        $this->image_lineColor = @$params->get('image_lineColor', "#000000");
        $this->image_dia_bgColor = @$params->get('image_dia_bgColor', "#DDDDDD");
        $this->image_dia_RandColor = @$params->get('image_dia_RandColor', "#FF0000");
        $this->image_showDays = @$params->get('image_showDays', 0); // <0 all;

        // read only mode
        $this->read_only_counter = @$params->get('read_only_counter', false);

        // Filter UserAgents
        $this->filterUserAgents = @$params->get('filterUserAgents', "");
        $this->autoFilterRobots = @$params->get('s_autoFilterRobots' , 0 );
        $this->saveUserAgents = @$params->get('saveUserAgents', 0 );

		// Auto Translate Texts.. if not found, is the same
		// translate is only needed if show the days
        if ( $this->translate_table_texts == 1 ) {
			if ($this->s_today) {
        		$this->today = $this->get_translated_text($this->today);
	        }
			if ($this->s_yesterday) {
				$this->yesterday = $this->get_translated_text($this->yesterday);
			}
    	    if ($this->s_week) {
        		$this->x_week = $this->get_translated_text($this->x_week);
        	}
			if ($this->s_month) {
    	    	$this->x_month = $this->get_translated_text($this->x_month);
    	    }
        	if ($this->s_all) {
        		$this->all = $this->get_translated_text($this->all);
        	}
        }

        // Initalisierung
        $this->init($params);
    }

    /**
     * render IP-Adress
     * <div class="mvc_ip">
     *   für text
	 *   <span class="vcounter_TypeTextIP">..
	 *   or
	 *   <img class="mvc_digitCounterImg" ...
	 * </div>
	 *
     * @return content
     */
    public function renderIP()
    {

        if ( $this->s_ip && ($this->callerIP != null) ) {

			// return '<div style="text-align: center;" class="mvc_ip' . $this->mdclsf . '">' . $this->ip . $this->callerIP . '</div>';

            $content = '<div style="text-align: center;" class="mvc_ip' . $this->mdclsf . '">' . $this->ip ;
            // spezial Type Text
            if ($this->ip_type == 'text') {

			    // Show as Text
                $content .= '<span style="text-align: center;" class="vcounter_TypeTextIP' . $this->mdclsf . '">' . $this->callerIP . '</span>' ;

            } else {

				//split
            	$arr_ip_Part = explode( ".", $this->callerIP , 4 );
				if ( $arr_ip_Part == null || (empty($arr_ip_Part)) ) {
					return;
				}
				//
				$c=0 ;
            	foreach( $arr_ip_Part as $ip_Part ){
	                // Render Images
	                $content .= $this->numToImg(
					    $ip_Part ,
	                    1 ,
	                    3 ,
	                    JURI::base() . 'modules/' .
	                    // TODO_CO_MOD modVisitCounterHelper::MODULE
	                    $this->MODULE . '/images/' . $this->ip_type . '/',
	                    null,
						'mvc_digitIPImg' );
	                if ( $c++ < 3) {
	                	$dir = JURI::base() . 'modules/' .
	                           // TODO_CO_MOD modVisitCounterHelper::MODULE
	                           $this->MODULE . '/images/' . $this->ip_type . '/';
	                	$content .= "<img class=\"mvc_digitIPImg" . $this->mdclsf . "\" src=\"{$dir}dot.gif\" alt=\"Dot\"/>" ;

	                }
            	}

            }
            $content .= '</div>';
            return $content;

        } else {
            return "";
        }
    }


    /**
     * render Country Code of IP (callerIP)
     * <div class="mvc_ipcountrycode"> ...
     */
    public function renderIPCountryCode()
    {

    	if ( !$this->s_ipCcode ||
		     $this->ipToCountry == null ||
			 $this->callerIP == null ){
    		return "";
    	}
		//
		$code = $this->ipToCountry->getISOAlphaZwei($this->callerIP);
		// Test
		//$code = $this->ipToCountry->getISOAlphaZwei("85.233.46.218");
        if ( empty($code) ) {
            $code = "?";
        }
        return '<div style="text-align: center;" class="mvc_ipcountrycode' . $this->mdclsf . '">' . $code . '</div>';
    }

    /**
     * render Country of IP (callerIP)
     * <div class="mvc_ipcountry"> ...
     */
    public function renderIPCountry()
    {

    	if ( !$this->s_ipCountry ||
		     $this->ipToCountry == null ||
			 $this->callerIP == null ) {
    		return "";
    	}
		//
		$country = $this->ipToCountry->getCountry($this->callerIP);
		// Test
		// $country = $this->ipToCountry->getCountry("85.233.46.218");

        if ( empty($country) ) {
            $country = "?";
        }
        return '<div style="text-align: center;" class="mvc_ipcountry' . $this->mdclsf . '">' . $country . '</div>';
    }


    /**
     * render Flag of IP (callerIP)
     * <div class="mvc_ipflag"> ...
     *   <img class="mvc_ipflagimg"
     */
    public function renderIPFlag()
    {

    	if ( !$this->s_ipCflag ||
		     $this->ipToCountry == null ||
			 $this->callerIP == null ) {
    		return "";
    	}
		//
		$code = $this->ipToCountry->getISOAlphaZwei($this->callerIP);
		// Test
		//$code = $this->ipToCountry->getISOAlphaZwei("85.233.46.218");

		// make an empty check
        $img = $this->isoZweiToFlagImg(
		    $code ,
            JURI::base() . 'modules/' .
            // TODO_CO_MOD modVisitCounterHelper::MODULE
            $this->MODULE . '/images/flags/',
			'mvc_ipflagimg' ,
			$this->s_ipCflag_width,
			$this->s_ipCflag_height );

         return '<div style="text-align: center;" class="mvc_ipflag' . $this->mdclsf . '">' . $img . "</div>";

    }


    /**
     * render PRE-Text
     * <div class="mvc_pre"> ...
     */
    public function renderPRE()
    {
        if ($this->pretext != "") {
            return '<div style="text-align: center;" class="mvc_pre' . $this->mdclsf . '">' . $this->pretext . '</div>';
        } else {
            return "";
        }
    }

    /**
     * render POST-Text
     * <div class="mvc_post"> ...
     */
    public function renderPOST()
    {
    	$other = null;
    	if ( ( $this->s_ipCcode || $this->s_ipCountry || $this->s_ipCflag ) && $this->s_ipCLic ) {
    		$other = $this->s_ipCLicText;
    	}

        if ( ($this->posttext != "") || !empty($other) ) {
            return '<div style="text-align: center;" class="mvc_post' . $this->mdclsf . '">' . $this->posttext . $other . '</div>';
        } else {
            return "";
        }
    }

    /**
     * render POST-Text
     * <div class="mvc_digitCounter"> ...
     *   <span class="vcounter_TypeText"
     * or
     *   <img class="mvc_digitCounterImg"
     */
    public function renderDigitCounter()
    {
        if ($this->s_digit) {
            $content = '<div style="text-align: center;" class="mvc_digitCounter' . $this->mdclsf . '">';
            // spezial Type Text
            if ($this->disp_type == 'text') {
                // Show as Text
                $content .= '<span style="text-align: center;" class="vcounter_TypeText' . $this->mdclsf . '">' . $this->all_visitors . '</span>' ;
            } else {
                // Render Images
                $content .= $this->numToImg($this->all_visitors ,
                    $this->s_digits_min ,
                    $this->s_digits_max ,
                    JURI::base() . 'modules/' .
                    // TODO_CO_MOD modVisitCounterHelper::MODULE
                    $this->MODULE . '/images/' . $this->disp_type . '/',
                    $this->s_digits_warnimg,
					'mvc_digitCounterImg');
            }
            $content .= '</div>';
            return $content;
        } else {
            return "";
        }
    }

    /**
     * Render the People Table
     * <div class="mvc_people"> ...
     *   <table class="mvc_peopleTable"
     *    <img class="mvc_peopleImg"
     */
    public function renderPeopleTable()
    {
        if ($this->s_today || $this->s_yesterday || $this->s_week || $this->s_month || $this->s_all) {

		   	$content = '<div style="text-align: center;" class="mvc_people' . $this->mdclsf . '"><table align="center" cellpadding="0" cellspacing="0" style="text-align: center; width: ' . $this->widthtable . '%;" class="mvc_peopleTable' . $this->mdclsf . '"><tbody align="center">';

            if ($this->s_today) {
                $query = "SELECT COUNT(*) FROM " . $this->s_createtableName . " WHERE (YEAR(NOW())= YEAR(FROM_UNIXTIME(tm))) AND (DAYOFYEAR(NOW())=DAYOFYEAR(FROM_UNIXTIME(tm)))" ;
                $this->db->setQuery($query);
                $today_visitors = $this->db->loadResult();
                $content .= modVisitCounterHelper::spaceer("vtoday.png", $this->today, $today_visitors, $this->show_UsageImgs);
            }

            if ($this->s_yesterday) {
                $query = "SELECT COUNT(*) FROM " . $this->s_createtableName . " WHERE (YEAR(NOW())= YEAR(FROM_UNIXTIME(tm))) AND (DAYOFYEAR(FROM_UNIXTIME(tm))=DAYOFYEAR(now())-1)" ;
                $this->db->setQuery($query);
                $yesterday_visitors = $this->db->loadResult();
                $content .= modVisitCounterHelper::spaceer("vyesterday.png", $this->yesterday, $yesterday_visitors, $this->show_UsageImgs);
            }

            if ($this->s_week) {
            	$week_mode = $this->getWeekMode();
                $query = "SELECT COUNT(*) FROM " . $this->s_createtableName . " WHERE (YEAR(NOW())= YEAR(FROM_UNIXTIME(tm))) AND (WEEK(NOW()," . $week_mode . ")=WEEK(FROM_UNIXTIME(tm)," . $week_mode . "))" ;
                $this->db->setQuery($query);
                $week_visitors = $this->db->loadResult();
                $content .= modVisitCounterHelper::spaceer("vweek.png", $this->x_week, $week_visitors, $this->show_UsageImgs);
            }

            if ($this->s_month) {
                $query = "SELECT COUNT(*) FROM " . $this->s_createtableName . " WHERE (YEAR(NOW())=YEAR(FROM_UNIXTIME(tm))) AND (MONTH(NOW())=MONTH(FROM_UNIXTIME(tm)))" ;
                $this->db->setQuery($query);
                $month_visitors = $this->db->loadResult();
                $content .= modVisitCounterHelper::spaceer("vmonth.png", $this->x_month, $month_visitors, $this->show_UsageImgs);
            }

			// Err ?
			if( $this->db->getErrorNum () ) {
				$e = $this->db->getErrorMsg();
				//print_r( $e );
				JError::raiseWarning( 500, $e );
				return;
			}

            if ($this->s_all) {
	            $content .= modVisitCounterHelper::spaceer("vall.png", $this->all, $this->all_visitors, $this->show_UsageImgs);
			}

	        $content .= "</tbody></table></div>";
            return $content;

        } else {
            return "";
        }
    }

    /**
     * Render the Statistik Image
     * <div class="mvc_stat"
     *  <img class="mvc_statImg"
     */
    public function renderStatistikImage()
    {
        if ( $this->image_create > 0 ) {
            $content = '';
            // save if not exist and older as time
            // $imagePathFS = JPATH_BASE . DS . 'modules' . DS . modVisitCounterHelper::MODULE . DS . 'image.png';
            $imagePathFS = JPATH_BASE . $this->image_path ;
            if (! file_exists($imagePathFS)) {

				if ( $this->image_create == 2 ){
                      $this->renderStatImage( $this->db,
                                              $imagePathFS,
                                              $this->image_showDays,
                                              true );
                    }
                    else {
                        $this->renderStatImage( $this->db,
                                              $imagePathFS,
                                              $this->image_showDays,
                                              false );
                    }

            } else {
                $filtm = filemtime($imagePathFS);
                $diffinHours = (time() - $filtm) / 60 / 60 ;
                // erstelle nur wenn neuer als Stunden
                if ($diffinHours > $this->image_newerAsHours) {

                    if ( $this->image_create == 2 ){
                      $this->renderStatImage( $this->db,
                                              $imagePathFS,
                                              $this->image_showDays,
                                              true );
                    }
                    else {
                        $this->renderStatImage( $this->db,
                                              $imagePathFS,
                                              $this->image_showDays,
                                              false );
                    }
                }
            }


            // URL to Load
            // $imageUri = JURI::base() . 'modules/' . modVisitCounterHelper::MODULE . '/image.png';
            $imageUri = JURI::base() . $this->image_path;
            $content .= '<div style="text-align: center; padding: 5px ;" class="mvc_stat' . $this->mdclsf . '">' ;
            $content .= '<img class="mvc_statImg' . $this->mdclsf . '" alt="' . $this->get_translated_text('CREATED_STAT_ALT') . ': ' . date( "c" ) . '" src="' . $imageUri . '"/>';
            $content .= "</div>";
            return $content;
        } else {
            return "";
        }
    }

	/**
	 * Translate a Text with Language from Request (Client-Language)
	 *
	 * need a Language-File
	 *
	 * @param  $string toTranslate
	 * @return tranlated text or same
	 */
	protected function get_translated_text( $string ){
		$lang_str = JLanguageHelper::detectLanguage();
		$lang =& JLanguage::getInstance($lang_str);
		$loaded = $lang->load(  $this->MODULE );
		if ( $lang->hasKey($string) === true ) {
			return $lang->_($string, false);
		}
		else {
			return $string;
		}
	}

    /**
     * Init Clazz
     */
    protected function init($params)
    {
        // Database init
        $this->db = &JFactory::getDBO();

		// callerIP
		$this->callerIP = $_SERVER['REMOTE_ADDR'];
		// UserAgent
	   	$userAgent = $_SERVER['HTTP_USER_AGENT'];
	   	// Filter
	   	$is_filter = FALSE ;

		// Filter Robots
		if ( $this->autoFilterRobots ) {
			$browser = JBrowser::getInstance();
			$is_filter = $browser->isRobot() ;
		}

		// Filter durch UserAgent
		// Test nur wenn nicht sowieso schon gefiltert wird.. langform
		if ( $is_filter === FALSE ) {
		   	if ( (!empty($userAgent)) && (!empty( $this->filterUserAgents )) ) {
		 	    //
				$userAgent = trim($userAgent);
			   	// max length
			   	if ( strlen($userAgent) > 512 ) {
			   		$userAgent = substr( $userAgent, 0, 511 );
			   	}
			   	// search Skiped UserAgents
			   	$arr_filterUserAgents = explode( ";", $this->filterUserAgents );
			   	foreach( $arr_filterUserAgents as $toFilterUA ){
				   	if ( strpos( $userAgent, $toFilterUA ) !== FALSE ) {
				   		$is_filter = TRUE ;
				   		break;
				   	}
			   	}
		   	}
	   	}

		// Filter durch IP
		// Test nur wenn nicht sowieso schon gefiltert wird.. langform
		if ( $is_filter === FALSE ) {
		   	if ( (!empty($this->callerIP)) &&
			     (!empty( $this->filterIPs )) ) {
			   	// search Skiped UserAgents
			   	$arr_filterIPs = explode( ";", $this->filterIPs );
			   	foreach( $arr_filterIPs as $toFilterIP ){
			   		// geht von gleicher Schreibweise aus
				   	if ( $this->callerIP == $toFilterIP ) {
				   		$is_filter = TRUE ;
				   		break;
				   	}
			   	}
		   	}
		}

	   	// not filtered UserAgent then save
	   	// dies könnte man auch hier einbauen anstatt unten
		//  dann sehen diese kein MAX
	   	// if ( $is_filter === FALSE ) {

		// Check if table exists. When not, create it
        if ($this->s_trycreatetable) {
            $query = "CREATE TABLE IF NOT EXISTS " . $this->s_createtableName . "(id int(11) unsigned NOT NULL auto_increment, tm int not null, ip varchar(16) not null default '0.0.0.0', userAgent varchar(512) default NULL, PRIMARY KEY (id), KEY userAgent (userAgent(512)), KEY tmIP (tm,ip)) ENGINE=MyISAM AUTO_INCREMENT=1";
            $this->db->setQuery($query);
            $this->db->query();
			if( $this->db->getErrorNum () ) {
				$e = $this->db->getErrorMsg();
				//print_r( $e );
				JError::raiseWarning( 500, $e );
				return;
			}
        }

        // MAX ID - Sizeof All Users
        // RECORDS all Real Entries
        $query = "SELECT count( * ) AS records, MAX( id ) AS max FROM " . $this->s_createtableName . "";
        $this->db->setQuery($query);
        $row = $this->db->loadRow();
		if( $this->db->getErrorNum () ) {
			$e = $this->db->getErrorMsg();
			//print_r( $e );
			JError::raiseWarning( 500, $e );
			return;
		}
		//print_r($row );
        $entries = $row[0];
        $this->all_visitors = $row[1];

        if ($this->all_visitors == null) {
            $this->all_visitors = $this->initialvalue ;
        } else {
            $this->all_visitors += $this->initialvalue ;
        }

	   	// not filtered UserAgent then save ( dennoch sollen sie max sehen )
	   	if ( $is_filter === FALSE ) {

	        // keinerlei Update,Delete, etc wenn read_only
	        if (! $this->read_only_counter) {

			    // Delete old records wenn eingeschalten
	            $temp = $this->all_visitors - $this->records - $this->initialvalue ;
				//print_r($temp);
	            if ($this->records > 0  && $temp >= 0 ) {
	            	// should delete
	            	// nicht löschen wenn reale Anzahl kleiner
	            	if ( $entries >= $this->records ) {
		                $query = "DELETE FROM " . $this->s_createtableName . " WHERE id<='$temp'";
		                $this->db->setQuery($query);
		                $this->db->query();
		                if( $this->db->getErrorNum () ) {
		   	                $e = $this->db->getErrorMsg();
		   	                //print_r( $e );
		   	                JError::raiseWarning( 500, $e );
		   	                return;
		                }
	            	}
	            }
	            // IP and now
	            // $ip = $_SERVER['REMOTE_ADDR'];
	            $ip = $this->callerIP ;

	            // User is count as new by Locktime or Daily
	            if ( $this->countUserAsNewType == 1 ) {
	            	// Daily

					$query = "SELECT COUNT(*) FROM " . $this->s_createtableName . " WHERE ip='$ip' AND ( DATE(FROM_UNIXTIME(tm)) = CURDATE() ) ";
	            }
	            else {
	            	// By Locktime

					if ( $this->locktime <= 0 ) {
						// keine Abfrage - HitCounter - PerfImprovement
						$query = NULL; // simulate Erg
					}
					else {
	            		// Now we are checking if the ip was logged in the database. Depending of the value in minutes in the locktime variable.
	            		$query = "SELECT COUNT(*) FROM " . $this->s_createtableName . " WHERE ip='$ip' AND ( ((unix_timestamp(NOW()) - tm ) / 60 ) < '$this->locktime' ) ";
            		}

	            }

				// keine oder Abfrage
				if ( !empty($query) ) {
					$this->db->setQuery($query);
	            	$items = $this->db->loadResult();
					if( $this->db->getErrorNum () ) {
						$e = $this->db->getErrorMsg();
						//print_r( $e );
						JError::raiseWarning( 500, $e );
						return;
					}
				}

	            if (empty($items)) {
			   		// nicht enthalten in AusschlussListe
			   		if ( $this->saveUserAgents ) {
			 		   $query = "INSERT INTO " . $this->s_createtableName . " (id, tm, ip, userAgent) VALUES ('', unix_timestamp(NOW()) , '$ip', " . $this->db->Quote( $userAgent ) . " )";
			   		}
			   		else {
			 		   $query = "INSERT INTO " . $this->s_createtableName . " (id, tm, ip ) VALUES ('', unix_timestamp(NOW()) , '$ip' )";
					}
	                $this->db->setQuery($query);
	                $this->db->query();
	                if( $this->db->getErrorNum () ) {
	   	                $e = $this->db->getErrorMsg();
	   	                //print_r( $e );
	   	                JError::raiseWarning( 500, $e );
	   	                return;
	                }
	                // must be
	                $this->all_visitors += 1;
				}
			}
        }
        // else {
			// DEBUG
			// echo "Filtered : " . $is_filter;
		// }

		// soll etwas angezeigt werden das IPtoCountry braucht ?
		if ( $this->s_ipCflag || $this->s_ipCcode || $this->s_ipCountry ) {
			// create IPtoCountry Instance
			$this->ipToCountry = new IPtoCountry($params);
			/* TestCase
			$code = $ipToCountry->getISOAlphaZwei("85.233.46.219");
			//$code = $ipToCountry->getISOAlphaZwei("127.0.0.1");
			print_r($code);
            $imgTest .= $this->isoZweiToFlagImg(
			    $code ,
                JURI::base() . 'modules/' .
                // TODO_CO_MOD modVisitCounterHelper::MODULE
                $this->MODULE . '/images/flags/',
				'mvc_flagImage' ,
				20,
				13);
			print_r($imgTest);
			*/
		}

        // Example
        // $content = '<div>';
        // Show pre
        // $content .= $this->renderPRE();
        // Show digit counter
        // $content .= $this->renderDigitCounter();
        // show counts ( Table - PeopleImg, Text, Digit )
        // $content .= $this->renderPeopleTable();
        // Show Image
        // $content .= $this->renderStatistikImage();
        // post
        // $content .= $this->renderPOST();
        // $content = '</div>';
        // return $content;
    }

    /**
     * Read Date and Store ImageDiagramm
     */
    private function renderStatImage($db, $imagePathFS, $days , $detailed )
    {
        // Anzahl Darzustellender Tage
        if ($days <= 0) {
            $query = "SELECT DATE(FROM_UNIXTIME(tm)) AS day, COUNT(*) AS c FROM " . $this->s_createtableName . " GROUP BY DATE(FROM_UNIXTIME(tm))";
        } else {
            $query = "select day, c from (SELECT DATE(FROM_UNIXTIME(tm)) AS day,COUNT(*) AS c FROM " . $this->s_createtableName . " GROUP BY DATE(FROM_UNIXTIME(tm)) ORDER BY day DESC LIMIT 0," . $days . ") AS o order by day";
        }
        $db->setQuery($query);
        $rows = $db->loadObjectList();
		if( $this->db->getErrorNum () ) {
			$e = $this->db->getErrorMsg();
			//print_r( $e );
			JError::raiseWarning( 500, $e );
			return;
		}

        // überführen in DAtenarray und fehlende Tag(e) adden
        $gr_val = array();
        $lrow = '';
        foreach ($rows as $row) {
            if ($lrow != '') {
                // echo $lrow . "/" . $row->day . " : " . $this->datediff( $lrow, $row->day ) . "<br/>";
                $dateDiff = $this->datediff($lrow, $row->day);
                if ($dateDiff > 1) {
                    for($i = 1 ; $i < $dateDiff ; $i++) {
                        // Füge fehlende Daten als Dummy zu
                        // TODO richtig das Datum berechnen day = $lrow + $i
                        $gr_val[ $lrow . '_' . $i ] = 0;
                    }
                }
            }
            $gr_val[$row->day] = $row->c;
            $lrow = $row->day;
        }

        $this->create_image($imagePathFS,
            $this->image_sizeX, $this->image_sizeY,
            $gr_val,
            $this->image_lineColor ,
            $this->image_dia_bgColor,
            $this->image_dia_RandColor,
            $detailed );
    }

    /**
     * store an Image Diagramm
     */
    private function create_image( $imagePath, $size_x , $size_y , $ar ,
        $lineColor, $dia_bgColor, $dia_RandColor , $detailsImage = false  )
    {
        //
        $ar_values = array_values($ar);
        $ar_keys = array_keys($ar);

        // TODO COLORS übergeben
        $bgColor = array(255, 255, 255); // nur wenn $rand > 0.1 wichtig
        $line_width = 1.5;

        // Wertebereich
        $valuesize_x_from = 0;
        $valuesize_x_to = count($ar_values) ; // days
        $valuesize_y_from = 0;
        if ($valuesize_x_to > 0) {
            $valuesize_y_to = max($ar_values) * 1.1 ; // hits
        } else {
            $valuesize_y_to = 1;
        }

        // nicht auf 0 !  Default 0.1 !
        $left = 0.1 ;
        $right = 0.1 ;
        $top = 0.1 ;
        $bottom = 0.1 ;
        if ( $detailsImage ) {
          $left = 30 ;
          $right = 0.1 ;
          $top = 20 ;
          $bottom = 20 ;
        }

        //
        $D = new Diagram();
        $D->Img = @ImageCreate($size_x, $size_y) or JError::raiseWarning( 0, "Cannot create a new GD image." );
        //background color
        ImageColorAllocate($D->Img, $bgColor[0], $bgColor[1], $bgColor[2]);
        //
        //$D->SetFrame( $rand, $rand, $size_x - $rand, $size_y - $rand);
        $D->SetFrame( $left, $top, $size_x - $right, $size_y - $bottom);
        $D->SetBorder($valuesize_x_from, $valuesize_x_to, $valuesize_y_from, $valuesize_y_to);

        $D->Font=1;
        $D->XScale = 0;
        $D->YScale = 0;
        if ( $detailsImage ) {
          $D->XScale = 1;
          $D->YScale = 1;
          $D->SetText( 0, 0, 'Start : ' . $ar_keys[0] );
        }

        $D->Draw($dia_bgColor, $dia_RandColor, false);

        // skip steps X
        if (($valuesize_x_to - $valuesize_x_from) > $size_x) {
            $stepsX = floor(($valuesize_x_to - $valuesize_x_from) / $size_x);
        } else {
            $stepsX = 1 ;
        }
        // skip steps X
        if (($valuesize_y_to - $valuesize_y_from) > $size_y) {
            $stepsY = floor(($valuesize_y_to - $valuesize_y_from) / $size_y);
        } else {
            $stepsY = 1 ;
        }
        $valuesize_y_to = $valuesize_y_to / $stepsY;
        // echo $stepsX . '/' . $stepsY ;
        // erstmal nur die Values
        $T0 = null;
        $T1 = null;
        for ($t = 0; $t < $valuesize_x_to; $t += $stepsX) {
            $T0 = $T1;
            // $K0 = $K1;
            $T1 = $ar_values[$t];
            $K1 = $ar_keys[$t];

            $D->Line($D->ScreenX($t), $D->ScreenY($T0),
                $D->ScreenX($t + 1), $D->ScreenY($T1),
                $lineColor, $line_width, "", "");

            // need $ar_keys above !
            // echo "CI -> " . $ar_keys[$t] . ":" . $T1 . "<br />" ;
            /*
            ImageMap
            "alert(\"".$ar_keys[$t]." -> ".$T1."\")");

			    $D->Line( $D->ScreenX($t), $D->ScreenY($T0),
            	   	      $D->ScreenX($t + 1), $D->ScreenY($T1),
                          "#000000", 1, "",
                          "alert(\"".round($T0,1)." -> ".round($T1,1)."\")");
	            $D->Box($D->ScreenX($t), $D->ScreenY(0),
    		            $D->ScreenX($t + 1), $D->ScreenY($T1),
            		    "#000000", "", "#00ff00", 0, "#0000ff");
            		    before Destroy
        $imageUri = JURI::base() . $this->image_path;
        $content = '<img src="' . $imageUri . '" usemap="#map1"></img>';
        $content .= '<map name="map1">' . $D->ImgMapData . '</map>';
        return $content;
        	*/
            //imagestring( $D->Img, 2 ,  $D->ScreenX($t + 1), $D->ScreenY($T1) , $T1 ,2  );
        }

        // Save
        $this->storeImageByType($D->Img, $imagePath);
        // Free up resources
        ImageDestroy($D->Img);
    }

    /**
     * Render Usage Table Row
     *
     * @param mixed $a1 Image Name
     * @param mixed $a2 Description Text
     * @param mixed $a3 Number
     * @param boolean $show_UsageImgs Show Image or Not
     */
    private function spaceer($a1, $a2, $a3, $show_UsageImgs)
    {
        $ret = '<tr align="left">';
        if ($show_UsageImgs) {
            $ret .= '<td style="margin:0px;padding:1px;"><img style="margin:0px;padding:0px;" class="mvc_peopleImg' . $this->mdclsf . '" src="modules/' .
            // TODO_CO_MOD modVisitCounterHelper::MODULE
            $this->MODULE . '/images/' . $a1 . '" alt="' . $a2 . '"/></td>';
        }
        $ret .= '<td style="margin:0px;padding:1px;">' . $a2 . '</td>';
        $ret .= '<td align="right" style="margin:0px;padding:1px;">' . $a3 . '</td></tr>';
        return $ret;
    }

    /**
     * numToImg()
     * eine Zahl zu einem HTML-Image String wandeln
     *
     * @param mixed $number zu wandelnde Zahl
     * @param mixed $size_min optional mindest Anzahl von Zahlen
     * @param mixed $size_max optional maximale Anzahl Zahlen
     * @param mixed $dir optional Pfad-Prefix
     * @param mixed $warn_picture optional Bild das bei Überlauf angezeigt wird
     * @param mixed $styleClass CSS Style
     * @return string z.B. <img src="images/4.gif"/><img src="images/7.gif"/>
     */
    private function numToImg($number , $size_min , $size_max , $dir , $warn_picture, $styleClass )
    {
        // maximal Größe setzen
        if (empty($size_max)) {
            $size_max = strlen($number);
        }
        // minimale Größe setzen
        if (empty($size_min)) {
            $size_min = 0;
        }
        // Slash anhängen
        if (! empty($dir) AND $dir[strlen($dir)-1] != '/') {
            $dir .= '/' ;
        }
        // Warnung anzeigen wenn Überlauf ( size_max ) ?
        $erg  = '';
        if (! empty($warn_picture)) {
            $number_lenght = strlen($number);
            if ($number_lenght > $size_max) {
                // Warnungsbild
                $erg = "<img class=\"{$styleClass}" . $this->mdclsf . "\" src=\"{$dir}{$warn_picture}\" alt=\"Counter-Overflow\"/>" ;
            } else {
                $erg = "" ;
            }
        }
        // auffüllen mit Nullen und auf maximale Länge
        $number = substr(str_pad(trim($number) , $size_min , '0' , STR_PAD_LEFT) ,
            0 , $size_max) ;
        // String zu Array
        $numbers = str_split($number);
        // für jede Zahl ein Image Object
        foreach($numbers as $number) {
            $erg .= "<img class=\"{$styleClass}" . $this->mdclsf . "\" src=\"{$dir}{$number}.gif\" alt=\"{$number}\"/>" ;
        }
        return $erg ;
    }


    /**
     * isoZweiToFlagImg()
     * einen ISO2 Country Code zu einem HTML-Image String wandeln
     *
     * UNKNOWN Image if ISO Code empty
     *
     * @param mixed $isoZweiCode ISO Code z.B. DE
     * @param mixed $dir Pfad-Prefix
     * @param mixed $styleClass CSS Style
     * @param mixed $width Image Width
     * @param mixed $height Image Height
     * @return string z.B. <img src="images/flags/flag_DE.gif"/>
     */
    private function isoZweiToFlagImg( $isoZweiCode , $dir, $styleClass, $width, $height )
    {
        // maximal Größe setzen
        if (empty($width)) {
            $width = 20;
        }
        // minimale Größe setzen
        if (empty($height)) {
            $height = 13;
        }
        //
        if (empty($isoZweiCode)) {
            $isoZweiCode = "UNKNOWN";
        }
        // Slash anhängen
        if (! empty($dir) AND $dir[strlen($dir)-1] != '/') {
            $dir .= '/' ;
        }
        // für jede Zahl ein Image Object
        $erg = "<img class=\"{$styleClass}" . $this->mdclsf . "\" src=\"{$dir}flag_{$isoZweiCode}.gif\" alt=\"{$isoZweiCode}\" width=\"{$width}\" height=\"{$height}\"\"/>" ;
        return $erg ;
    }

    /**
     * Absolute Wert von Tagesunterschied
     */
    private function datediff($dateF , $dateT)
    {
        // English Format '2008-05-21'
        $datefrom = strtotime($dateF);
        $dateto = strtotime($dateT);
        $difference = $dateto - $datefrom; // Difference in seconds
        $datediff = floor($difference / 86400);
        return abs($datediff);
    }

	/**
	 * Save Image by FileType
	 */
    private function storeImageByType($image , $filename)
    {
        $haystack = $filename;
        $needle = '.' ;
        $strTmp = strrchr($haystack, $needle);
        $fileType = substr($strTmp, strlen($needle), strlen($strTmp) - strlen($needle));

        $image_type = -1;
        switch ($fileType) {
            case 'gif':
            case 'GIF':
                imagegif($image , $filename);
                break;
            case 'jpg':
            case 'JPG':
            case 'jpeg':
            case 'JPEG':
                imagejpeg($image , $filename);
                break;
            case 'png':
            case 'PNG':
                imagepng($image , $filename);
                break;
            default:
                echo "Unknown ImageType :" . $fileType;
                break;
        }
        return $image_type;
    }


    /**
     * modVisitCounterHelper::getWeekMode()
     *
     * @return WEEK Mode.. see MySQL WEEK
     */
    private function getWeekMode(){
		switch( $this->s_week_startday ){
			case 0: // Sunday
				return 6;
			case 1: // Monday
				return 3;
			default:
				return 3;
		}
	}

}

if (!function_exists('str_split')) {
    function str_split($str, $split_lengt = 1)
    {
        $cnt = strlen($str);

        for ($i = 0;$i < $cnt;$i += $split_lengt)
        $rslt[] = substr($str, $i, $split_lengt);

        return $rslt;
    }
}

?>
