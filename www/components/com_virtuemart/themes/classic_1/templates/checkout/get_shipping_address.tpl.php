<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/*------------------------------------------------------------------------
# JD Funky Theme for VirtueMart 1.1.x - March, 2009
# ------------------------------------------------------------------------
# Copyright (C) 2009-2013 JoomlaDump.com, Ltd. All Rights Reserved.
# @license - Copyrighted Commercial Software
# Author: JoomlaDump.com
# Websites:  http://www.joomladump.com
-------------------------------------------------------------------------*/

ps_checkout::show_checkout_bar();

echo $basket_html;
   
echo '<br />';

// CHECK_OUT_GET_SHIPPING_ADDR
// let the user choose a shipto address
echo ps_checkout::display_address();

$varname = 'PHPSHOP_CHECKOUT_MSG_' . CHECK_OUT_GET_SHIPPING_ADDR;
echo '<h4>'. $VM_LANG->_($varname) . '</h4>';
?>

<!-- Customer Ship To -->
<table border="0" cellspacing="0" cellpadding="2" width="100%">
    <tr class="sectiontableheader">
        <th align="left" colspan="2"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_CUST_SHIPPING_LBL') ?> :
        </th>
    </tr>
    <tr>
        <td colspan="2">
        <?php echo $VM_LANG->_('PHPSHOP_ADD_SHIPTO_1') ?>
        <a href="<?php $sess->purl(SECUREURL .basename($_SERVER['PHP_SELF']). "?page=account.shipto&next_page=checkout.index");?>">
        <?php echo $VM_LANG->_('PHPSHOP_ADD_SHIPTO_2') ?></a>.
        </td>
    </tr>
    <tr>
        <td colspan="2"><!--ship_to_info_id-->
        <?php $ps_checkout->ship_to_addresses_radio($auth["user_id"], "ship_to_info_id", $ship_to_info_id);
        ?>
        </td>
    </tr>
</table>
<!-- END Customer Ship To -->
<br />
