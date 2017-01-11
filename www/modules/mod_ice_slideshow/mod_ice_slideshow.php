<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');

// include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

//Allow multiplie Id's
if (!isset($GLOBALS['add_IceSlideshow_box'])) { $GLOBALS['add_IceSlideshow_box'] = 1; } else { $GLOBALS['add_IceSlideshow_box']++; }

// Disable edit ability icon
$access = new stdClass();
$access->canEdit	= 0;
$access->canEditOwn = 0;
$access->canPublish = 0;

$list = modIceSlideshowHelper::getList($params, $access);


// check if any results returned
$items = count($list);
if (!$items) {
	return;
}

// Variables
$mod_url     								= JURI::base() . 'modules/mod_ice_slideshow/';
$style           							= $params->get('style', 'default');

$IceSlideshow_hu							= $params->get('IceSlideshow_hu', 'images/icetheme/iceslideshow/');
$IceSlideshow_width							= $params->get('IceSlideshow_width', '300');
$IceSlideshow_height						= $params->get('IceSlideshow_height', '200');
$IceSlideshow_captions						= $params->get('IceSlideshow_captions', '1');
$IceSlideshow_controller					= $params->get('IceSlideshow_controller', '1');
$IceSlideshow_thumbnails					= $params->get('IceSlideshow_thumbnails', '1');
$IceSlideshow_thumbnails_position			= $params->get('IceSlideshow_thumbnails_position', 'bottom');
$IceSlideshow_thumbnails_width				= $params->get('IceSlideshow_thumbnails_width', '80');
$IceSlideshow_thumbnails_height				= $params->get('IceSlideshow_thumbnails_height', '40');
$IceSlideshow_fast							= $params->get('IceSlideshow_fast', '0');
$IceSlideshow_linked						= $params->get('IceSlideshow_linked', '1');
$IceSlideshow_overlap						= $params->get('IceSlideshow_overlap', '1');
$IceSlideshow_random						= $params->get('IceSlideshow_random', '0');
$IceSlideshow_resize						= $params->get('IceSlideshow_resize', 'width');
$IceSlideshow_center						= $params->get('IceSlideshow_center', '1');
$IceSlideshow_transition					= $params->get('IceSlideshow_transition', 'linear');
$IceSlideshow_slide							= $params->get('IceSlideshow_slide', '0');
$IceSlideshow_delay							= $params->get('IceSlideshow_delay', '2000');
$IceSlideshow_duration						= $params->get('IceSlideshow_duration', '750');

$IceSlideshow_box							= 'IceSlideshow_box_' . $GLOBALS['add_IceSlideshow_box'];



switch ($style) {
	default:
    	require(JModuleHelper::getLayoutPath('mod_ice_slideshow', 'default'));
}

// Add this to Head
$doc =&JFactory::getDocument();
$doc->addStyleSheet($mod_url . 'css/ice_slideshow.css');
$doc->addScript($mod_url . 'js/slideshow.js');
JHTML::_('behavior.mootools');




