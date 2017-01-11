<?php
/**
 * Import view
 *
 * @package CSVImproved
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: view.html.php 816 2009-03-03 01:01:17Z Suami $
 */

defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );

jimport( 'joomla.application.component.view' );

/**
 * Import View
 *
 * @package CSVImproved
 */
class CsvimprovedViewImport extends JView {
	
	/**
	 * Templates view display method
	 * @return void
	 **/
	function display($tpl = null) {
		/* Load the helper classes */
		JView::loadHelper('csvi_class_supported_fields');
		
		/* Show the import settings screen */
		$templates = $this->get('TemplatesListImport', 'templates');
		
		/* Get the toolbar title */
		JToolBarHelper::title(JText::_( 'Import' ), 'csvi_import_48');
		
		if (count($templates) < 1) {
			$error = JError::getError();
			if (!is_object($error)) {
				JError::raiseWarning(0, JText::_('No import templates defined'));
			}
		}
		else {
			/* Assign the data */
			$this->assignRef('templates', $templates);
			
			/* Get the toolbar */
			JToolBarHelper::custom( 'importfile', 'csvi_import_32', 'csvi_import_32', JText::_('Import'), false);
			
			/* Display it all */
			parent::display($tpl);
		}
	}
}
?>
