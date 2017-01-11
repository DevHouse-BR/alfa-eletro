<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); ?>

<hr/>
<span style="font-size:18px; font-weight:bold;"><?php echo $VM_LANG->_('PHPSHOP_RELATED_PRODUCTS_HEADING') ?></span>
 
<table width="100%" align="center">
	<tr>
    <?php 
    while( $products->next_record() ) { ?>
      	<td valign="top">
      		<?php echo $ps_product->product_snapshot( $products->f('product_sku') ) ?>
      	</td>
	<?php 
    }
	?>
    </tr>
</table> 
