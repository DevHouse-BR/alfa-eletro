<?php // @version $Id: default.php  $
defined('_JEXEC') or die('Restricted access');
?>



<form action="index.php?option=com_user&amp;task=requestreset" method="post" class="josForm form-validate">
	<fieldset>
    	<legend><?php echo JText::_('FORGOT_YOUR_PASSWORD'); ?></legend>
        
    	<p><?php echo JText::_('RESET_PASSWORD_REQUEST_DESCRIPTION'); ?></p>
        <p>
        
	<label for="email" class="hasTip" title="<?php echo JText::_('RESET_PASSWORD_EMAIL_TIP_TITLE'); ?>::<?php echo JText::_('RESET_PASSWORD_EMAIL_TIP_TEXT'); ?>"><?php echo JText::_('Email Address'); ?>:</label><br />
	<input id="email" name="email" type="text" class="required validate-email inputbox" />
	</p>
    
    </fieldset>
    <p class="buttonarea">
		<button type="submit"><span class="round"><span><?php echo JText::_('Submit'); ?></span></span></button>
    </p>
    
	<?php echo JHTML::_( 'form.token' ); ?>
</form>