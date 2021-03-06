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

jimport('joomla.application.component.model');
jimport( 'joomla.filesystem.folder' );
jimport( 'joomla.filesystem.file' );

class PhocaDownloadCpModelPhocaDownloadstat extends JModel
{

	var $_data = null;
	var $_total = null;
	var $_pagination = null;
	var $_maxhit = null;

	function __construct() {
		parent::__construct();

		global $mainframe;		
		
		$context	= 'com_phocadownload.statistics.list.';
		// Get the pagination request variables
		$limit		= $mainframe->getUserStateFromRequest( 'global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int' );
		$limitstart	= $mainframe->getUserStateFromRequest( $context.'limitstart', 'limitstart', 0, 'int' );

		// In case limit has been changed, adjust limitstart accordingly
		$limitstart = ($limit != 0 ? (floor($limitstart / $limit) * $limit) : 0);

		$this->setState('limit', $limit);
		$this->setState('limitstart', $limitstart);
		
	}

	function getData() {
		if (empty($this->_data)) {
			$query = $this->_buildQuery();
			$this->_data = $this->_getList($query, $this->getState('limitstart'), $this->getState('limit'));
		}
		return $this->_data;
	}

	function getTotal() {
		if (empty($this->_total)) {
			$query = $this->_buildQuery();
			$this->_total = $this->_getListCount($query);
		}
		return $this->_total;
	}

	function getPagination() {
		if (empty($this->_pagination)) {
			jimport('joomla.html.pagination');
			$this->_pagination = new JPagination( $this->getTotal(), $this->getState('limitstart'), $this->getState('limit') );
		}
		return $this->_pagination;
	}
	
	function getMaxHit() {
		if (empty($this->_maxhit)) {
			$context	= 'com_phocadownload.statistics.list.';
			$where	= $this->_buildContentWhere($context);

		$query = ' SELECT MAX(a.hits) AS maxhit '
			. ' FROM #__phocadownload AS a '
			. ' LEFT JOIN #__phocadownload_categories AS cc ON cc.id = a.catid '
			. ' LEFT JOIN #__phocadownload_sections AS s ON s.id = a.sectionid '
			. ' LEFT JOIN #__groups AS g ON g.id = a.access '
			. ' LEFT JOIN #__users AS u ON u.id = a.checked_out '
			. $where;
		
			$this->_maxhit = $this->_getList($query);
		}
		return $this->_maxhit;
	}
	

	function _buildQuery() {
		$context	= 'com_phocadownload.statistics.list.';
		$where		= $this->_buildContentWhere($context);
		$orderby	= $this->_buildContentOrderBy($context);
		$query = ' SELECT a.*, cc.title AS categorytitle, s.title AS sectiontitle, u.name AS editor, g.name AS groupname, MAX(a.hits) AS maxhit '
			. ' FROM #__phocadownload AS a '
			. ' LEFT JOIN #__phocadownload_categories AS cc ON cc.id = a.catid '
			. ' LEFT JOIN #__phocadownload_sections AS s ON s.id = a.sectionid '
			. ' LEFT JOIN #__groups AS g ON g.id = a.access '
			. ' LEFT JOIN #__users AS u ON u.id = a.checked_out '
			. $where
			. ' GROUP by a.id'
			. $orderby
		;

		return $query;
	}

	function _buildContentOrderBy($context){
		global $mainframe;
		$filter_order		= $mainframe->getUserStateFromRequest( $context.'filter_order',		'filter_order',		'a.hits',	'cmd' );
		$filter_order_Dir	= $mainframe->getUserStateFromRequest( $context.'filter_order_Dir',	'filter_order_Dir',	'DESC',	'word' );


		if ($filter_order == 'a.ordering'){
			$orderby 	= ' ORDER BY sectiontitle, categorytitle, a.ordering '.$filter_order_Dir;
		} else {
			$orderby 	= ' ORDER BY '.$filter_order.' '.$filter_order_Dir.' , sectiontitle, categorytitle, a.hits, a.ordering ';
		}
		return $orderby;
	}

	function _buildContentWhere($context) {
		global $mainframe;
		$filter_state		= $mainframe->getUserStateFromRequest( $context.'filter_state',		'filter_state',		'',				'word' );
		$filter_catid		= $mainframe->getUserStateFromRequest( $context.'catid',		'catid',		'',				'int' );
		$filter_sectionid	= $mainframe->getUserStateFromRequest( $context.'filter_sectionid',	'filter_sectionid',		0,				'int' );
		$filter_order		= $mainframe->getUserStateFromRequest( $context.'filter_order',		'filter_order',		'a.ordering',	'cmd' );
		$filter_order_Dir	= $mainframe->getUserStateFromRequest( $context.'filter_order_Dir',	'filter_order_Dir',	'',				'word' );
		$search				= $mainframe->getUserStateFromRequest( $context.'search',			'search',			'',				'string' );
		$search				= JString::strtolower( $search );

		$where = array();

		if ($filter_catid > 0) {
			$where[] = 'a.catid = '.(int) $filter_catid;
		}
		if ($search) {
			$where[] = 'LOWER(a.title) LIKE '.$this->_db->Quote('%'.$search.'%');
		}
		if ( $filter_state ) {
			if ( $filter_state == 'P' ) {
				$where[] = 'a.published = 1';
			} else if ($filter_state == 'U' ) {
				$where[] = 'a.published = 0';
			}
		}
		if ( $filter_sectionid ) {
			$where[] = 'cc.section = '.(int)$filter_sectionid;
		}

		$where 		= ( count( $where ) ? ' WHERE '. implode( ' AND ', $where ) : '' );

		return $where;
	}
}
?>