<?php
/** $Id: default_form.php 11328 2008-12-12 19:22:41Z kdevine $ */
defined( '_JEXEC' ) or die( 'Restricted access' );

	$script = '<!--
		function validateForm( frm ) {
			var valid = document.formvalidator.isValid(frm);
			if (valid == false) {
				// do field validation
				if (frm.email.invalid) {
					alert( "' . JText::_( 'Please enter a valid e-mail address.', true ) . '" );
				} else if (frm.text.invalid) {
					alert( "' . JText::_( 'CONTACT_FORM_NC', true ) . '" );
				}
				return false;
			} else {
				frm.submit();
			}
		}
		// -->';
	$document =& JFactory::getDocument();
	$document->addScriptDeclaration($script);
	
	if(isset($this->error)) : ?>
    
<p><?php echo $this->error; ?></p>


<?php endif; ?>


	<form action="<?php echo JRoute::_( 'index.php' );?>" method="post" name="emailForm" id="emailForm" class="form-validate">
		
        <fieldset>
        
	<legend>
		<?php echo $this->params->get( 'page_title' ); ?>
	</legend>


        	<p>
            
			<label for="contact_name">
				<?php echo JText::_( 'Enter your name' );?>:
			</label><br />
			<input type="text" name="name" id="contact_name" size="30" class="inputbox" value="" />
			</p>
            
            <p>
			<label id="contact_emailmsg" for="contact_email">
				<?php echo JText::_( 'Email address' );?>:
			</label><br />
			<input type="text" id="contact_email" name="email" size="30" value="" class="inputbox required validate-email" maxlength="100" />
            </p>
            
            <p>            
			<label for="contact_subject">
				<?php echo JText::_( 'Message subject' );?>:
			</label><br />
			<input type="text" name="subject" id="contact_subject" size="30" class="inputbox" value="" />
			</p>
			
            <p>
            <label id="contact_textmsg" for="contact_text">
				<?php echo JText::_( 'Enter your message' );?>:
			</label><br />
			<textarea cols="70" rows="10" name="text" id="contact_text" class="inputbox required"></textarea>
            </p>
            
			<?php if ($this->contact->params->get( 'show_email_copy' )) : ?>
			<p>
				<input type="checkbox" name="email_copy" id="contact_email_copy" value="1"  />
				<label for="contact_email_copy">
					<?php echo JText::_( 'EMAIL_A_COPY' ); ?>
				</label>
			</p>
			
			<?php endif; ?>
			
        </fieldset>
        
           <p class="buttonarea">            
			<button class="button validate" type="submit"><span class="round"><span><?php echo JText::_('Send'); ?></span></span></button>
            </p>
	

	<input type="hidden" name="option" value="com_contact" />
	<input type="hidden" name="view" value="contact" />
	<input type="hidden" name="id" value="<?php echo $this->contact->id; ?>" />
	<input type="hidden" name="task" value="submit" />
	<?php echo JHTML::_( 'form.token' ); ?>
	</form>
	