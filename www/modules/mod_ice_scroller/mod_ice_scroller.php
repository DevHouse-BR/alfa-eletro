<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');

// include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

//Allow multiplie Id's
if (!isset($GLOBALS['add_icescroller_box'])) { $GLOBALS['add_icescroller_box'] = 1; } else { $GLOBALS['add_icescroller_box']++; }
if (!isset($GLOBALS['add_icescroller_slides'])) { $GLOBALS['add_icescroller_slides'] = 1; } else { $GLOBALS['add_icescroller_slides']++; }
if (!isset($GLOBALS['add_icescroller_next'])) { $GLOBALS['add_icescroller_next'] = 1; } else { $GLOBALS['add_icescroller_next']++; }
if (!isset($GLOBALS['add_icescroller_prev'])) { $GLOBALS['add_icescroller_prev'] = 1; } else { $GLOBALS['add_icescroller_prev']++; }


// Disable edit ability icon
$access = new stdClass();
$access->canEdit	= 0;
$access->canEditOwn = 0;
$access->canPublish = 0;

$list = modIceScrollerHelper::getList($params, $access);


// check if any results returned
$items = count($list);
if (!$items) {
	return;
}

// Variables
$mod_url     								= JURI::base() . 'modules/mod_ice_scroller/';
$style           							= $params->get('style', 'default');

$icescroller_duration						= $params->get('icescroller_duration', '3000');
$icescroller_delay							= $params->get('icescroller_delay', '3500');
$icescroller_transition						= $params->get('icescroller_transition', 'linear');
$icescroller_direction						= $params->get('icescroller_direction', 'h');

$icescroller_width							= $params->get('icescroller_width', '550');
$icescroller_height							= $params->get('icescroller_height', '20');

$icescroller_text							= $params->get('icescroller_text', 'Latest Headlines');

$icescroller_box    						= 'icescroller_box_' . $GLOBALS['add_icescroller_box'];
$icescroller_slides							= 'icescroller_slides_' . $GLOBALS['add_icescroller_slides'];
$icescroller_autoplay 						= $params->get('icescroller_autoplay', '1'); 

$icescroller_prev							= 'icescroller_prev_' . $GLOBALS['add_icescroller_prev'];
$icescroller_next							= 'icescroller_next_' . $GLOBALS['add_icescroller_next'];


switch ($style) {
	default:
    	require(JModuleHelper::getLayoutPath('mod_ice_scroller', 'default'));
}

// Add this to Head
$doc =&JFactory::getDocument();
$doc->addScript($mod_url . 'js/ice_scroller.js');
JHTML::_('behavior.mootools');




