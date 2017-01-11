<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );

if($empty_cart) { ?>
    
    <div style="margin: 0 auto;">
    <?php if(!$vmMinicart) { ?>
		<br />
		<center><img src="images/carrinho.png" /></center>
    <?php }
    echo $VM_LANG->_('PHPSHOP_EMPTY_CART') ?>
    </div>
<?php } 
else {
    // Loop through each row and build the table
    foreach( $minicart as $cart ) { 		

		foreach( $cart as $attr => $val ) {
			// Using this we make all the variables available in the template
			// translated example: $this->set( 'product_name', $product_name );
			$this->set( $attr, $val );
		}
        if(!$vmMinicart) { // Build Minicart
			if(strlen($cart['product_url'])>0) $nome_produto = $cart['product_url'];
			else $nome_produto = '<span style="color:red;font-weight:bold;">Sem Abrevia&ccedil;&atilde;o!</span>';
            ?>
            <div style="float: left; width:148px;">
            <a href="<?php echo $cart['url'] ?>"><?php echo $nome_produto ?></a>
            </div>
			<div style="float:left; text-align:right">x&nbsp;<?php echo $cart['quantity'] ?></div>
            <div style="float: right;">		
				<form action="index.php" method="post" name="delete" style="display: inline;" id="remForm<?=$cart['product_id']?>" onsubmit="handleRemoveFromCart( this.id ); return false;">
					<input type="hidden" name="option" value="com_virtuemart" />
					<input type="hidden" name="page" value="shop.browse" />
					<input type="hidden" name="Itemid" value="<?=$sess->getShopItemid()?>" />
					<input type="hidden" name="func" value="cartDelete" />
					<input type="hidden" name="product_id" value="<?=$cart['product_id']?>" />
					<input type="hidden" name="description" value="" />
					<input type="image" width="16" height="16" name="delete" title="<?=$VM_LANG->_('PHPSHOP_CART_DELETE') .'" src="'. VM_THEMEURL .'images/remove_from_cart.png" alt="'. $VM_LANG->_('PHPSHOP_CART_DELETE')?>" align="middle" />
				 </form>
            </div>
            <br style="clear: both;" />
            <?php echo $cart['attributes'];
        }
    }
}
if(!$vmMinicart) { ?>
    <hr style="clear: both;" />
<?php } ?>
<div style="float: left;" >
<?php echo $total_products ?>
</div>
<div style="float: right;">
<?php //echo $total_price ?>
</div>
<?php if (!$empty_cart && !$vmMinicart) { ?>
    <br/><br style="clear:both" /><div align="center">
    <?php //echo $show_cart ?>
	<a href="javascript: abreFormEnvio('<?=JUtility::getToken()?>');">Enviar Or&ccedil;amento</a>
    </div><br/>
<?php } 
//echo $saved_cart;
?>