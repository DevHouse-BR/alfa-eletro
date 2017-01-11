<?php // @version $Id: default.php 9133 2007-10-04 02:41:01Z jinx $
defined('_JEXEC') or die('Restricted access');
?>

<?php JHTML::_('stylesheet', 'poll_bars.css', 'components/com_poll/assets/'); ?>

<?php if ($this->params->get('show_page_title')) : ?>
<h1 class="componentheading<?php echo $this->params->get('pageclass_sfx'); ?>">
	<?php echo $this->poll->title ? $this->escape($this->poll->title) : $this->escape($this->params->get('page_title')); ?>
</h1>
<?php endif; ?>

	<form action="index.php" method="post" name="poll" id="poll">
		
        <p>
        <label for="id"><?php echo JText::_( 'Select Poll' ); ?></label><br />
        &nbsp;<?php echo $this->lists['polls']; ?><br />
        </p>
	</form>
	<?php if (count($this->votes)) :
		echo $this->loadTemplate( 'graph' );
	endif; ?>
