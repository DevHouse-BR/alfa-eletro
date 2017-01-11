<?php // @version $Id: complete.php  $
defined('_JEXEC') or die('Restricted access');
?>

<div class="componentheading">
	<?php echo JText::_('Reset your Password'); ?>
</div>

<form action="index.php?option=com_user&amp;task=completereset" method="post" class="josForm form-validate">
	
    <fieldset>
    	<legend><?php echo JText::_('Reset your Password'); ?></legend>
        
				<p><?php echo JText::_('RESET_PASSWORD_COMPLETE_DESCRIPTION'); ?></p>
			
				<p>
                <label for="password1" class="hasTip" title="<?php echo JText::_('RESET_PASSWORD_PASSWORD1_TIP_TITLE'); ?>::<?php echo JText::_('RESET_PASSWORD_PASSWORD1_TIP_TEXT'); ?>"><?php echo JText::_('Password'); ?>:</label><br />
			
				<input id="password1" name="password1" type="password" class="required validate-password inputbox" />
			</p>
            
				
                <p>
                <label for="password2" class="hasTip" title="<?php echo JText::_('RESET_PASSWORD_PASSWORD2_TIP_TITLE'); ?>::<?php echo JText::_('RESET_PASSWORD_PASSWORD2_TIP_TEXT'); ?>"><?php echo JText::_('Verify Password'); ?>:</label><br />
			
				<input id="password2" name="password2" type="password" class="required validate-password inputbox" />
                
                </p>
			</fieldset>

	</fieldset>

<p class="buttonarea">
<button type="submit"><span class="round"><span><?php echo JText::_('Submit'); ?></span></span></button>
</p>

	<?php echo JHTML::_( 'form.token' ); ?>
</form>