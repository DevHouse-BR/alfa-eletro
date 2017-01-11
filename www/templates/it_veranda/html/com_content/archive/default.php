<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<form id="jForm" action="<?php JRoute::_('index.php')?>" method="post">

<fieldset>
<?php if ($this->params->get('show_page_title', 1)) : ?>
	<legend>
	<?php echo $this->escape($this->params->get('page_title')); ?>
   </legend>
<?php endif; ?>



	
		<?php if ($this->params->get('filter')) : ?>
		<p><label for="<?php echo JText::_('Filter'); ?>"><?php echo JText::_('Filter'); ?></label>
		<input type="text" name="filter" value="<?php echo $this->escape($this->filter); ?>" class="inputbox" onchange="document.jForm.submit();" />
        </p>
		<?php endif; ?>
       
        <p class="archivedlist">
        <label for="<?php echo JText::_('Date'); ?>"><?php echo JText::_('Date'); ?></label>
		<?php echo $this->form->monthField; ?>
      	<?php echo $this->form->yearField; ?>
        </p>
        
          <p class="archivedlist">
         <label for="<?php echo JText::_('Limit'); ?>"><?php echo JText::_('Limit'); ?></label>
		<?php echo $this->form->limitField; ?>
        </p>
        
        
	  </fieldset>
      
      <p class="buttonarea">
      
      	<button type="submit"><span class="round"><span><?php echo JText::_('Filter'); ?></span></span></button>
	</p>

<?php echo $this->loadTemplate('items'); ?>

	<input type="hidden" name="view" value="archive" />
	<input type="hidden" name="option" value="com_content" />
    
  
    
</form>
