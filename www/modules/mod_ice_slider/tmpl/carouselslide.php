<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');
?>

	 <div class="iceslider_carouselslide" style="width:<?php echo $iceslider_width ?>px;">
     
      <div class="iceslider_carouselslide_buttons">
           <h4><?php echo $iceslider_text ?></h4>
           
            <ul class="slidingbuttons" >
                <li id="<?php echo $iceslider_previous ?>" class="carouselslider_prev"><span>Previous</span></li>
                <li id="<?php echo $iceslider_next ?>" class="carouselslider_next"><span>Next</span></li>
                <li id="<?php echo $iceslider_stop ?>" class="carouselslider_stop"><span>Stop</span></li>
                <li id="<?php echo $iceslider_play ?>" class="carouselslider_play"><span>Play</span></li>
            </ul>
		</div>
        
        
                              	
      <div class="iceslider_carouselslide_content"  style="width:<?php echo $iceslider_width ?>px; height:<?php echo $iceslider_height ?>px">
        	<div id="<?php echo $iceslider_box ?>" class="iceslider_carouselslide_box">
                                    	
            	
               	<?php for ($i=0; $i < $items; $i++) : ?>
				<?php $listitem = $list[$i]; ?>
                <div class="iceslider_carouselslide_item" style="width:<?php echo $iceslider_item_width ?>px; height:<?php echo $iceslider_height ?>px">
                	<div class="icemodule">
                    <div><div><div><div>
                    <div class="icemodule_fix">
                    <h4>
                    <span class="icemodule_header_r">
                    <span class="icemodule_header_l">
                    <span class="icemodule_header_arrow">
								
                               <a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($listitem->id)); ?>"><?php echo $listitem->title ?></a>
                                                         
                     </span>
                     </span>
                     </span>  
                     </h4>
					<div class="clearfix" style="text-align:left">
                    <?php modIceSliderHelper::renderItem($listitem, $params, $access); ?>
                    </div>
                    </div>
                    </div>
                    </div></div></div></div>
                </div>
                <?php endfor; ?>
                                         
            </div>   
       </div>
       
          
      
      
        
    </div>
    
   <script type="text/javascript">
		window.addEvent('domready',function(){
		var <?php echo $iceslider_hs ?> = new  IceSlider({
			box: $('<?php echo $iceslider_box ?>'),
			autoPlay: <?php echo $iceslider_autoplay ?>,
			items: [<?php echo $iceslider_slidesnr ?>], 
			size: <?php echo $iceslider_item_width ?>, 
			interval: <?php echo $iceslider_animation_interval ?>,
			fxOptions: {
				duration: <?php echo $iceslider_animation_duration ?>,
				transition: Fx.Transitions.<?php echo $iceslider_animation_transition ?>,
				wait: false
			},
			addButtons: {
				previous: $('<?php echo $iceslider_previous ?>'),
				play: $('<?php echo $iceslider_play ?>'),
				stop: $('<?php echo $iceslider_stop ?>'),
				next: $('<?php echo $iceslider_next ?>')
			}

		});

	});
</script>



