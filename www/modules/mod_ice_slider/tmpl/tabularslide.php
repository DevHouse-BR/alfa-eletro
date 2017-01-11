<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');
?>


	 <div class="iceslider_tabularslide">
                            	
             
      <div class="iceslider_tabularslide_content" style="width:<?php echo $iceslider_width ?>px; height:<?php echo $iceslider_height ?>px">
        	<div id="<?php echo $iceslider_box ?>" class="iceslider_tabularslide_box">
                                    	
            	
               	<?php for ($i=0; $i < $items; $i++) : ?>
				<?php $listitem = $list[$i]; ?>
                <div  style="width:<?php echo $iceslider_width ?>px; height:<?php echo $iceslider_height ?>px"><?php modIceSliderHelper::renderItem($listitem, $params, $access); ?></div>
                <?php endfor; ?>
                                         
            </div>   
       </div>
       
       
       <div class="controlarea" style="width:<?php echo $iceslider_width ?>px;">  
          <ul class="slidingbuttons" >
                <li id="<?php echo $iceslider_previous ?>" class="carouselslider_prev"><span>Previous</span></li>
                <li id="<?php echo $iceslider_next ?>" class="carouselslider_next"><span>Next</span></li>
                <li id="<?php echo $iceslider_stop ?>" class="carouselslider_stop"><span>Stop</span></li>
                <li id="<?php echo $iceslider_play ?>" class="carouselslider_play"><span>Play</span></li>
            </ul>
            
             <ul id="<?php echo $iceslider_handels ?>" class="slidingul">
             <?php for ($i=0; $i < $items; $i++) : ?>
                <?php $listitem = $list[$i]; ?>
                    <li><span><?php echo $listitem->title ?></span></li>
                    
             <?php endfor; ?>
     		 </ul>
      </div> 
    
       
    </div>
    
                                   
 <script type="text/javascript">
		window.addEvent('domready',function(){
		var <?php echo $iceslider_hs ?> = new  IceSlider({
			box: $('<?php echo $iceslider_box ?>'),
			autoPlay: <?php echo $iceslider_autoplay ?>,
			items: $$('#<?php echo $iceslider_box ?> div'),
			size: <?php echo $iceslider_width ?>, 
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
			},
			
			handles: $$('#<?php echo $iceslider_handels ?> li'),
			
			handle_event: '<?php echo $iceslider_animation_event ?>',
			onWalk: function(currentItem,currentHandle){
				this.handles.removeClass('active');
				currentHandle.addClass('active');	
			}

		});

	});
</script>




