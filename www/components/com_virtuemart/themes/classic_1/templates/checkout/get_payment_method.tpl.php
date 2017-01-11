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

$varname = 'PHPSHOP_CHECKOUT_MSG_' . CHECK_OUT_GET_PAYMENT_METHOD;
echo '<h4>'. $VM_LANG->_($varname) . '</h4>';

echo ps_checkout::list_payment_methods( $payment_method_id );
?>