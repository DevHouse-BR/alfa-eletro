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
<table border="0" width="100%" cellpadding="2" cellspacing="0">
	<tr class="sectiontableentry1">
		<td>
		<?php
		$checked = '';
		if( $bt_user_info_id == $value || empty($value)) {
			$checked = 'checked="checked" ';
		}
		if( $db->num_rows() > 0 ) {
			$checked .= 'onchange="document.adminForm.submit();" ';
		}
		echo '<input type="radio" name="'.$name.'" id="'.$bt_user_info_id.'" value="'.$bt_user_info_id.'" '.$checked.'/>'."\n";
	
		?></td>
		<td><label for="<?php echo $bt_user_info_id ?>"><?php echo $VM_LANG->_('PHPSHOP_ACC_BILL_DEF') ?></label></td>
	</tr>
<?php
$i = 2;
while($db->next_record()) {
	echo '<tr class="sectiontableentry'.$i.'">'."\n";
	echo '<td width="5%">'."\n";
	$checked = '';
	if ( $value == $db->f("user_info_id")) {
		$checked = 'checked="checked" ';
	}
	echo '<input type="radio" name="'.$name.'" id="' . $db->f("user_info_id") . '" value="' . $db->f("user_info_id") . '" '.$checked.' onchange="document.adminForm.submit();" />'."\n";
	
	echo '</td>'."\n";
	echo '<td>'."\n";
	echo '<label for="'.$db->f("user_info_id") . '">';
			
	echo '<strong>' . $db->f("address_type_name") . "</strong> ";
	$url = SECUREURL . "index.php?page=account.shipto&user_info_id=" . $db->f('user_info_id')."&next_page=checkout.index";
	echo '(<a href="'.$sess->url($url).'">'.$VM_LANG->_('PHPSHOP_UDATE_ADDRESS').'</a>)'."\n";
	echo '<br />'."\n";
	echo $db->f("title") . " ". $db->f("first_name") . " ". $db->f("middle_name") . " ". $db->f("last_name") . "\n";
	echo '<br />'."\n";
	if ($db->f("company")) {
		echo $db->f("company") . "<br />\n";
	}
	echo $db->f("address_1") . "\n";
	if ($db->f("address_2")) {
		echo '<br />'. $db->f("address_2"). "\n";
	}
	echo '<br />'."\n";
	echo $db->f("city");
	echo ', ';
	// for state, can be used: state_name, state_2_code, state_3_code
	echo $db->f("state_2_code") . " ";
	echo $db->f("zip") . "<br />\n";
	// for country, can be used: country_name, country_2_code, country_3_code
	// (not displayed in default template)
	echo $VM_LANG->_('PHPSHOP_CHECKOUT_CONF_PHONE').': '. $db->f("phone_1") . "\n";
	echo '<br />'."\n";
	echo $VM_LANG->_('PHPSHOP_CHECKOUT_CONF_FAX').': '.$db->f("fax") . "\n";
	echo '</label>
	</td>
	</tr>'."\n";
	if($i == 1) $i++;
	elseif($i == 2) $i--;
}

echo '</td>'."\n";
echo '</tr>'."\n";
echo '</table>'."\n";
