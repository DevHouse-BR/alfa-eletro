<?php
// @version $Id: default.php 9830 2008-01-03 01:09:39Z eddieajau $
defined('_JEXEC') or die('Restricted access');
?>


<form name="form2" method="post" action="index.php" class="poll">
	
    <p class="polltitle"><?php echo $poll->title; ?></p>
    <?php for ($i = 0, $n = count($options); $i < $n; $i++) : ?>
	
    <p class="last pollradio">
    <input type="radio" name="voteid" id="voteid<?php echo $options[$i]->id; ?>" value="<?php echo $options[$i]->id; ?>" alt="<?php echo $options[$i]->id; ?>" />&nbsp;<label for="voteid<?php echo $options[$i]->id; ?>"><?php echo $options[$i]->text; ?></label></p>
    
    
		
		<?php endfor; ?>
<p class="last clearfix">
<br />
          <button type="submit"><span class="round"><span><?php echo JText::_('Vote'); ?></span></span></button>
          &nbsp;
          
          <a href="<?php echo JRoute::_("index.php?option=com_poll&id=$poll->slug".$itemid); ?>'"><?php echo JText::_('Results'); ?></a>
</p>
	

	<input type="hidden" name="option" value="com_poll" />
	<input type="hidden" name="id" value="<?php echo $poll->id; ?>" />
	<input type="hidden" name="task" value="vote" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
