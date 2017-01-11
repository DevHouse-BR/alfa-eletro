<?php defined('_JEXEC') or die('Restricted access');

jimport( 'joomla.filesystem.file' );

$insert = '';
if ($this->manager == 'icon') {
	$insert = 'image_filename';
} else if ($this->manager == 'file') {
	$insert = 'filename';
}

$ext = PhocaDownloadHelper::getExtension( $this->_tmp_file->path_without_name_relative );

if ($this->manager == 'icon' && ($ext == 'png' || $ext == 'jpg' || $ext == 'gif' || $ext == 'jpeg') ) {
	
	echo '<div>';
	echo '<a href="#" onclick="window.top.document.forms.adminForm.elements.'.$insert.'.value = \''.$this->_tmp_file->path_with_name_relative_no.'\';window.parent.document.getElementById(\'sbox-window\').close();">';
	echo JHTML::_( 'image.administrator', $this->_tmp_file->path_without_name_relative, '','', '', JText::_('Insert'), 'title="'.JText::_('Insert').'"');
	echo '</a> ';
	echo '<a href="#" onclick="window.top.document.forms.adminForm.elements.'.$insert.'.value = \''. $this->_tmp_file->path_with_name_relative_no.'\';window.parent.document.getElementById(\'sbox-window\').close();">';
	echo $this->_tmp_file->name;
	echo '</a>';
	echo '</div>';
	
} else {
	
	echo '<div>';
	echo '<a href="#" onclick="window.top.document.forms.adminForm.elements.'.$insert.'.value = \''.$this->_tmp_file->path_with_name_relative_no.'\';window.parent.document.getElementById(\'sbox-window\').close();">';
	echo JHTML::_( 'image.administrator', 'components/com_phocadownload/assets/images/icon-file.png', '','', '', JText::_('Insert'), 'title="'.JText::_('Insert').'"');
	echo '</a> ';
	echo '<a href="#" onclick="window.top.document.forms.adminForm.elements.'.$insert.'.value = \''. $this->_tmp_file->path_with_name_relative_no.'\';window.parent.document.getElementById(\'sbox-window\').close();">';
	echo $this->_tmp_file->name;
	echo '</a>';
	echo '</div>';
}
?>

