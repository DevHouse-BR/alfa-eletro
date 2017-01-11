<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');
?>

			<div class="iceslider_imageslide">
            		
                    <div class="icemodule">
                    	<div><div><div><div>
                        
                        	<div class="iceslider_imageslide_content" style="width:<?php echo $iceslider_width ?>px; height:<?php echo $iceslider_height ?>px">
                            
                            	<div id="<?php echo $iceslider_box ?>" class="iceslider_imageslide_box">
                                
                                	<ol>
									<?php for ($i=0; $i < $items; $i++) : ?>
										<?php $listitem = $list[$i]; ?>
                                        <li><?php modIceSliderHelper::renderItem($listitem, $params, $access); ?></li>
                           			<?php endfor; ?>
                                    </ol> 
                                       
                            	</div>
                                
                            </div>
           <?php if ($iceslider_showbuttons) : ?>                     
            <ul>
               <li id="<?php echo $iceslider_previous ?>" class="imageslide_prev"><span><?php echo JText::_("&laquo; Previous");?></span></li>
               <li id="<?php echo $iceslider_next ?>" class="imageslide_next"><span><?php echo JText::_("&laquo; Next");?></span></li>
               <li id="<?php echo $iceslider_stop ?>" class="imageslide_stop"><span><?php echo JText::_("&laquo; Stop");?></span></li>
               <li id="<?php echo $iceslider_play ?>" class="imageslide_play"><span><?php echo JText::_("&laquo; Play");?></span></li>
            </ul>	
             <?php endif; ?>
                                 
                        </div></div></div></div>
                     </div>  	
                     			
                </div>
                
<script type="text/javascript">
window.addEvent('domready',function(){
		var <?php echo $iceslider_hs ?> = new IceSlider({
			box: $('<?php echo $iceslider_box ?>'),
			items: [<?php echo $iceslider_slidesnr ?>], 
			size: <?php echo $iceslider_width ?>,
			addButtons: {
				stop: $('<?php echo $iceslider_stop ?>'),
				play: $('<?php echo $iceslider_play ?>'),
				previous: $('<?php echo $iceslider_previous ?>'),
				next: $('<?php echo $iceslider_next ?>')
			},
			interval: <?php echo $iceslider_animation_interval ?>,
			fxOptions: {
				duration: <?php echo $iceslider_animation_duration ?>,
				transition: Fx.Transitions.<?php echo $iceslider_animation_transition ?>,
				wait: false
			}

		});

	});
</script>

