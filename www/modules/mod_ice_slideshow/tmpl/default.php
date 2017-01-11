<?php
//  @copyright	Copyright (C) 2008 IceTheme. All Rights Reserved
//  @license	Copyrighted Commercial Software 
//  @author     IceTheme (icetheme.com)


// no direct access
defined('_JEXEC') or die('Restricted access');
?>


<style type="text/css"> 
<?php if ($IceSlideshow_thumbnails_position == "bottom") : ?>
.slideshow {margin-bottom:<?php echo $IceSlideshow_thumbnails_height ?>px; padding-bottom:20px;}
.slideshow-captions { margin-bottom:20px}
.slideshow-thumbnails {
	top: auto;
	height:<?php echo $IceSlideshow_thumbnails_height ?>px;
	bottom:-<?php echo $IceSlideshow_thumbnails_height ?>px;
	padding-top:20px;
	left: 0;}
<?php endif; ?> 

<?php if ($IceSlideshow_thumbnails_position == "top") : ?>
.slideshow {margin-top:<?php echo $IceSlideshow_thumbnails_height ?>px; padding-top:20px;}
.slideshow-thumbnails {
	top: -<?php echo $IceSlideshow_thumbnails_height ?>px;
	left: 0;}
<?php endif; ?> 		
		
<?php if ($IceSlideshow_thumbnails_position == "right") : ?>
.slideshow {margin-right:80px; padding-right:20px;}
.slideshow-thumbnails {
	height: <?php echo $IceSlideshow_height ?>px;
	right: -<?php echo $IceSlideshow_thumbnails_width ?>px;
	left: auto;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;
	top: 0;
	padding-left:10px;}
 .slideshow-thumbnails ul {
	height: 500px;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;}    
<?php endif; ?> 

<?php if ($IceSlideshow_thumbnails_position == "left") : ?>
.slideshow { margin-left:80px; padding-left:20px;}
.slideshow-captions { margin-left:20px}
.slideshow-thumbnails {
	height: <?php echo $IceSlideshow_height ?>px;
	left: -<?php echo $IceSlideshow_thumbnails_width ?>px;
	right: auto;
	padding-right:10px;
	top: 0;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;}
 .slideshow-thumbnails ul {
	height: 500px;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;}    
<?php endif; ?> 


<?php if ($IceSlideshow_thumbnails_position == "bottom-inside") : ?>
.slideshow-thumbnails {
	bottom: 0;
	left: 10px;}
<?php endif; ?> 

<?php if ($IceSlideshow_thumbnails_position == "top-inside") : ?>
.slideshow-thumbnails {
	top: 0;
	left: 10px;}
<?php endif; ?> 		
		
<?php if ($IceSlideshow_thumbnails_position == "right-inside") : ?>
.slideshow-thumbnails {
	height: <?php echo $IceSlideshow_height ?>px;
	left: auto;
	right:10px;
	top: 0;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;
	padding-right:10px;}
 .slideshow-thumbnails ul {
	height: 500px;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;}    
<?php endif; ?> 

<?php if ($IceSlideshow_thumbnails_position == "left-inside") : ?>
.slideshow-thumbnails {
	height: <?php echo $IceSlideshow_height ?>px;
	left: 10px;
	right: auto;
	top: 0;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;
	padding-left:10px;}
 .slideshow-thumbnails ul {
	height: 500px;
	width: <?php echo $IceSlideshow_thumbnails_width ?>px;}    
<?php endif; ?> 
</style>
  
    
    
   <script type="text/javascript">		
	//<![CDATA[
	  window.addEvent('domready', function(){
	    var data = {
			
			<?php for ($i=0; $i < $items; $i++) : ?>
		  	<?php $listitem = $list[$i]; ?>
				<?php modIceSlideshowHelper::renderItem($listitem, $params, $access); ?>: { caption: '<?php echo $listitem->title ?>' },
			<?php endfor; ?>
			<?php modIceSlideshowHelper::renderItem($listitem, $params, $access); ?>: { caption: '<?php echo $listitem->title ?>' }
	    };
	    var myShow = new IceSlideShow ('<?php echo $IceSlideshow_box ?>', 
			
			data, {
					hu: '<?php echo $IceSlideshow_hu ?>',
					loader: {'animate': ['modules/mod_ice_slideshow/css/loader-#.png', 12]},
					width: <?php echo $IceSlideshow_width ?>,
					height: <?php echo $IceSlideshow_height ?>, 
					captions:<?php echo $IceSlideshow_captions ?>, 
					controller: <?php echo $IceSlideshow_controller ?>, 
					thumbnails: <?php echo $IceSlideshow_thumbnails ?>, 
					fast: <?php echo $IceSlideshow_fast ?>,
					linked: <?php echo $IceSlideshow_linked ?>,
					overlap: <?php echo $IceSlideshow_overlap ?>,
					random: <?php echo $IceSlideshow_random ?>,
					replace: [/(\.[^\.]+)$/, '$1'],
					resize: '<?php echo $IceSlideshow_resize ?>',
					center: <?php echo $IceSlideshow_center ?>,
					transition: 'back:in:out',
					slide: <?php echo $IceSlideshow_slide ?>,
					delay: <?php echo $IceSlideshow_delay ?> ,
					duration: <?php echo $IceSlideshow_duration ?> 
					
		  });
	  });
	//]]>
	</script>

  <div id="<?php echo $IceSlideshow_box ?>" class="slideshow" style="width:<?php echo $IceSlideshow_width ?>px; height:<?php echo $IceSlideshow_height ?>px">
   <img src="<?php echo $IceSlideshow_hu ?>/image1.jpg" alt="Image 1" />
  </div>
      