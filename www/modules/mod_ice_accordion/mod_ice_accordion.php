<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');


// include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

//Allow multiplie Id's
if (!isset($GLOBALS['add_iceaccordion_toggler'])) { $GLOBALS['add_iceaccordion_toggler'] = 1; } else { $GLOBALS['add_iceaccordion_toggler']++; }
if (!isset($GLOBALS['add_iceaccordion_content'])) { $GLOBALS['add_iceaccordion_content'] = 1; } else { $GLOBALS['add_iceaccordion_content']++; }


// Variables
$mod_url  		 								= JURI::base() . 'modules/mod_ice_accordion/';
$style           								= $params->get('style', 'default');
$list 											= modIceAccHelper::getList($params, $access);

$iceaccordion_toggler   						= 'iceaccordion_toggler_' . $GLOBALS['add_iceaccordion_toggler'];
$iceaccordion_content   						= 'iceaccordion_content_' . $GLOBALS['add_iceaccordion_content'];
$iceaccordion_activecolor   					= $params->get('iceaccordion_activecolor', '222');
$iceaccordion_inactivecolor   					= $params->get('iceaccordion_inactivecolor', '888');


// Disable edit ability icon
$access = new stdClass();
$access->canEdit	= 0;
$access->canEditOwn = 0;
$access->canPublish = 0;



// check if any results returned
$items = count($list);
if (!$items) {
	return;
}

// js parameters
switch ($style) {
	default:
    	require(JModuleHelper::getLayoutPath('mod_ice_accordion', 'default'));
}


// Add this to Head
$doc =&JFactory::getDocument();
$doc->addScript($mod_url . 'js/ice_accordion.js');
JHTML::_('behavior.mootools');
