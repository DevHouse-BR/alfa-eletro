<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

/**
 *
 * @version $Id: default.php 17 2009-04-01 15:38:08Z mmicha $
 * @package Joomla
 * @copyright Copyright (C) 2009 Majunke Michael majunke@mmajunke.de
 *
 * @license GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// new Counter Clazz
$vcounter = new modVisitCounterHelper($params);

// Default Sorted Method
$arr_methods = array ( $vcounter->renderPRE(),
                       $vcounter->renderDigitCounter(),
               		   $vcounter->renderPeopleTable(),
                       $vcounter->renderStatistikImage(),
                       $vcounter->renderIP(),
                       $vcounter->renderIPCountryCode(),
                       $vcounter->renderIPCountry(),
                       $vcounter->renderIPFlag(),
                       $vcounter->renderPOST() );

// Array with Custon Sort
$arr_sort = explode( ";", $params->get( 'the_order', '1;2;3;4;5;6;7;8;9' ) , 9 );

// Outer Div
$m_content = '<div class="mvc_main' . $params->get( 'moduleclass_sfx' ) . '">';

	// out all with Order
	for ( $i=0; $i < count($arr_sort) ; $i++){
	 $m_content .= $arr_methods[ $arr_sort[$i] - 1 ] ;
	}

// Close Outer Div
$m_content .= '</div>';

// Out
echo $m_content;

?>
