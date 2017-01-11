<?php
/**
 * Log view
 *
 * The logger needs to record several messages. These are:
 * - Successful imported records
 * - Failed imported records
 * - Status messages
 * - Warning messages
 *
 * @package CSVImproved
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: view.html.php 665 2009-01-02 07:40:08Z Suami $
 */

defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );

jimport( 'joomla.application.component.view' );

/**
 * Log View
 *
 * @package CSVImproved
 */
class CsvimprovedViewLog extends JView {
	
	/**
	 * About view display method
	 * @return void
	 **/
	function display($tpl = null) {
		/* Get the task */
		$task = JRequest::getCmd('task');
		/* Load a log ID */
		$cid = JRequest::getVar('cid');
		/* Set the log ID */
		$model = $this->getModel('log');
		if (isset($cid[0])) $model->setId($cid[0]);
		if ($task == 'logdetails') {
			/* Load the details */
			$logdetails = $this->get('LogDetails');
			/* Load the statistics */
			$logstatistics = $this->get('LogStatistics');
			/* Assign variables */
			$this->assignRef('logdetails', $logdetails);
			$this->assignRef('logstatistics', $logstatistics);
			/* Add toolbar */
			JToolBarHelper::title(JText::_('Log Details'), 'csvi_logdetails_48');
			JToolBarHelper::custom( 'cancel', 'csvi_cancel_32', 'csvi_cancel_32', JText::_('Cancel'), false);
		}
		else {
			if ($task == 'remove') $this->get('Delete');
			/* Get the pagination */
			$pagination = $this->get('Pagination');
			/* Load the logs */
			$logentries = $this->get('LogEntries');
			/* Assign variables */
			$this->assignRef('logentries', $logentries);
			$this->assignRef('pagination', $pagination);
			/* Add toolbar */
			JToolBarHelper::title(JText::_('Log'), 'csvi_log_48');
			JToolBarHelper::custom( 'logdetails', 'csvi_logdetails_32', 'csvi_logdetails_32', JText::_('Details'), true);
			JToolBarHelper::custom( 'remove', 'csvi_delete_32', 'csvi_delete_32', JText::_('Delete'), true);
		}
		
		/* Display it all */
		parent::display($tpl);
	}
}
?>
