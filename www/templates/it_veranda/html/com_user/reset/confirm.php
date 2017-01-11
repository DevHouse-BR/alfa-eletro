<?php // @version $Id: confirm.php  $
defined('_JEXEC') or die('Restricted access');
?>


<form action="index.php?option=com_user&amp;task=confirmreset" method="post" class="josForm form-validate">

`<fieldset>
	<legend><?php echo JText::_('Confirm your Account'); ?></legend>
    	
				<p><?php echo JText::_('RESET_PASSWORD_CONFIRM_DESCRIPTION'); ?></p>
		
        
				<p><label for="token" class="hasTip" title="<?php echo JText::_('RESET_PASSWORD_TOKEN_TIP_TITLE'); ?>::<?php echo JText::_('RESET_PASSWORD_TOKEN_TIP_TEXT'); ?>"><?php echo JText::_('Token'); ?>:</label><br />
			
				<input id="token" name="token" type="text" class="required inputbox" size="36" />
			</p>
</fieldset>

<p class="buttonarea">
<button type="submit"><span class="round"><span><?php echo JText::_('Submit'); ?></span></span></button>
</p>
<?php echo JHTML::_( 'form.token' ); ?>
</form>