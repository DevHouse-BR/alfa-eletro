<?php
// no direct access
defined('_JEXEC') or die('Restricted access'); 

if ( $this->params->def( 'show_page_title', 1 ) ) : ?>
	<div class="componentheading<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
		<?php echo $this->params->get('page_title'); ?>
	</div>
<?php endif;

if (!isset($this->section[0])) {
	return JError::raiseError( 404, JText::_( 'Document not found') );
}
?>

<div id="phoca-dl-section-box"><?php
echo '<div class="pd-section"><div class="pdtop"><a title="'.JText::_('Sections').'" href="'. JRoute::_('index.php?option=com_phocadownload&view=sections'.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" >'.JHTML::_('image', 'components/com_phocadownload/assets/images/up.png', JText::_('Up')).  '</a></div>';
echo '<h3>'.$this->section[0]->title. '</h3>';


// Description
echo '<div class="contentpane'.$this->params->get( 'pageclass_sfx' ).'">';
if ( (isset($this->tmpl['image']) && $this->tmpl['image'] !='') || (isset($this->section[0]->description) && $this->section[0]->description != '' && $this->section[0]->description != '<p>&#160;</p>')) {
	echo '<div class="contentdescription'.$this->params->get( 'pageclass_sfx' ).'">';
	if ( isset($this->tmpl['image']) ) {
		echo $this->tmpl['image'];
	}
	echo $this->section[0]->description
		.'</div><p>&nbsp;</p>';
}
echo '</div>';
    
if (!empty($this->categorylist)) {  
    foreach ($this->categorylist as $valueCat) {
        echo '<p class="pd-category">';
        echo '<a href="'. JRoute::_('index.php?option=com_phocadownload&view=category&id='.$valueCat->id.':'.$valueCat->alias.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'">'. $valueCat->title.'</a>';
        echo ' <small>('.$valueCat->numdoc.')</small></p>' . "\n";
    }
    echo '</div>';
} else {
	echo '<p>&nbsp;</p><p>&nbsp;</p>';
}   
?></div>


<?php
if (!empty($this->mostvieweddocs) && $this->tmpl['displaymostdownload'] == 1) {
	echo '<div class="phoca-dl-hr" style="clear:both">&nbsp;</div>';
	echo '<div id="phoca-dl-most-viewed-box">';
	echo '<div class="pd-documents"><h3>'. JText::_('Most downloaded files section').'</h3>';
	foreach ($this->mostvieweddocs as $value) {
	
		// FILESIZE
		if ($value->filename !='') {
			$absFile = str_replace('/', DS, JPath::clean($this->absfilepath . $value->filename));
			if (JFile::exists($absFile))
			{
				$fileSize = PhocaDownloadHelper::getFileSizeReadable(filesize($absFile));
			} else {
				$fileSize = '';
			}
		}
		
		// IMAGE FILENAME
		$imageFileName = '';
		if ($value->image_filename !='') {
			$thumbnail = false;
			$thumbnail = preg_match("/phocathumbnail/i", $value->image_filename);
			if ($thumbnail) {
				$imageFileName 	= '';
			} else {
				$imageFileName = 'style="background: url(\''.$this->cssimagepath.$value->image_filename.'\') 0 center no-repeat;"';
			}
		}
	
		echo '<p class="pd-document" '.$imageFileName.'>';
		echo '<a href="'. JRoute::_('index.php?option=com_phocadownload&view=category&id='.$value->categoryid.':'.$value->categoryalias.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'">'. $value->title.'</a> <small>(' .$value->sectiontitle. '/'.$value->categorytitle.')</small>';
		
		echo PhocaDownloadHelper::displayNewIcon($value->date, $this->tmpl['displaynew']);
		echo PhocaDownloadHelper::displayHotIcon($value->hits, $this->tmpl['displayhot']);
		
		echo '</p>' . "\n";
	}
	echo '</div></div>';
}
echo $this->tmpl['id'];
?>