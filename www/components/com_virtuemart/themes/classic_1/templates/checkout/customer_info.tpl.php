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
?>
<!-- Customer Information --> 
    <table border="0" cellspacing="0" cellpadding="2" width="100%">
        <tr class="sectiontableheader">
            <th colspan="2" align="left"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_CUST_BILLING_LBL') ?></th>
        </tr>
        <tr>
           <td nowrap="nowrap" width="10%" align="right"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_COMPANY') ?>: </td>
           <td width="90%">
           <?php
             $db->p("company");
           ?>
           </td>
        </tr>
        <tr>
           <td nowrap="nowrap" width="10%" align="right"><?php echo $VM_LANG->_('PHPSHOP_SHOPPER_LIST_NAME') ?>: </td>
           <td width="90%"><?php
             echo $db->f("first_name"). " " . $db->f("middle_name") ." " . $db->f("last_name"); ?>
           </td>
        </tr>
        <tr>
           <td nowrap="nowrap" width="10%" align="right"><?php echo $VM_LANG->_('PHPSHOP_ADDRESS') ?>: </td>
           <td width="90%">
           <?php
             $db->p("address_1");
             echo "<br />";
             $db->p("address_2");
           ?>
           </td>
        </tr>
        <tr>
           <td nowrap="nowrap" width="10%" align="right">&nbsp;</td>
           <td width="90%">
           <?php
             $db->p("city");
             echo ", ";
             // for state, can be used: state_name, state_2_code, state_3_code
             $db->p("state_2_code");
             echo " ";
             $db->p("zip");
             echo "<br /> ";
             // for country, can be used: country_name, country_2_code, country_3_code
             $db->p("country_name");
           ?>
           </td>
        </tr>
        <tr>
           <td nowrap="nowrap" width="10%" align="right"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_PHONE') ?>: </td>
           <td width="90%">
           <?php
             $db->p("phone_1");
           ?>
           </td>
        </tr>
        <tr>
           <td nowrap="nowrap"width="10%" align="right"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_FAX') ?>: </td>
           <td width="90%">
           <?php
             $db->p("fax");
           ?>
           </td>
        </tr>
        <tr>
           <td nowrap="nowrap" width="10%" align="right"><?php echo $VM_LANG->_('PHPSHOP_ORDER_PRINT_EMAIL') ?>: </td>
           <td width="90%">
           <?php
             $db->p("user_email");
           ?>
           </td>
        </tr>
        <tr><td align="center" colspan="2"><a href="<?php $sess->purl( SECUREURL ."index.php?page=account.billing&next_page=$page"); ?>">
            (<?php echo $VM_LANG->_('PHPSHOP_UDATE_ADDRESS') ?>)</a>
            </td>
        </tr>
    </table>
    <!-- customer information ends -->
    <br />
