<?php
/**
 * Template fields export class
 *
 * @package CSVImproved
 * @subpackage Export
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: templatefieldsexport.php 814 2009-03-03 00:21:50Z Suami $
 */

defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );
 
/**
 * Processor for template fields export
 *
 * @package CSVImproved
 * @subpackage Export
 */
class CsvimprovedModelTemplateFieldsExport extends JModel {
	
	/* Private variables */
	private $_exportmodel = null;
	
	
	/** 
	 * Template export
	 *
	 * Exports template data
	 * @todo Do not export on error
	 **/
	public function getStart() {
		
		/* Get some basic data */
		$db = JFactory::getDBO();
		$csvidb = new CsviDb();
		$csvilog = JRequest::getVar('csvilog');
		$template = JRequest::getVar('template');
		$xmlclass = JRequest::getVar('xmlclass');
		$required_fields = JRequest::getVar('exportfields');
		$default_values = JRequest::getVar('defaultfields');
		
		/* Get the general export functions */
		$this->_exportmodel = new CsvimprovedModelexportfile();
		
		/* Get the template fields from the database*/
		$q = "SELECT c.*, t.template_name 
			FROM #__csvi_template_fields c, #__csvi_templates t
			WHERE c.field_template_id = t.template_id";
		$templatelist = JRequest::getVar('exporttemplatefields');
		$last = end(array_keys($templatelist));
		
		if (count($templatelist) > 0 && !empty($templatelist[0])) {
			$q .= ' AND t.template_id IN (';
			foreach ($templatelist as $key => $value) {
				$q .= $value;
				if ($last != $key) $q .= ",";
			}
			$q .= ')';
		}
		
		/* Check if we need to group the orders together */
		$groupby = JRequest::getVar('groupby', false);
		if ($groupby) {
			$q .= " GROUP BY ";
			foreach ($required_fields as $column_header => $fieldname) {
				$q .= $fieldname.", ";
			}
			$q = substr($q, 0, -2);
		}
		
		/* Order template fields by name and order */
		$q .= ' ORDER BY template_name, field_order ';
		
		/* Add a limit if user wants us to */
		$q .= $this->_exportmodel->ExportLimit();
		 
		$csvidb->setQuery($q);
		$logcount = $db->getAffectedRows();
		JRequest::setVar('logcount', array('export' => $logcount));
		if ($db->getErrorNum() > 0) $csvilog->AddStats('incorrect', $db->getErrorMsg(), true);
		if ($logcount > 0) {
			while ($record = $csvidb->getRow()) {
				$contents = '';
				if ($template->export_type == 'xml') $contents .= $xmlclass->NodeStart();
				foreach ($required_fields as $column_header => $fieldname) {
				  $fieldvalue = $record->$fieldname;
				  /* Check if we have any content otherwise use the default value */
				  if (strlen(trim($fieldvalue)) == 0) $fieldvalue = $default_values[$column_header];
				  $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header);
				}
				if ($template->export_type == 'xml') {
				  $contents .= $xmlclass->NodeEnd();
				}
				else if (substr($contents, -1) == $template->field_delimiter) {
				  $contents = substr($contents, 0 , -1);
				}
				$contents .= "\r\n";
				
				/* Output the contents */
				CsvimprovedModelExportfile::writeOutput($contents);
				
				/* Clean up */
				unset($contents);
			}
		}
	}
}
?>