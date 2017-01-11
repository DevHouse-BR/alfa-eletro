<?php
/*
 * @package Joomla 1.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @module Phoca - Phoca Module
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
 
defined('_JEXEC') or die('Restricted access');// no direct access

$user 		=& JFactory::getUser();
$aid 		= $user->get('aid', 0);	
$db 		=& JFactory::getDBO();
$menu 		=& JSite::getMenu();
$document	=& JFactory::getDocument();


// PARAMS 
$chart_width 		= $params->get( 'chart_width', 300 );
$chart_height 		= $params->get( 'chart_height', 100 );
$number_item	 	= $params->get( 'number_item','' );
$section_id		 	= $params->get( 'section_id','' );
$display_per	 	= $params->get( 'display_per','' );
$chart_type	 		= $params->get( 'chart_type','p3' );

// Items
$where		= array();	
$where[] 	= ' a.published = 1';
$where[] 	= ' s.published = 1';
$where[] 	= ' cc.published = 1';
$where[] 	= ' a.textonly = 0';
if ($section_id != '') {
	$where[]	= ' s.id ='.(int)$section_id;
}
if ((int)$number_item > 0) {
	$limit	= ' LIMIT 0,'.(int)$number_item;
} else {
	$limit	= '';
}

$where		= ( count( $where ) ? ' WHERE '. implode( ' AND ', $where ) : '' );
$orderby	= ' ORDER by a.hits DESC';
$query = ' SELECT a.*, cc.title AS categorytitle, s.title AS sectiontitle'
	. ' FROM #__phocadownload AS a '
	. ' LEFT JOIN #__phocadownload_categories AS cc ON cc.id = a.catid '
	. ' LEFT JOIN #__phocadownload_sections AS s ON s.id = a.sectionid '
	. ' LEFT JOIN #__groups AS g ON g.id = a.access '
	. ' LEFT JOIN #__users AS u ON u.id = a.checked_out '
	. $where
	. ' GROUP by a.id'
	. $orderby
	. $limit;

$db->setQuery( $query );
$items = $db->loadObjectList();



$colors = array (
'FF8080','FF9980','FFB380','FFC080','FFCC80','FFD980','FFE680','FFF280','FFFF80','E6FF80',
'CCFF80','99FF80','80FF80','80FFC9','80FFFF','80C9FF','809FFF','9191FF','AA80FF','B580FF',
'D580FF','FF80FF','FF80DF','FF80B8');

$output 	= '';
if (!empty($items)) {

	$chdArray 		= '';
	$chlArray		= '';
	
	//Not in sql but in php (because of possible LIMIT
	$sum	= 0;
	foreach ($items as $value) {
		$sum = $sum + (int)$value->hits;
	}

	$i = 0;
	foreach ($items as $value) {
		if ($sum > 0 && $display_per == 1) {
			$per	= (int)$value->hits / (int)$sum * 100;
			$per	= round((float)$per,2);
			$chlArray[]	= $value->title .'('.$per.'%)';
			$chdArray[]	= $per;
			
			$chcoArray[]= $colors[$i];
		} else {
			$chlArray[]	= $value->title;
			$chdArray[]	= $per;
			$chcoArray[]= $colors[$i];
		}
		if ($i == 23) {
			$i = 0;
		}
		$i++;
	}
	
	$chd	= implode( ',', $chdArray );
	$chl	= implode( '|', $chlArray );
	$chco1	= implode( '|', $chcoArray );
	$chco2	= implode( ',', $chcoArray );
	
	$output = '<img src="http://chart.apis.google.com/chart?'
	.'chs='.$chart_width.'x'.$chart_height
	.'&amp;chd=t:'.$chd
	.'&amp;cht='.$chart_type;

	
	switch ($chart_type) {
		case 'bhs':
		case 'bvs':
			$output .='&amp;chco='.$chco1;
		break;
		
		default:
			$output .='&amp;chco='.$chco2;
		break;
	}
	
	
	switch ($chart_type) {
		case 'bhs':
		case 'bvs':
		case 'v':
			$output .= '&amp;chdl='.$chl. '"';
		break;
		
		default:
			$output .= '&amp;chl='.$chl. '"';
		break;
	}

	$output .= 'alt="Phoca Download" />';
}

require(JModuleHelper::getLayoutPath('mod_phocadownload_chart_statistics'));
?>