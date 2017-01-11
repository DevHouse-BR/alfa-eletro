<?php defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );?>
<?php
/* Load tooltips */
JHTML::_('behavior.tooltip');
jimport('joomla.html.pane');
?>
<form action="index.php" method="post" name="adminForm" id="adminForm">
	<?php $pane = JPane::getInstance('tabs'); 
	echo $pane->startPane("configurator");
	?>
	<?php
	/* Add the user input fields */
	echo $pane->startPanel( JText::_('Choose your template'), 'choose_tab' );
	?>
	<table class="adminform">
	<tr class="row0">
		<td class="template_label_small" ><input type="radio" name="type" id="type" value="import" <?php if ($this->type == 'import') { ?> checked=checked <?php } ?>
		onClick="TemplateConfig('import', '<?php echo $this->template->template_id; ?>', '<?php echo $this->task; ?>', '<?php echo $this->type;?>_tab');"></td>
		<td><?php echo JText::_('Import'); ?></td>
	</tr>
	<tr class="row1">
		<td class="template_label_small"><input type="radio" name="type" id="type" value="export" <?php if ($this->type == 'export') { ?> checked=checked <?php } ?>
	onClick="TemplateConfig('export', '<?php echo $this->template->template_id; ?>', '<?php echo $this->task; ?>', '<?php echo $this->type;?>_tab');"></td>
		<td><?php echo JText::_('Export'); ?></td>
	</tr>
	</table>
	<?php
	echo $pane->endPanel();
	
	if ($this->type == 'import') {
		echo $pane->startPanel( JText::_('Settings'), 'imexport_tab' );
		echo '<div id="import_tab">';
			echo $this->loadTemplate('config_import');
		echo '</div>';
		echo $pane->endPanel();
	}
	
	if ($this->type == 'export') {
		echo $pane->startPanel( JText::_('Settings'), 'imexport_tab' );
		echo '<div id="export_tab">';
			echo $this->loadTemplate('config_export');
		echo '</div>';
		echo $pane->endPanel();
	}
	
	echo $pane->startPanel( JText::_('System Limits'), 'limits_tab' );
		echo $this->loadTemplate('system_limits');
	echo $pane->endPanel();
	
	echo $pane->startPanel( JText::_('General settings'), 'settings_tab' );
		echo $this->loadTemplate('general_settings');
	echo $pane->endPanel();
	
	echo $pane->endPane();
	?>
	<input type="hidden" name="option" value="com_csvimproved" />
	<input type="hidden" name="controller" value="templates" />
	<input type="hidden" name="task" value="save" />
	<input type="hidden" name="template_id" value ="<?php echo $this->template->template_id; ?>" />
</form>
