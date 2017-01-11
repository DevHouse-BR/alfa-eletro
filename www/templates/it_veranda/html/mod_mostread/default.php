<?php 
/**
  Copyright:
  Copyright (C) 2008 IceTheme. All Rights Reserved
  
  License:
  Copyrighted Commercial Software 
  
  Author:
  IceTheme - http://wwww.icetheme.com
 */

defined('_JEXEC') or die('Restricted access');
?>



<?php if (count($list)) : ?>
<ol class="mostreadmod clearfix">
	<?php foreach ($list as $item) : ?>
	<li>
		<a href="<?php echo $item->link; ?>">
			<?php echo $item->text; ?>
		</a>
	</li>
	<?php endforeach; ?>
</ol>
<?php endif;
