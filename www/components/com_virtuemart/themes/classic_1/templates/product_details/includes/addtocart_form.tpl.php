<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 

$button_lbl = "Adicionar ao carrinho"; //$VM_LANG->_('PHPSHOP_CART_ADD_TO');
$button_cls = 'addtocart_button';
if( CHECK_STOCK == '1' && !$product_in_stock ) {
	$button_lbl = $VM_LANG->_('VM_CART_NOTIFY');
	$button_cls = 'notify_button';
}
?>
<form action="<?php echo $mm_action_url ?>index.php" method="post" name="addtocart" id="addtocart<?php echo $i ?>" class="addtocart_form" <?php if( $this->get_cfg( 'useAjaxCartActions', 1 )) { echo 'onsubmit="handleAddToCart( this.id );return false;"'; } ?>>
<table width="110" cellpadding="0" cellspacing="0" style="padding:0px 0px 0px 0px !important; margin:0px 0px 0px 0px !important;">
	<tr>
		<td width="80" style="padding:1px 1px 1px 1px !important; margin:0px 0px 0px 0px !important;">
			<?php echo $ps_product_attribute->show_quantity_box($product_id,$product_id); ?>
		</td>
		<td align="center" style="padding:1px 1px 1px 1px !important; margin:0px 0px 0px 0px !important;" width="30">
			<input type="submit" class="<?php echo $button_cls ?>" value="" title="<?php echo $button_lbl ?>" style="margin:0px 0px 0px 0px !important;width:30px;" />
		</td>
	</tr>
</table>
<input type="hidden" name="category_id" value="<?php echo  @$_REQUEST['category_id'] ?>" />
<input type="hidden" name="product_id" value="<?php echo $product_id ?>" />
<input type="hidden" name="prod_id[]" value="<?php echo $product_id ?>" />
<input type="hidden" name="page" value="shop.cart" />
<input type="hidden" name="func" value="cartadd" />
<input type="hidden" name="Itemid" value="<?php echo $sess->getShopItemid() ?>" />
<input type="hidden" name="option" value="com_virtuemart" />
<input type="hidden" name="set_price[]" value="" />
<input type="hidden" name="adjust_price[]" value="" />
<input type="hidden" name="master_product[]" value="" />
</form>