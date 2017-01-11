<?php
/**
 * About page
 *
 * @package CSVImproved
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: about.php 908 2009-05-22 15:49:13Z Roland $
 */
 
defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );
?>
<table class="adminlist">
<tr><td colspan="2"><?php echo JHTML::_('image', JURI::base().'components/com_csvimproved/assets/images/license_32.png', JText::_('LICENSE')); ?></td></tr>
<tbody>
	<tr><th><?php echo JText::_('CSVI_REGISTERED'); ?></th><td><?php echo $this->result; ?></td></tr>
	<tr><th><?php echo JText::_('CSVI_EXPIRES'); ?></th><td><?php if ($this->expiredate) echo date('d F Y', $this->expiredate); ?></td></tr>
	<tr><th><?php echo JText::_('HOST_NAME'); ?></th><td><?php echo $this->hostname; ?></td></tr>
</tbody>
</table>
<br />
<table class="adminlist">
<tr><td colspan="2"><?php echo JHTML::_('image', JURI::base().'components/com_csvimproved/assets/images/about_32.png', JText::_('ABOUT')); ?></td></tr>
<tbody>
<tr><th>Name:</th><td>CSV Improved</td></tr>
<tr><th>Version:</th><td><?php echo JText::_('CSVI_VERSION'); ?></td></tr>
<tr><th>Coded by:</th><td>RolandD Cyber Produksi</td></tr>
<tr><th>Contact:</th><td>contact@csvimproved.com</td></tr>
<tr><th>Support:</th><td><?php echo JHTML::_('link', 'http://www.csvimproved.com/', 'CSV Improved Homepage', 'target="_blank"'); ?></td></tr>
<tr><th>Copyright:</th><td>Copyright (C) 2008 - 2009 RolandD Cyber Produksi</td></tr>
<tr><th>License:</th><td><?php echo JHTML::_('link', 'http://creativecommons.org/licenses/by-nd/3.0/nl/', 'Creative Commons Attribution-No Derivative Works 3.0 Netherlands License.'); ?></td></tr>
</tbody>
</table>