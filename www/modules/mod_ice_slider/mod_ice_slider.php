<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');

// include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

//Allow multiplie Id's
if (!isset($GLOBALS['add_iceslider_box'])) { $GLOBALS['add_iceslider_box'] = 1; } else { $GLOBALS['add_iceslider_box']++; }
if (!isset($GLOBALS['add_iceslider_item'])) { $GLOBALS['add_iceslider_item'] = 1; } else { $GLOBALS['add_iceslider_item']++; }
if (!isset($GLOBALS['add_iceslider_hs'])) { $GLOBALS['add_iceslider_hs'] = 1; } else { $GLOBALS['add_iceslider_hs']++; }
if (!isset($GLOBALS['add_iceslider_handels'])) { $GLOBALS['add_iceslider_handels'] = 1; } else { $GLOBALS['add_iceslider_handels']++; }
if (!isset($GLOBALS['add_iceslider_playback'])) { $GLOBALS['add_iceslider_playback'] = 1; } else { $GLOBALS['add_iceslider_playback']++; }
if (!isset($GLOBALS['add_iceslider_stop'])) { $GLOBALS['add_iceslider_stop'] = 1; } else { $GLOBALS['add_iceslider_stop']++; }
if (!isset($GLOBALS['add_iceslider_play'])) { $GLOBALS['add_iceslider_play'] = 1; } else { $GLOBALS['add_iceslider_play']++; }
if (!isset($GLOBALS['add_iceslider_previous'])) { $GLOBALS['add_iceslider_previous'] = 1; } else { $GLOBALS['add_iceslider_previous']++; }
if (!isset($GLOBALS['add_iceslider_next'])) { $GLOBALS['add_iceslider_next'] = 1; } else { $GLOBALS['add_iceslider_next']++; }

// Disable edit ability icon
$access = new stdClass();
$access->canEdit	= 0;
$access->canEditOwn = 0;
$access->canPublish = 0;

$list = modIceSliderHelper::getList($params, $access);


// check if any results returned
$items = count($list);
if (!$items) {
	return;
}

// Variables
$mod_url     						= JURI::base() . 'modules/mod_ice_slider/';
$style           					= $params->get('style', 'tabularslide');

$iceslider_width					= $params->get('iceslider_width', '540');
$iceslider_item_width				= $params->get('iceslider_item_width', '180');
$iceslider_height					= $params->get('iceslider_height', '230');

$iceslider_text						= $params->get('iceslider_text', 'Inside IT Tribune');

$iceslider_animation_interval		= $params->get('animation_interval', '3000');
$iceslider_animation_duration		= $params->get('animation_duration', '1000');
$iceslider_animation_transition		= $params->get('animation_transition', 'linear');
$iceslider_animation_event			= $params->get('animation_event', 'click');

$iceslider_box    					= 'iceslider_box_' . $GLOBALS['add_iceslider_box'];
$iceslider_item    					= 'iceslider_item_' . $GLOBALS['add_iceslider_item'];
$iceslider_hs    					= 'iceslider_hs_' . $GLOBALS['add_iceslider_hs'];
$iceslider_handels    				= 'iceslider_handels_' . $GLOBALS['add_iceslider_handels'];

$iceslider_playback    				= 'iceslider_playback_' . $GLOBALS['add_iceslider_playback'];
$iceslider_stop	    				= 'iceslider_stop_' . $GLOBALS['add_iceslider_stop'];
$iceslider_play 	   				= 'iceslider_play_' . $GLOBALS['add_iceslider_play'];
$iceslider_previous 	   			= 'iceslider_previous_' . $GLOBALS['add_iceslider_previous'];
$iceslider_next 	   				= 'iceslider_next_' . $GLOBALS['add_iceslider_next'];

$iceslider_showbuttons 				= $params->get('show_buttons', '1'); 
$iceslider_autoplay 				= $params->get('autoplay', 'false'); 
$iceslider_slidesnr 				= $params->get('slidesnr', '1,2,3');



switch ($style) {
	case "imageslide":
   		require(JModuleHelper::getLayoutPath('mod_ice_slider', 'imageslide'));
   		break;
	case "carouselslide":
   		require(JModuleHelper::getLayoutPath('mod_ice_slider', 'carouselslide'));
   		break;
	default:
    	require(JModuleHelper::getLayoutPath('mod_ice_slider', 'tabularslide'));
}

// Add this to Head
$doc =&JFactory::getDocument();
$doc->addScript($mod_url . 'js/ice_slider.js');
JHTML::_('behavior.mootools');

