<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');
?>
	
    	<div class="icescroller">
        <p><?php echo $icescroller_text ?></p>
         
           
           <ul class="icescroller_buttons">
              <li class="prev"><a id="<?php echo $icescroller_prev ?>" href="javascript:void(0)" title="<?php echo JText::_("Previous");?>"></a></li> 
              <li class="next"><a id="<?php echo $icescroller_next ?>" href="javascript:void(0)" title="<?php echo JText::_("Forward");?>"></a></li>
  			</ul>
                     	
       <div id="<?php echo $icescroller_box ?>" style="width:<?php echo $icescroller_width ?>px; height:<?php echo $icescroller_height ?>px; float:left;"></div>
        
			<div class="hide">
            	<ul>
					<?php for ($i=0; $i < $items; $i++) : ?>
                    <?php $listitem = $list[$i]; ?>
                    	<li class="<?php echo $icescroller_slides ?> scrolleritem"><span><?php echo $listitem->title ?> - </span><?php modIceScrollerHelper::renderItem($listitem, $params, $access); ?></li>
                    <?php endfor; ?>
                </ul>                         
            </div>
            
           <script type="text/javascript">
                            <!--
                            window.addEvent('domready', function() {
                            var opt = {
                              slides: '<?php echo $icescroller_slides ?>',
							  buttons: {next:'<?php echo $icescroller_next ?>',prev:'<?php echo $icescroller_prev ?>'},
							  duration: <?php echo $icescroller_duration ?>,
                              delay: <?php echo $icescroller_delay ?>,
                              auto:<?php echo $icescroller_autoplay ?>,
							  direction: '<?php echo $icescroller_direction ?>',
							  transition: Fx.Transitions.<?php echo $icescroller_transition ?>,

                              onMouseEnter: function(){this.stop();},
                              onMouseLeave: function(){this.play();}
                            }
                              var scroller = new IceScroller('<?php echo $icescroller_box ?>',opt);
                            scroller.load();

                            });
                            //-->
                         </script>
                         
                        
</div>
