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

foreach( $PSHOP_SHIPPING_MODULES as $shipping_module ) {
    $vmLogger->debug( 'Starting Shipping module: '.$shipping_module );
    include_once( CLASSPATH. "shipping/".$shipping_module.".php" );
    eval( "\$SHIPPING =& new ".$shipping_module."();");
    $SHIPPING->list_rates( $vars );
    echo "<br /><br />";
}

?>