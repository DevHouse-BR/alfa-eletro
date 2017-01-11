<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)

 // no direct access
defined('_JEXEC') or die('Restricted access');

if(function_exists('plgContentLoadModule'))	{
	$plgParams = new JParameter('');
	plgContentLoadModule($item, $plgParams);
}
?>
	<?php echo $item->text; ?>
    
	<?php if (isset($item->linkOn) && $item->readmore) :
		echo '<a href="'.$item->linkOn.'">'.JText::_('Read more').'</a>';
	endif; ?>


