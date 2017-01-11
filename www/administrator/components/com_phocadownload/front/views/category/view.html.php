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

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport( 'joomla.application.component.view');

class PhocaDownloadViewCategory extends JView
{

	function display($tpl = null)
	{		
		global $mainframe;
		
		jimport( 'joomla.filesystem.folder' ); 
		jimport( 'joomla.filesystem.file' );
		
		$params 			= &$mainframe->getParams();
		$uri 				= &JFactory::getURI();
		$model				= &$this->getModel();
		$document			= &JFactory::getDocument();
		$categoryId			= JRequest::getVar('id', 0, '', 'int');
		$limitStart			= JRequest::getVar( 'limitstart', 0, '', 'int');
		$section			= $model->getSection($categoryId, $params);
		$category			= $model->getCategory($categoryId, $params);
		$documentList		= $model->getDocumentList($categoryId, $params);
		
		$tmpl				= array();
		$tmpl['pagination']	= $model->getPagination($categoryId, $params);
		
		// Limit start
		if ($limitStart > 0 ) {
			$tmpl['limitstarturl'] =  '&start='.$limitStart;
		} else {
			$tmpl['limitstarturl'] = '';
		}
		
		$css			= $params->get( 'theme', 'phocadownload-grey' );
		$document->addStyleSheet(JURI::base(true).'/components/com_phocadownload/assets/'.$css.'.css');
		$document->addCustomTag('<script type="text/javascript" src="'.JURI::root().'includes/js/overlib_mini.js"></script>');
		
		switch($css) {
			case 'phocadownload-blue':
				$ol['fgColor']		= '#E5E5FF';
				$ol['bgColor']		= '#CCCCFF';
			break;
			
			case 'phocadownload-red':
				$ol['fgColor']		= '#E5E5FF';
				$ol['bgColor']		= '#FFB3C6';
			break;
			
			default:
				$ol['fgColor']		= '#f0f0f0';
				$ol['bgColor']		= '#D6D6D6';
			break;
		}
		// Overlib
		$ol['textColor']	= '#000000';
		$ol['capColor']		= '#000000';
		$ol['closeColor']	= '#000000';
		
		
		// PARAMS
		$paramsTmpl['download_external_link'] 	= $params->get( 'download_external_link', '_self' );
		$paramsTmpl['filename_or_name'] 		= $params->get( 'filename_or_name', 'filename' );
		$paramsTmpl['display_downloads'] 		= $params->get( 'display_downloads', 0 );
		$paramsTmpl['display_description'] 		= $params->get( 'display_description', 3 );
		$paramsTmpl['display_detail'] 			= $params->get( 'display_detail', 1 );
		$tmpl['id']		= PhocaDownloadHelper::getPhocaId($params->get( 'display_id', 1 ));
		
		$tmpl['displaynew']			= $params->get( 'display_new', 0 );
		$tmpl['displayhot']			= $params->get( 'display_hot', 0 );
		
		//$paramsTmpl['allowed_file_types']		= $params->get( 'allowed_file_types', '' );
		//$paramsTmpl['disallowed_file_types']	= $params->get( 'disallowed_file_types', '' );
		$paramsTmpl['allowed_file_types']		= PhocaDownloadHelper::getSettings( 'allowed_file_types', '' );
		$paramsTmpl['disallowed_file_types']	= PhocaDownloadHelper::getSettings( 'disallowed_file_types', '' );
		$paramsTmpl['enable_user_statistics']	= PhocaDownloadHelper::getSettings( 'enable_user_statistics', 1 );

		// DOWNLOAD
		// - - - - - - - - - - - - - - - 
		$download				= JRequest::getVar( 'download', array(0), 'get', 'array' );
		$downloadId		 		= (int) $download[0];
		
		if ($downloadId > 0) {
			$fileData		= $model->getDownload($downloadId);
			$currentLink	= 'index.php?option=com_phocadownload&view=category&id='.$category[0]->id.':'.$category[0]->alias.$tmpl['limitstarturl'] . '&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int');
			PhocaDownloadHelperFront::download($fileData, $downloadId, $currentLink, $paramsTmpl);
			
		}
		// - - - - - - - - - - - - - - - 
		
		
		
		
		// CSS Image Path
		$imagePath		= PhocaDownloadHelper::getPathSet('icon');
		$cssImagePath	= str_replace ( '../', JURI::base(true).'/', $imagePath['orig_rel_ds']);
		
		$filePath		= PhocaDownloadHelper::getPathSet('file');
		

		// Define image tag attributes
		if (!empty($category[0]->image)) {
			$attribs['align'] = '"'.$category[0]->image_position.'"';
			$attribs['hspace'] = '"6"';

			// Use the static HTML library to build the image tag
			$tmpl['image'] = JHTML::_('image', 'images/stories/'.$category[0]->image, JText::_('Phoca Download'), $attribs);
		} else {
			$tmpl['image'] = '';
		}

		$this->assignRef('tmpl',			$tmpl);
		$this->assignRef('section',			$section);
		$this->assignRef('category',		$category);
		$this->assignRef('documentlist',	$documentList);
		$this->assignRef('params',			$params);
		$this->assignRef('cssimagepath',	$cssImagePath);
		$this->assignRef('absfilepath',		$filePath['orig_abs_ds']);
		$this->assignRef('ol',				$ol);
		$this->assignRef('paramstmpl',		$paramsTmpl);
		$this->assignRef('request_url',		$uri->toString());
		parent::display($tpl);
		
	}
}
?>