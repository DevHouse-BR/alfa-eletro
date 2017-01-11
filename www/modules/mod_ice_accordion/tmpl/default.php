<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');
?>

<div class="iceaccordion">
	
		
		<?php for ($i=0; $i < $items; $i++) : ?>
        <?php $listitem = $list[$i]; ?>
        	<h4 class="toggler <?php echo $iceaccordion_toggler ?>"><?php echo $listitem->title ?></h4>
				<div class="accordion_content <?php echo $iceaccordion_content ?>">
					<?php modIceAccHelper::renderItem($listitem, $params, $access); ?>
                </div>
        <?php endfor; ?>
            
</div>


<style type="text/css">
.iceaccordion h4.toggler { color:#<?php echo $iceaccordion_inactivecolor ?>;}
.iceaccordion h4.open { color:#<?php echo $iceaccordion_activecolor ?>;}
</style>