<?php
/**
 * Product files export class
 *
 * @package CSVImproved
 * @subpackage Export
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: productfilesexport.php 869 2009-04-14 14:00:35Z Suami $
 */

defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );
 
/**
 * Processor for product files exports
 *
 * @package CSVImproved
 * @subpackage Export
 */
class CsvimprovedModelProductFilesExport extends JModel {
	
	/* Private variables */
	private $_exportmodel = null;
	
	
	/** 
	 * Product files export
	 *
	 * Exports product data to either csv or xml format
	 *
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
		
		/* Execute the query */
		$q = "SELECT j.*, p.product_sku, IF (a.attribute_name = 'download', 'Y', 'N') AS product_files_download 
		 	FROM #__vm_product_files j
			LEFT JOIN #__vm_product p
			ON j.file_product_id = p.product_id 
			LEFT JOIN #__vm_product_attribute a
			ON j.file_product_id = a.product_id ";
			
		/* Check if we need to group the orders together */
		$groupby = JRequest::getVar('groupby', false);
		if ($groupby) {
			$q .= " GROUP BY ";
			foreach ($required_fields as $column_header => $fieldname) {
				switch ($fieldname) {
					case 'product_files_download':
						break;
					case 'product_files_file_description':
						$q .= "file_description, ";
						break;
					case 'product_files_file_name':
						$q .= "file_name, ";
						break;
					case 'product_files_file_published':
						$q .= "file_published, ";
						break;
					case 'product_files_file_title':
						$q .= "file_title, ";
						break;
					case 'product_files_file_url':
						$q .= "file_url, ";
						break;
					default:
						$q .= $fieldname.", ";
						break;
				}
			}
			$q = substr($q, 0, -2);
		}
			
		/* Add a limit if user wants us to */
		$q .= $this->_exportmodel->ExportLimit();
		 
		$csvidb->setQuery($q);
		JRequest::setVar('logcount', array('export' => $db->getAffectedRows()));
		if ($db->getErrorNum() > 0) $csvilog->AddStats('incorrect', $db->getErrorMsg(), true);
		while ($record = $csvidb->getRow()) {
			$contents = '';
		    if ($template->export_type == 'xml') $contents .= $xmlclass->NodeStart();
		    foreach ($required_fields as $column_header => $fieldname) {
			  switch ($fieldname) {
				case "product_files_file_published":
				   if ($record->file_published == 1) $fieldvalue = 'Y';
				   else $fieldvalue = 'N';
				   $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header);
				   break;
				case "product_files_file_name":
				   $fieldvalue = $record->file_name;
				   $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header, true);
				   break;
				case "product_files_file_title":
				   $fieldvalue = $record->file_title;
				   $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header, true);
				   break;
				case "product_files_file_description":
				   $fieldvalue = $record->file_description;
				   $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header, true);
				   break;
				case "product_files_file_url":
				   $fieldvalue = $record->file_url;
				   $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header, true);
				   break;
				default:
				   $fieldvalue = $record->$fieldname;
				   $contents .= $this->_exportmodel->AddExportField($fieldvalue, $fieldname, $column_header);
				   break;
			  }
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
?>