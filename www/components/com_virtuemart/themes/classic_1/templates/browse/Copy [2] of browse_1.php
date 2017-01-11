<div class="browseProductContainer" style="line-height:26px;height:26px;z-index:0;background-color:#F4F4F4;margin-bottom:2px;cursor:pointer;" onmouseover="this.style.backgroundColor = '#D2D2EE';" onmouseout="this.style.backgroundColor = '#F4F4F4';">
	<div style="float:left;width:15%;line-height:26px;padding-left:5px;padding-right:5px;">
		<?=$ref?>
	</div>
	<div style="float:left;width:45%;line-height:26px;padding-left:5px;padding-right:5px;">
		<a title="<?php echo $product_name ?>" href="#" onclick="servOC('<?=$ref?>','<?php echo $product_flypage ?>&template=ja_purity','');">
            <?php echo $product_name ?>
		</a>
	</div>
	<div style="float:left;width:22%;line-height:26px; height:26px;padding-left:5px;padding-right:5px;">
		<?php echo $form_addtocart ?>
	</div>
</div>
<div id="ihtr<?=$ref?>" style="display:none;background-color:#ECECD9;border:3px solid #003366">
	<iframe frameborder="0" width="100%" id="ihif<?=$ref?>"></iframe>
</div>