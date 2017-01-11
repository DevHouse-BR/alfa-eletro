<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 
/** This template is used for the quantity box arrangement of products, within the add-to-cart form */ 

extract( $quantity_options );

$html = '';
if(!$child && $display_type != 'hide') {
	$html = '<table cellpadding="0" cellspacing="0" width="80" border="0" style="padding:0px 0px 0px 0px !important; margin:0px 0px 0px 0px !important;">
				<tr>
					<td rowspan="2" style="margin:0px 0px 0px 0px;padding:0px 0px 0px 0px; height:18px;" height="18" width="63" valign="middle">
						<label for="quantity'.$prod_id.'" class="quantity_box">'.$VM_LANG->_('PHPSHOP_CART_QUANTITY').':&nbsp;</label>';
}
switch($display_type) {
	case "radio" : //Radio Box
		$html .= '<input type="hidden" id="quantity'.$prod_id.'" name="quantity[]" value="'.$quantity.'" />';
		$html .= '<input type="radio" class="quantitycheckbox" id="selItem'.$prod_id.'" name="selItem" value="0" ';
		if ($quantity > 0 ) {
			$html .= 'checked="checked" ';
		}
		$html .= 'onclick="alterQuantity(this.form)" />';
		break;
	case "hide" : // Hide box - but set quantity to 1!
		$html .= '<input type="hidden" id="quantity'.$prod_id.'" name="quantity[]" value="1" />';
		break;
	case "check" :
		$html .= '<input type="hidden" id="quantity'.$prod_id.'" name="quantity[]" value="'.$quantity.'" style="vertical-align: middle;"/>
		<input type="checkbox" class="quantitycheckbox" id ="selItem'.$id.'" name="check[]" ';
		if ($quantity > 0 ) {
			$html .= 'checked="checked"';
		}
		$html .= ' value="1" onclick="javascript: if(this.checked==true) document.getElementById(\'quantity'.$prod_id.'\').value = 1; else {document.getElementById(\'quantity'.$prod_id.'\').value=0;} "/> ';
		break;
	case "drop" :
		$code = '<select class="inputboxquantity" id="quantity'.$prod_id.'" name="quantity[]">';
		for($i=$quantity_start;$i<$quantity_end+1;$i += $quantity_step) {
			$code .= '  <option value="'.$i.'"';
			if ($i == $quantity) {
				$code .= ' selected="selected"';
			}
			$code .= '>'.$i."</option>\n";
		}
		$code .= "</select>\n";
		$html .= $code;
		break;
	case "none" :
	default:
		$html .= '				<input type="text" title="Quantidade do Produto" class="inputboxquantity" style="margin:0px 0px 0px 0px;" id="quantity'.$prod_id.'" name="quantity[]" value="'.$quantity.'" />
							</td>
							<td style="margin:0px 0px 0px 0px;padding:0px 0px 0px 2px;width:13px;" height="9" width="13">
								<div style="cursor:pointer;width:13px; height:9px; border:solid 1px gray; background-color: #eeeeee; background-image:url(/components/com_virtuemart/themes/classic_1/images/up_small.png);background-repeat: no-repeat; background-position: center;" onclick="var qty_el = document.getElementById(\'quantity'.$prod_id.'\'); var qty = qty_el.value; if( !isNaN( qty )) qty_el.value++;return false;"></div>
							</td>
						</tr>
						<tr>
							<td style="margin:0px 0px 0px 0px;padding:0px 0px 0px 2px;width:13px;" height="9" width="13">
								<div style="cursor:pointer;width:13px; height:9px; border:solid 1px gray; background-color: #eeeeee; background-image:url(/components/com_virtuemart/themes/classic_1/images/down_small.png);background-repeat: no-repeat; background-position: center;" onclick="var qty_el = document.getElementById(\'quantity'.$prod_id.'\'); var qty = qty_el.value; if( !isNaN( qty ) && qty > 0 ) qty_el.value--;return false;"></div>
							</td>
						</tr>
					</table>';						
				
		break;
}
echo $html;
?>