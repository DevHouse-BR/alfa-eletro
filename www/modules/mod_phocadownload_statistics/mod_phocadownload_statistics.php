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
$module_width 		= $params->get( 'module_width', 400 );
$font_size 			= $params->get( 'font_size', 10 );
$display_downloads 	= $params->get( 'display_downloads', 1 );
$display_cat_sec 	= $params->get( 'display_cat_sec', 1 );
$display_title 		= $params->get( 'display_title', 1 );
$display_filename 	= $params->get( 'display_filename', 1 );
$number_item	 	= $params->get( 'number_item',6 );
$section_id		 	= $params->get( 'section_id','' );


// Max Hit
$where		= array();	
$where[] 	= ' a.published = 1';
$where[] 	= ' s.published = 1';
$where[] 	= ' cc.published = 1';
$where[] 	= ' a.textonly = 0';
if ($section_id != '') {
	$where[]	= ' s.id ='.(int)$section_id;
}
$where		= ( count( $where ) ? ' WHERE '. implode( ' AND ', $where ) : '' );
$query = ' SELECT MAX(a.hits) AS maxhit '
	. ' FROM #__phocadownload AS a '
	. ' LEFT JOIN #__phocadownload_categories AS cc ON cc.id = a.catid '
	. ' LEFT JOIN #__phocadownload_sections AS s ON s.id = a.sectionid '
	. ' LEFT JOIN #__groups AS g ON g.id = a.access '
	. $where;
		
$db->setQuery( $query );
$maxHit = $db->loadObjectList();


// Items
$where		= array();	
$where[] 	= ' a.published = 1';
$where[] 	= ' s.published = 1';
$where[] 	= ' cc.published = 1';
$where[] 	= ' a.textonly = 0';
if ($section_id != '') {
	$where[]	= ' s.id ='.(int)$section_id;
}
$where		= ( count( $where ) ? ' WHERE '. implode( ' AND ', $where ) : '' );
$orderby	= ' ORDER by a.hits DESC';
$limit		= ' LIMIT 0,'.(int)$number_item;
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

// DISPLAY
$module_width_div = (int)$module_width - 10;
$output = '<div id="phoca-dl-statistics-box-module">';
$output .= '<table width="'.$module_width.'">';

if (!empty($items)) {
	$color 	= 0;
	$i		= 1;
	foreach ($items as $value) {
		$colors = array('#FFE6BF', '#FFECBF', '#FFF2BF', '#FFF9BF', '#FFFFBF', '#F2FFBF', '#E6FFBF', '#CCFFBF', '#BFFFBF', '#BFFFE4', '#BFFFFF', '#BFE4FF', '#BFCFFF', '#C8C8FF', '#D5BFFF', '#DABFFF', '#EABFFF', '#FFBFFF', '#FFBFEF', '#FFBFDC', '#FFBFBF', '#FFCCBF', '#FFD9BF', '#FFDFBF');
		
		if ((int)$maxHit[0]->maxhit == 0) {
			$per = 0;
		} else {
			$per = round((int)$value->hits / (int)$maxHit[0]->maxhit * (int)$module_width);
		}
		
		// Only text (description - no file)
		if ($value->textonly == 0) {
			$output .= '<tr>';
			$output .= '<td align="right"><span style="font-size:'.$font_size.'">'. $i .'. </span></td>';
			$output .= '<td>';
			$output .= '<div style="background:'.$colors[$color].' url(\''. JURI::base(true).'/administrator/components/com_phocadownload/assets/images/white-space.png'.'\') '.$per.'px 0px no-repeat;width:'.$module_width_div.'px;padding:5px 5px;margin:5px 0px;font-size:'.$font_size.'px">';
		//	echo '<small style="color:#666666">['. $value->id .']</small>';
			
			if ((int)$display_title == 1) {
				$output .= '<strong  style="color:#666666;">'.$value->title .'</strong>';
			}
			
			if ((int)$display_filename == 1) {
				if ((int)$display_title == 1) {
					$output .= ' - ';
				}
				$output .= '<em>'. $value->filename .'</em>';
			}
			
			if ((int)$display_cat_sec == 1) {
				$output .= ' <small style="color:#666666">('. $value->sectiontitle .'/'. $value->categorytitle .')</small>';
			}
			$output .= '</div>';
			$output .= '</td>';
			
			if ((int)$display_downloads == 1) {
				$output .= '<td align="center">'. $value->hits .'</td>';
			}
			$output .= '</tr>';
		
			$color++;
			$i++;
			if ($color > 23) {
				$color = 0;
			}
		}
	}
}

$output .= '</table></div>';

require(JModuleHelper::getLayoutPath('mod_phocadownload_statistics'));
?>