<?php
/*
 * @package Joomla 1.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined('_JEXEC') or die();
jimport( 'joomla.application.component.view' );
jimport('joomla.html.pane');

class PhocaDownloadCpViewPhocaDownloadcp extends JView
{
	function display($tpl = null) {
		
		JHTML::stylesheet( 'phocadownload.css', 'administrator/components/com_phocadownload/assets/' );
		
		global $mainframe;
		$uri		=& JFactory::getURI();
		$document	=& JFactory::getDocument();
		$db		    =& JFactory::getDBO();
		
		

		JToolBarHelper::title(   '&nbsp;&nbsp;' .JText::_( 'Phoca Download Control Panel' ), 'phoca' );
		
		JToolBarHelper::preferences('com_phocadownload', '460');
		JToolBarHelper::help( 'screen.phocadownload', true );

		JHTML::_('behavior.tooltip');
		$version = PhocaDownloadHelper::getPhocaVersion();
		$this->assignRef('version',	$version);
		
		parent::display($tpl);
	}
}
?>