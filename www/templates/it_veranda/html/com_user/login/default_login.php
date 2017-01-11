
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
<form action="index.php" method="post" name="login" id="login" class="login_form<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
	<?php if ( $this->params->get( 'page_title' ) ) : ?>
	<h2>
		<?php echo $this->params->get( 'header_login' ); ?>
	</h2>
	<?php endif; ?>

	<?php if ( $this->params->get( 'description_login' ) || isset( $this->image ) ) : ?>
		<div class="contentdescription<?php echo $this->params->get( 'pageclass_sfx' );?>">
			<?php
			if ($this->params->get('description_login')) : ?>
			<p class="notice">
				<?php echo $this->params->get('description_login_text'); ?>
			</p>
			<?php endif; ?>
		</div>
	<?php endif; ?>
	
		<fieldset>
        
        	<legend><?php echo JText::_( 'Login Below' ); ?></legend>
            
       <p>
			<label for="user" ><?php echo JText::_( 'Username' ); ?></label><br />
			<input name="username" type="text" class="inputbox" size="20"  id="user" />
		</p>
		<p>
			<label for="pass" ><?php echo JText::_( 'Password' ); ?></label><br />
			<input name="passwd" type="password" class="inputbox" size="20" id="pass" />
		</p>
        
        <p>
			<label for="rem"><?php echo JText::_( 'Remember me' ); ?></label>
			<input type="checkbox" name="remember"  value="yes" id="rem" />
		</p>
        </fieldset>
    <p class="buttonarea clearfix">    
			<button type="submit"><span class="round"><span><?php echo JText::_( 'Login' ); ?></span></span></button>
    </p>
   
   <ul>
	<li>
		<a href="<?php echo JRoute::_( 'index.php?option=com_user&view=reset' ); ?>">
		<?php echo JText::_('FORGOT_YOUR_PASSWORD'); ?></a>
	</li>
	<li>
		<a href="<?php echo JRoute::_( 'index.php?option=com_user&view=remind' ); ?>">
		<?php echo JText::_('FORGOT_YOUR_USERNAME'); ?></a>
	</li>
	<?php
	$usersConfig = &JComponentHelper::getParams( 'com_users' );
	if ($usersConfig->get('allowUserRegistration')) : ?>
	<li>
		<a href="<?php echo JRoute::_( 'index.php?option=com_user&task=register' ); ?>">
			<?php echo JText::_('REGISTER'); ?></a>
	</li>
	<?php endif; ?>
</ul>
	
	<noscript><?php echo JText::_( 'WARNJAVASCRIPT' ); ?></noscript>
	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="login" />
	<input type="hidden" name="return" value="<?php echo $this->return; ?>" />
	<input type="hidden" name="<?php echo JUtility::getToken(); ?>" value="1" />
</form>
