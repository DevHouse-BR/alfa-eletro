<?php defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );?>
<?php $row = 0; ?>
<table class="adminform">
	<!-- Template name -->
	<tr class="row<?php echo $row;?>">
		<td class="template_config_label"><?php echo JHTML::tooltip(JText::_('The name of the template'), JText::_('Name'), 'tooltip.png', '', '', false); ?> 
		<?php echo JText::_('Name');?></td>
		<td><input class="template_input" type="text" id="template_name" name="template_name" value="<?php echo $this->template->template_name; ?>"></td>
	</tr>
	
	<!-- Field delimiter -->
	<tr class="row<?php echo $row = 1 - $row;?>">
		<td class="template_config_label"><?php echo JHTML::tooltip(JText::_('Enter a unique character that seperates each field. This character cannot be part of the data that is being uploaded.<br /><br />Use t to specify tab delimiter.<br /><br />This is only used for CSV files. XML files use the fieldnames attached to the template as nodes.'), JText::_('Field Delimiter'), 'tooltip.png', '', '', false); ?> 
		<?php echo JText::_('Field Delimiter');?></td>
		<td><input class="template_input delimiter" type="text" maxlength="1" id="field_delimiter" name="field_delimiter" value="<?php echo $this->template->field_delimiter; ?>"></td>
	</tr>
	
	<!-- Text enclosure -->
	<tr class="row<?php echo $row = 1 - $row;?>">
		<td class="template_config_label"><?php echo JHTML::tooltip(JText::_('Enter a unique character that encloses each field. This character cannot be part of the data that is being uploaded.<br /><br />This is only used for CSV files. XML files use the fieldnames attached to the template as nodes.'), JText::_('Text Enclosure'), 'tooltip.png', '', '', false); ?> 
		<?php echo JText::_('Text Enclosure');?></td>
		<td><input class="template_input delimiter" type="text" maxlength="1" id="text_enclosure" name="text_enclosure"
		<?php 
			if ($this->template->text_enclosure == '"') echo "value='".$this->template->text_enclosure."'>";
			else echo '"value="'.$this->template->text_enclosure.'">';
		?>
		</td>
	</tr>
	
	<!-- File location -->
	<tr class="row<?php echo $row = 1 - $row;?>">
		<td class="template_config_label"><?php echo JHTML::tooltip(JText::_('File location is used as a starting point of the location of image files. Do not add a trailing slash.'), JText::_('File location'), 'tooltip.png', '', '', false); ?> 
		<?php echo JText::_('File location');?></td>
		<td><input class="template_input longtext" type="text" id="file_location" name="file_location" size="255" value="<?php echo $this->template->file_location;?>">
	</tr>
	<tr>
		<td class="template_config_label"></td>
		<td>
		<span id="pathsuggest"><?php echo JPATH_SITE.DS.'components'.DS.'com_virtuemart'.DS.'shop_image'.DS.'product';?></span> | 
		<a href="#" onclick="document.getElementById('file_location').value=document.getElementById('pathsuggest').innerHTML; return false;"><?php echo JText::_('Paste');?></a> | 
		<a href="#" onclick="document.getElementById('file_location').value=''; return false;"><?php echo JText::_('Clear');?></a>
		</td>
	</tr>
</table>
