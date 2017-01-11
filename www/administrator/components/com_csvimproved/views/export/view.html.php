<?php
/**
 * Import view
 *
 * @package CSVImproved
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: view.html.php 890 2009-04-23 17:02:24Z Suami $
 */

defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );

jimport( 'joomla.application.component.view' );

/**
 * Import View
 *
 * @package CSVImproved
 */
class CsvimprovedViewExport extends JView {
	
	/**
	 * Templates view display method
	 * @return void
	 **/
	function display($tpl = null) {
		/* Load the helper classes */
		JView::loadHelper('csvi_class_supported_fields');
		
		/* Show the export settings screen */
		$templates = $this->get('TemplatesListExport', 'templates');
		
		/* Toolbar title */
		JToolBarHelper::title(JText::_( 'Export' ), 'csvi_export_48');
		if (count($templates) < 1) {
			$error = JError::getError();
			if (!is_object($error)) {
				JError::raiseWarning(0, JText::_('No export templates defined'));
			}
		}
		else {
			/* Toolbar buttons */
			/* Check if we can show the export button */
			if ($this->get('CountTemplateFields')) JToolBarHelper::custom( 'exportfile', 'csvi_export_32', 'csvi_export_32', JText::_('Export'), false);
			
			/* Assign the data */
			$this->assignRef('templates', $templates);
			
			/* Display it all */
			parent::display($tpl);
		}
	}
}
?>