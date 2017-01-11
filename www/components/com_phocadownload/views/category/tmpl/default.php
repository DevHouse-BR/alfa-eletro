<?php
// no direct access
defined('_JEXEC') or die('Restricted access'); 

if ( $this->params->def( 'show_page_title', 1 ) ) : ?>
	<!--<div class="componentheading<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
		<?php echo $this->params->get('page_title'); ?>
	</div>-->
<?php endif; ?>

<div id="phoca-dl-category-box"><?php

if (!empty($this->section[0])) {
	echo '<div class="pd-category"><!--<div class="pdtop"><a title="'.JText::_('Section').'" href="'. JRoute::_('index.php?option=com_phocadownload&view=section&id='.$this->section[0]->id.':'.$this->section[0]->alias.'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'" >'.JHTML::_('image', 'components/com_phocadownload/assets/images/up.png', JText::_('Up')).  '</a></div>-->';
} else {
	echo '<div class="pd-category"><div class="pdtop"></div>';
}

if (!empty($this->category[0])) {

	//echo '<h3>'.$this->category[0]->title. '</h3>';


	// Description
	echo '<div class="contentpane'.$this->params->get( 'pageclass_sfx' ).'">';
	if ( (isset($this->tmpl['image']) && $this->tmpl['image'] !='') || (isset($this->category[0]->description) && $this->category[0]->description != '' && $this->category[0]->description != '<p>&#160;</p>')) {
		echo '<div class="contentdescription'.$this->params->get( 'pageclass_sfx' ).'">';
		if ( isset($this->tmpl['image']) ) {
			echo $this->tmpl['image'];
		}
		echo $this->category[0]->description
			.'</div><p>&nbsp;</p>';
	}
	echo '</div>';


	echo '<form action="'.$this->request_url.'" method="post" name="adminForm">';
	echo '<table width="100%">';	
	if (!empty($this->documentlist)) {	
		foreach ($this->documentlist as $valueDoc) {
			if ($valueDoc->textonly == 1) {
				
				echo '<tr><td colspan="3" class="textonly"><div class="description">';
				echo $valueDoc->description;
				echo '</div></td></tr>' . "\n";
			
			} else {

				// IMAGE FILENAME
				$imageFileName = '';
				$imageFileNameThumbnail = '';
				if ($valueDoc->image_filename !='') {
					$thumbnail = false;
					$thumbnail = preg_match("/phocathumbnail/i", $valueDoc->image_filename);
					if ($thumbnail) {
						$imageFileNameThumbnail = '<div style="margin-top:5px;margin-bottom:5px" ><img src="'.$this->cssimagepath.$valueDoc->image_filename.'" alt="" /></div>';
						$imageFileName 			= '';
					} else {
						$imageFileNameThumbnail = '';
						$imageFileName 			= 'style="background: url(\''.$this->cssimagepath.$valueDoc->image_filename.'\') 0 center no-repeat;"';
					}
				}
				
				// FILESIZE
				if ($valueDoc->filename !='') {
					$absFile = str_replace('/', DS, JPath::clean($this->absfilepath . $valueDoc->filename));
					if (JFile::exists($absFile))
					{
						$fileSize = PhocaDownloadHelper::getFileSizeReadable(filesize($absFile));
					} else {
						$fileSize = '';
					}
				}
				
				
				// DETAILS
				$details = '';
				if ($valueDoc->title != '') {
					$details .= '<h4>'.$valueDoc->title.'</h4>';
				}
				if ($valueDoc->filename != '') {
					$details .= '<div>'.JText::_('File Name').': '.PhocaDownloadHelper::getTitleFromFilenameWithExt( $valueDoc->filename ).'</div>';
				}
				if ($fileSize != '') {
					$details .= '<div>'.JText::_('File Size').': '.$fileSize.'</div>';
				}
				
				if ($valueDoc->version != '') {
					$details .= '<div>'.JText::_('Version').': '.$valueDoc->version.'</div>';
				}
				if ($valueDoc->license != '') {
					if ($valueDoc->license_url != '') {
						$details .= '<div>'.JText::_('License').': '.'<a href="'.$valueDoc->license_url.'" target="_blank">'.$valueDoc->license.'</a></div>';
					} else {
						$details .= '<div>'.JText::_('License').': '.$valueDoc->license.'</div>';
					}
				}
				if ($valueDoc->author != '') {
					if ($valueDoc->author_url != '') {
						$details .= '<div>'.JText::_('Author').': '.'<a href="'.$valueDoc->author_url.'" target="_blank">'.$valueDoc->author.'</a></div>';
					} else {
						$details .= '<div>'.JText::_('Author').': '.$valueDoc->author.'</div>';
					}
				}

				if ($valueDoc->author_email != '') {
					//$details .= '<div>'.JText::_('Email').': '. JHTML::_( 'email.cloak', $valueDoc->author_email).'</div>';
					$protectMail = str_replace('@', '['.JText::_('at').']', $valueDoc->author_email);
					$protectMail = str_replace('.', '['.JText::_('dot').']', $protectMail);
					$details .= '<div>'.JText::_('Email').': '. $protectMail.'</div>';
				}
				
				if ($valueDoc->date != '') {
					$details .= '<div>'.JText::_('Date').': '.JHTML::Date($valueDoc->date, "%d. %B %Y").'</div>';
				}
				
				// DESCRIPTION
				$classMiddle 				= 'class="pdfile"';
				$descriptionOutputTop 		= '';
				$descriptionOutputBottom 	= '';
				$descriptionOutputOverlib	= '';
				
				if ($valueDoc->description != '' && $valueDoc->description != '<p>&#160;</p>' && $valueDoc->description != '<p>&nbsp;</p>' && $valueDoc->description != '<p></p>' && $valueDoc->description != '<br />') {
					
					if ($this->paramstmpl['display_description'] == 1 || $this->paramstmpl['display_description'] == 4) {
						$descriptionOutputTop 		= '<tr><td colspan="3">'.$valueDoc->description.'</td>';
						$classMiddle 				= 'class="pdfile"';
					}
					if ($this->paramstmpl['display_description'] == 2 || $this->paramstmpl['display_description'] == 5) {	
						$descriptionOutputBottom 	= '<tr><td class="pdfile" colspan="3">'.$valueDoc->description.'</td>';
						$classMiddle 				= '';
					}
					
					if ($this->paramstmpl['display_description'] == 3 || $this->paramstmpl['display_description'] == 4 ) {	
						$details .= '<div>'.JText::_('Description').':<br />'.$valueDoc->description.'</div>';
						$classMiddle 				= 'class="pdfile"';
					}
					
					if ( $this->paramstmpl['display_description'] == 5 ) {	
						$details .= '<div>'.JText::_('Description').':<br />'.$valueDoc->description.'</div>';
						$classMiddle 				= '';
					}
					
					if ( $this->paramstmpl['display_description'] == 6 ) {	
						$details .= '<div>'.JText::_('Description').':<br />'.$valueDoc->description.'</div>';
						$descriptionOutputTop 	= '<tr><td colspan="3">'.$details .'</td>';
						$classMiddle 				= 'class="pdfile"';
					}
					
					if ( $this->paramstmpl['display_description'] == 7 ) {	
						$details .= '<div>'.JText::_('Description').':<br />'.$valueDoc->description.'</div>';
						$descriptionOutputBottom 	= '<tr><td class="pdfile" colspan="3">'.$details .'</td>';
						$classMiddle 				= '';
					}
					
				} else {
					
				}
				
				
				
				if ($this->paramstmpl['display_downloads'] == 1) {
					$details .= '<div>'.JText::_('Downloads').': '.$valueDoc->hits.' x</div>';
				}			
				
				// Title or name
				
				if ($this->paramstmpl['filename_or_name'] == 'title') {
					$displayNameHead = '';
					$displayName = $valueDoc->title;
				} else if ($this->paramstmpl['filename_or_name'] == 'filename'){
					$displayNameHead = '';
					$displayName = PhocaDownloadHelper::getTitleFromFilenameWithExt( $valueDoc->filename );
				} else if ($this->paramstmpl['filename_or_name'] == 'filenametitle'){
					$displayNameHead = '<div><strong>'.$valueDoc->title.'</strong></div>';
					$displayName = PhocaDownloadHelper::getTitleFromFilenameWithExt( $valueDoc->filename );
				}
				
				// OVERLIB
				$overlib 	= "onmouseover=\"return overlib('".htmlspecialchars( addslashes('<div style="text-align:left;padding:5px">'.$details) )."', CAPTION, '".JText::_('Details')."', BELOW, RIGHT, FGCOLOR, '".$this->ol['fgColor']."', BGCOLOR, '".$this->ol['bgColor']."', TEXTCOLOR, '".$this->ol['textColor']."', CAPCOLOR, '".$this->ol['capColor']."',CLOSECOLOR, '".$this->ol['closeColor']."', STICKY, MOUSEOFF);\"";
				$overlib .= " onmouseout=\"return nd();\"";
			
				// LINK
				// Confirm license - go to "file" view
				if ((int)$valueDoc->confirm_license > 0) {
						$linkDownloadB = '<a href="'. JRoute::_('index.php?option=com_phocadownload&view=file&id='.$valueDoc->id.':'.$valueDoc->alias. $this->tmpl['limitstarturl'].'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'">';	// we need pagination to go back			
						$linkDownloadE ='</a>';
				} else {
					// EXTERNAL LINK
					if ($valueDoc->link_external != '') {
						
						$linkDownloadB = '<a href="'.$valueDoc->link_external.'" target="'.$this->paramstmpl['download_external_link'].'" >';
						$linkDownloadE ='</a>';
						
					} else {
					
						$linkDownloadB = '<a href="'. JRoute::_('index.php?option=com_phocadownload&view=category&id='.$this->category[0]->id.':'.$this->category[0]->alias.'&download='.$valueDoc->id.':'.$valueDoc->alias.$this->tmpl['limitstarturl'].'&Itemid='. JRequest::getVar('Itemid', 1, 'get', 'int')).'">';				
						$linkDownloadE ='</a>';
					
					}
				}
			
				// OUTPUT
				echo $descriptionOutputTop;			
				echo '<tr><td width="90%" '.$classMiddle.'>'.$displayNameHead. $imageFileNameThumbnail.'<div class="pd-document" '.$imageFileName.'>';
				echo $linkDownloadB;
				echo $displayName;
				echo $linkDownloadE;
				if ($fileSize !='') {
					echo ' <small style="color:#ccc">('.$fileSize.')</small>';
				}
				
				echo PhocaDownloadHelper::displayNewIcon($valueDoc->date, $this->tmpl['displaynew']);
				echo PhocaDownloadHelper::displayHotIcon($valueDoc->hits, $this->tmpl['displayhot']);
				
				echo '</div></td>' . "\n";
				echo '<td '.$classMiddle.'>';
				if ($this->paramstmpl['display_detail'] == 1) {
				
					echo '<div class="pddetails"><div>';
					echo '<a '.$overlib.' href="#">'. JText::_('Details').'</a>';
					echo '</div></div>';
				}	
				echo 	'</td>' . "\n";
				
				echo '<td '.$classMiddle.'><div class="pddownload"><div>';
				echo $linkDownloadB;
				echo JText::_('Download');
				echo $linkDownloadE;
				echo '</div></div></td>' . "\n";
				echo '</tr>' . "\n";
				echo $descriptionOutputBottom;
			}
		}
	}
	echo '</table>';

	if (count($this->documentlist)) {
		echo '<div class="pd-pagination"><center>';
		if ($this->params->get('show_pagination_limit')) {
			
			echo '<div style="margin:0 10px 0 10px;display:inline;">'
				.JText::_('Display Num') .'&nbsp;'
				.$this->tmpl['pagination']->getLimitBox()
				.'</div>';
		}
		
		if ($this->params->get('show_pagination')) {
		
			echo '<div style="margin:0 10px 0 10px;display:inline;" class="sectiontablefooter'.$this->params->get( 'pageclass_sfx' ).'" >'
				.$this->tmpl['pagination']->getPagesLinks()
				.'</div>'
			
				.'<div style="margin:0 10px 0 10px;display:inline;" class="pagecounter">'
				.$this->tmpl['pagination']->getPagesCounter()
				.'</div>';
		}
		echo '</center></div>';
	}
	echo '</form>';
} else {
	echo '<h3>&nbsp;</h3>';
}
echo '</div></div>';// . $this->tmpl['id'];
?>
