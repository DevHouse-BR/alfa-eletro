<?php
// $Id: confirmation_email.tpl.php 1308 2008-03-11 08:15:58Z thepisu $
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 

?>
<html>
<head>
<title><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_PO_LBL') ?></title>
<style type="text/css">
<!--
.Stil1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.Stil2 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
</head>
<body>

<table width="100%" align="center" border="0" cellspacing="0" cellpadding="10">
  <tr valign="top"> 
    <td width=53% align="left" class="Stil1"><?php echo ps_vendor::formatted_store_address(true) ?></td>
    <td width="47%" align="right"><img src="cid:vendor_image" alt="vendor_image" border="0" /></td>
  </tr>
  <tr>
      <td colspan="2" class="Stil1"><?php echo $order_header_msg ?></td>
  </tr>    
  <tr bgcolor="white"> 
    <td colspan="2">
      <h3 class="Stil2"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_PO_LBL') ?></h3>
    </td>
  </tr>
</table>
 
<table border=0 cellspacing=0 cellpadding=2 width=100%>
  <!-- begin customer information --> 
  <tr bgcolor="#CCCCCC" class="sectiontableheader"> 
    <td colspan="2" class="Stil2"><b><?php echo $VM_LANG->_('PHPSHOP_ACC_ORDER_INFO') ?></b></td>
  </tr>
  <tr class="Stil1"> 
    <td><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_PO_NUMBER')?>:</td><td><?php echo $order_id ?></td>
  </tr>
   
  <tr class="Stil1"> 
    <td><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_PO_DATE') ?>:</td><td><?php echo $order_date ?></td>
  </tr>
  <tr class="Stil1"> 
    <td><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_PO_STATUS') ?>:</td><td><?php echo $order_status ?></td>
  </tr>
  <!-- end customer information --> 
  <!-- begin 2 column bill-ship to --> 
  <tr class="sectiontableheader">
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr bgcolor="#CCCCCC" class="sectiontableheader"> 
    <td colspan="2"><b class="Stil2"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_CUST_INFO_LBL') ?></b></td>
  </tr>
  <tr valign=top> 
    <td width=50%> <!-- begin billto -->  
      <table width=100% cellspacing=0 cellpadding=2 border=0>
      <?php
      foreach( $registrationfields as $field ) {
			if( $field->name == 'email') $field->name = 'user_email';
			if( $field->name == 'delimiter_sendregistration') continue;
			if( $field->type == 'captcha') continue;
			if( $field->name == 'title') continue;
			if( $field->name == 'last_name') continue;
			if( $field->name == 'middle_name') continue;
			if( $field->name == 'company') continue;
			if( $field->name == 'address_2') continue;
			if( $field->name == 'fax') continue;
			if( $field->name == 'address_1') continue;
			if( $field->name == 'zip') continue;
			if( $field->name == 'phone_2') continue;

			
      		if( $field->type == 'delimiter') { ?>

	        <?php 
			} else { ?>
	        <tr class="Stil1"> 
	          <td><?php echo $VM_LANG->_($field->title) ? $VM_LANG->_($field->title) : $field->title ?>:</td>
	          <td><?php
	          switch($field->name) {
	          	case 'country':
	          		require_once(CLASSPATH.'ps_country.php');
	          		$country = new ps_country();
                    $dbc = $country->get_country_by_code($dbbt->f($field->name));
	          		if( $dbc !== false ) echo $dbc->f('country_name');
	          		break;
	          	default: 
	          		echo $dbbt->f($field->name);
	          		break;
	          }
	           ?></td>
	        </tr>
	       <?php 
			} ?>
			<?php
		} 
		?>
      </table>
      <!-- end billto --> 
    </td>
    
      <!-- end customer information --> </td>
  </tr>
  <tr> 
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr> 
    <td colspan="2"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="1">
         
      </table>
    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <!-- begin order items information --> 
  <tr bgcolor="#CCCCCC" class="Stil2"> 
    <td colspan="2"><b><?php echo $VM_LANG->_('PHPSHOP_ORDER_ITEM') ?></b></td>
  </tr>
  <tr> 
    <td colspan="2"> 
      <table width=100% cellspacing=0 cellpadding=2 border=0>
        <tr align=left class="Stil1">
			<th><?php echo $VM_LANG->_('PHPSHOP_CART_QUANTITY') ?></th>
	        <th><?php echo $VM_LANG->_('PHPSHOP_CART_NAME') ?></th>
	        <th><?php echo $VM_LANG->_('PHPSHOP_CART_SKU') ?></th>
        </tr>
<?php
// CREATE THE LIST WITH ALL ORDER ITEMS
$order_items = "";
$sub_total = 0.00;
while($dboi->next_record()) {
	$my_qty = $dboi->f("product_quantity");
	if ($auth["show_price_including_tax"] == 1) {
		$price = $dboi->f("product_final_price");
		$my_price = $CURRENCY_DISPLAY->getFullValue($dboi->f("product_final_price"), '', $db->f('order_currency'));
	} else {
		$price = $dboi->f("product_item_price");
		$my_price = $CURRENCY_DISPLAY->getFullValue($dboi->f("product_item_price"), '', $db->f('order_currency'));
	}
	$my_subtotal = $my_qty * $price;
	$sub_total += $my_subtotal;
	?>
	<tr class="Stil1">
		<td><?php echo $my_qty ?></td>
		<td><?php $dboi->p("product_name")?> <?php echo ($dboi->f("product_attribute") ? ' ('.$dboi->f("product_attribute").')' : ''); ?></td>
		<td><?php echo $ps_product->get_field($dboi->f("product_id"), "product_sku") ?></td>
	</tr>
	<?php
}
?> 
        <tr class="Stil1"> 
          <td colspan=4 align=right>&nbsp;&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
       
      </table>
    </td>
  </tr>
  <!-- end order items information --> 
  <!-- begin customer note -->
  <tr class="sectiontableheader">
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr bgcolor="#CCCCCC" class="sectiontableheader">
    <td colspan="2"><b class="Stil2"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_CUSTOMER_NOTE') ?>:</b></td>
  </tr>
  <tr>
    <td colspan="2">
        <?php echo $customer_note ?>
    </td>

  </tr>
  <tr class="sectiontableheader">
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
<br>
<p class="Stil2"></p>
<p class="Stil2">
<?php
// EMAIL FOOTER MESSAGE 
if( $is_email_to_shopper ) {
		
	$footer_html = "<br /><br />".$VM_LANG->_('PHPSHOP_CHECKOUT_EMAIL_SHOPPER_HEADER2')."<br />";
	//$footer_html .= "<br /><a title=\"".$VM_LANG->_('PHPSHOP_CHECKOUT_EMAIL_SHOPPER_HEADER5')."\" href=\"$order_link\">"
	//. $VM_LANG->_('PHPSHOP_CHECKOUT_EMAIL_SHOPPER_HEADER5')."</a>";
	$footer_html .= "<br /><br />".$VM_LANG->_('PHPSHOP_CHECKOUT_EMAIL_SHOPPER_HEADER3')."<br />";
	$footer_html .= $VM_LANG->_('CMN_EMAIL').": <a href=\"mailto:" . $from_email."\">".$from_email."</a>";
	// New in version 1.0.5
	if( @VM_ONCHECKOUT_SHOW_LEGALINFO == '1' && !empty( $legal_info_title )) {
		$footer_html .= "<br /><br />____________________________________________<br />";
		$footer_html .= '<h5>'.$legal_info_title.'</h5>';
		$footer_html .= $legal_info_html.'<br />';
	}
} else {
	$footer_html = '<br /><br /><a title="'.$VM_LANG->_('PHPSHOP_CHECKOUT_EMAIL_SHOPPER_HEADER5').'" href="'.$order_link.'">'
		. $VM_LANG->_('PHPSHOP_CHECKOUT_EMAIL_SHOPPER_HEADER5').'</a>';
}
echo $footer_html;
?>
</p>
</body>
</html>
