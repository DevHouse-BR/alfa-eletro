<?php
/**
 * Un-installation file for CSV Improved
 *
 * @package CSVImproved
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: uninstall.csvimproved.php 907 2009-05-22 15:26:28Z Roland $
 */
 
defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );

/**
 * Uninstaller
 */
function com_uninstall() {
	global $mainframe;
	$mainframe->enqueueMessage('CSV Improved 1.7 has been uninstalled');
}
?>