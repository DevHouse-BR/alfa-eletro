<?php
/**
* @version		$Id: mod_vvisit_counter.php 17 2009-04-01 15:38:08Z mmicha $
* @package		Joomla
* @copyright	Copyright (C) 2009 Majunke Michael majunke@mmajunke.de
*
* @copyright	Copyright (C) 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined('_JEXEC') or die('Restricted access');

if (!defined('MOD_VVIST_COUNTER_BASE')) {
	define( 'MOD_VVIST_COUNTER_BASE', dirname(__FILE__) );
}

require_once( MOD_VVIST_COUNTER_BASE.DS.'helper.php' );

require(JModuleHelper::getLayoutPath('mod_vvisit_counter'));
?>
