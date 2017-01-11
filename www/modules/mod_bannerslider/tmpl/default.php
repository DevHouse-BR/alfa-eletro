<?php
defined('_JEXEC') or die('Restricted access');

if (count($data) > 0)
{
	$slide_id = uniqid('mbs') ;
	$windowtarget = ($conf['window'] == 1) ? ' target="_blank"' : '';
	
	if ($conf['center'] == 1)
	{
		$center1 = ' style="text-align:center;line-height:'.$conf['height'].'px"';		// need inline style because of your Site' style overwritten 
		$center2 = ' style="vertical-align:middle"';
	}
	else
	{
		$center1 = $center2 = '';
	}
?>
	<div id="<?php echo $slide_id; ?>" class="mod_bannerslider" style="width:<?php echo $conf['width']; ?>px;height:<?php echo $conf['height']; ?>px">
		<div class="bs_opacitylayer">
		<?php
		foreach($data as $value)
		{
			if ( !empty($value->imageurl) && ($conf['type'] == 1 || $conf['type'] == 3) )		// Banner Images
			{
				echo '<div class="bs_contentdiv"'.$center1.'><a href="index.php?option=com_banners&task=click&bid='.$value->bid.'"'.$windowtarget.'>'
					.'<img src="images/banners/'.$value->imageurl.'" alt="'.modBannerSliderHelper::htmlsafe($value->description).'"'.$center2.' /></a></div>'."\n";
			}
			else if ( !empty($value->custombannercode) && ($conf['type'] == 2 || $conf['type'] == 3) )	// Banner Custom Code
			{
				echo '<div class="bs_contentdiv">'.$value->custombannercode.'</div>'."\n";
			}
		}
		?>
		</div>
	</div>
	<script type="text/javascript">
		new ContentSlider("<?php echo $slide_id . '", "' . $conf['effect'] . '", ' . $conf['delay'] . ', ' . $conf['random'] . ', ' . $conf['resize'] ?>);
	</script>
<?php
}
?>