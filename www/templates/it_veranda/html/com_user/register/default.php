<?php 
/**
  Copyright:
  Copyright (C) 2008 IceTheme. All Rights Reserved
  
  License:
  Copyrighted Commercial Software 
  
  Author:
  IceTheme - http://wwww.icetheme.com
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
?>

<script type="text/javascript">
	Window.onDomReady(function(){
		document.formvalidator.setHandler('passverify', function (value) { return ($('password').value == value); }	);
	});
</script>

<form action="<?php echo JRoute::_('index.php?option=com_user#content'); ?>" method="post" id="josForm" name="josForm" class="form-validate user">
	<?php if(isset($this->message)) :
		$this->display('message');
	endif; ?>
	<fieldset>
    	<legend><?php echo JText::_('Registration'); ?></legend>
		<p><?php echo JText::_('REGISTER_REQUIRED'); ?></p>
		<p>
			<label id="namemsg" for="name"><?php echo JText::_('Name'); ?>: *</label><br />
			<input type="text" name="name" id="name" value="<?php echo $this->user->get('name'); ?>" class="inputbox validate required none namemsg" maxlength="50" />
		</p>
        
		<p>
			<label id="usernamemsg" for="username"><?php echo JText::_('Username'); ?>: *</label><br />
			<input type="text" id="username" name="username"  value="<?php echo $this->user->get('username'); ?>" class="inputbox validate required username usernamemsg" maxlength="25" />
		</p>
        
		<p>
			<label id="emailmsg" for="email"><?php echo JText::_('Email'); ?>: *</label><br />
			<input type="text" id="email" name="email"  value="<?php echo $this->user->get('email'); ?>" class="inputbox validate required email emailmsg" maxlength="100" />
		</p>

		<p>
			<label id="pwmsg" for="password"><?php echo JText::_('Password'); ?>: *</label><br />
			<input type="password" id="password" name="password" value="" class="inputbox required validate-password" />
		</p>
		
        <p>
			<label id="pw2msg" for="password2"><?php echo JText::_('Verify Password'); ?>: *</label><br />
			<input type="password" id="password2" name="password2" value="" class="inputbox required validate-passverify" />
		</p>
	</fieldset>
    <p class="buttonarea clearfix">
    	<button type="submit"><span class="round"><span><?php echo JText::_('Register'); ?></span></span></button>
    </p>
	<input type="hidden" name="task" value="register_save" />
	<input type="hidden" name="id" value="0" />
	<input type="hidden" name="gid" value="0" />
	<input type="hidden" name="<?php echo JUtility::getToken(); ?>" value="1" />
</form>
