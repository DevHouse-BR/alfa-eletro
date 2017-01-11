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
<?php
// CSS style for the <td> tag of the cell which is actually highlighted
$highlighted_style = 'style="font-weight: bold;"';

echo '
<table style="background: url( '. VM_THEMEURL .'images/checkout/checkout'. $step_count.'_'.min( count($steps_to_do), $highlighted_step ) .'.png ) top right; background-repeat: no-repeat; height:115px;text-align:center;" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>';

foreach ($steps_to_do as $step ) {

	echo '<td '.(($highlighted_step==$step[0]['step_order']) ? $highlighted_style : '') .' width="119" align="center" valign="bottom">';
	if ($highlighted_step > $step[0]['step_order'] ) {
		echo '<a href="'. $sess->url(SECUREURL."index.php?page=checkout.index&amp;option=com_virtuemart&amp;ship_to_info_id=$ship_to_info_id&amp;shipping_rate_id=".@$shipping_rate_id."&amp;checkout_stage=".$step[0]['step_order'] ).'">';
		foreach( $step as $substep ) {
			echo $substep['step_msg'].'<br />';
		}
		echo '</a>';
	}
	else {
		foreach( $step as $substep ) {
			if( $substep['step_order'] > $highlighted_step ) {
				echo $substep['step_msg'];
			} else {
				echo '<a href="#'.$substep['step_name'].'">'.$substep['step_msg'].'</a>';
			}
			echo '<br />';
		}
	}
	echo '</td>';
}
echo '
  </tr>
</table>
<br />';
