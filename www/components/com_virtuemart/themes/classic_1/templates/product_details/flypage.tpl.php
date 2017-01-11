<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); ?>
<div style="padding:5px;">
	<? if($_GET["template"] != "ja_purity") //echo "<div class=\"pathway\">$navigation_pathway</div>"; ?>
	<div style="width:116px; float:left;text-align:center;vertical-align:middle;">
		<?php echo $product_image ?>
		<?php echo $this->vmlistAdditionalImages( $product_id, $images ) ?>
	</div>
	<span style="font-size:18px; font-weight:bold;"><?php echo $product_name ?></span><br/><br/>
	
	<?php echo $product_description ?><br/>
	<? if($_GET["template"] != "ja_purity") { ?>
		Adicionar ao carrinho:<?php echo $addtocart ?><br />
	<? } ?>
	<? if (strlen($file_list)>0){ ?>
		<div><img src="images/M_images/pdf_button.png" align="left" /><span style="font-style: italic;"><?php echo $file_list ?></span></div><br/>
	<? } ?>
	<div style="clear:both;margin:6px;padding-top:10px;padding-bottom:10px;"><?php echo $ask_seller ?></div>
	<? if (strlen($product_type)>0){ ?>
		<?php echo $product_type ?><br/>
	<? } ?>
	<?php //echo $product_reviews ?>
	<?php //echo $product_reviewform ?>
	<?php echo $related_products ?>
</div>