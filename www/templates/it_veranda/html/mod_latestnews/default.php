<?php // @version $Id: default.php 9718 2007-12-20 22:35:36Z eddieajau $
defined('_JEXEC') or die('Restricted access');
?>

<?php if (count($list)) : ?>
<ol class="latestnews clearfix">
	<?php foreach ($list as $item) : ?>
	<li class="latestnews<?php echo $params->get('pageclass_sfx'); ?>">
		<a href="<?php echo $item->link; ?>" class="latestnews<?php echo $params->get('pageclass_sfx'); ?>">
			<?php echo $item->text; ?></a>
	</li>
	<?php endforeach; ?>
</ol>
<?php endif;
