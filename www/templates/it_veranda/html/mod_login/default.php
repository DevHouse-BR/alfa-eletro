<?php // @version $Id: default.php 9830 2008-01-03 01:09:39Z eddieajau $
defined('_JEXEC') or die('Restricted access');
?>
<div id="loginarea">
 
<?php if($type == 'logout') : ?>
<form action="index.php" method="post" name="login" class="loginform logout">
	<?php if ($params->get('greeting')) : ?>
	<p class="last">
		<?php if ($params->get('name')) : {
		echo '<label for="enviar">' . JText::sprintf( 'HINAME', $user->get('name') ) . "</label>";
	} else : {
		echo JText::sprintf( 'HINAME', $user->get('username') );
	} endif; ?>
	<?php endif; ?>
		<button style="vertical-align:middle" name="enviar" type="submit"><span class="round"><span style="color:#FFFFFF;"><?php echo JText::_('BUTTON_LOGOUT'); ?></span></span></button>
	</p>
	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="logout" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
</form>


<?php else : ?>
<?php if(JPluginHelper::isEnabled('authentication', 'openid')) :
		$lang->load( 'plg_authentication_openid', JPATH_ADMINISTRATOR );
		$langScript = 	'var JLanguage = {};'.
						' JLanguage.WHAT_IS_OPENID = \''.JText::_( 'WHAT_IS_OPENID' ).'\';'.
						' JLanguage.LOGIN_WITH_OPENID = \''.JText::_( 'LOGIN_WITH_OPENID' ).'\';'.
						' JLanguage.NORMAL_LOGIN = \''.JText::_( 'NORMAL_LOGIN' ).'\';'.
						' var modlogin = 1;';
		$document = &JFactory::getDocument();
		$document->addScriptDeclaration( $langScript );
		JHTML::_('script', 'openid.js');
endif; ?>

<form action="<?php echo JRoute::_( 'index.php', true, $params->get('usesecure')); ?>" method="post" name="login" class="loginform">

          <p id="login_username">
          <label for="modlgn_username"><?php echo JText::_('Username'); ?></label>
		<input name="username" id="modlgn_username" type="text" class="inputbox" value="<?=utf8_encode("Usuário")?>"  onblur="if(this.value=='') this.value='<?=utf8_encode("Usuário")?>';" onfocus="if(this.value=='<?=utf8_encode("Usuário")?>') this.value='';" alt="<?php echo JText::_('Username'); ?>" />
        </p>
        
        <p id="login_password">
        <label for="modlgn_password"><?php echo JText::_('Password'); ?></label>
        <input type="password" id="modlgn_password" name="passwd" class="inputbox" value="Senha"  onblur="if(this.value=='') this.value='Senha';" onfocus="if(this.value=='Senha') this.value='';"  alt="<?php echo JText::_('Password'); ?>" />
       </p>
       
       <p id="login_button">
       <button type="submit"><span class="round"><span><?php echo JText::_('BUTTON_LOGIN'); ?></span></span></button>
       </p>
       
       <?php if(JPluginHelper::isEnabled('system', 'remember')) : ?>
       <p id="login_remember">
       <input type="checkbox" name="remember" id="modlgn_remember" class="checkbox" value="yes" alt="<?php echo JText::_('Remember me'); ?>" />
       <label for="modlgn_remember" class="remember">
		<?php echo JText::_('Remember me'); ?>
	</label>
     </p>
      <?php endif; ?> 
      <p class="login_lost">
     	Perdi&nbsp;a&nbsp;<a href="<?php echo JRoute::_( 'index.php?option=com_user&view=reset' ); ?>"><?php echo JText::_('Password'); ?></a>&nbsp;ou&nbsp;<a href="<?php echo JRoute::_( 'index.php?option=com_user&view=remind' ); ?>"><?php echo JText::_('Username'); ?></a> 
    </p>
        

    
	<?php echo $params->get('posttext'); ?>
	<input type="hidden" name="option" value="com_user" />
	<input type="hidden" name="task" value="login" />
	<input type="hidden" name="return" value="<?php echo $return; ?>" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>

<?php endif;?>
</div>
