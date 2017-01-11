<?php
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' );


$lixo = file_get_contents("C:\\ServidorWEB\\www\\templates\\it_veranda\\params.ini");
$lixo = split("othermenu_height=", $lixo);
$lixo = split(chr(10), $lixo[1]);
$menu_heigh = $lixo[0];



echo '<div id="othermenu_wrap" style="height:' . $menu_heigh . 'px"><ul class="menu" id="othermenu">';


traverse_tree_down();

echo  '</ul></div>';





function traverse_tree_down($category_id='0', $level='0') {
	global $mosConfig_live_site, $sess;
	static $ibg = 0;

	$level++;
	
	
	$query = "SELECT category_name, category_id, category_child_id,
	(SELECT COUNT(*) FROM jos_vm_category_xref WHERE category_parent_id = a.category_id) as filhos
	FROM jos_vm_category as a, jos_vm_category_xref as b
	WHERE a.category_publish='Y' 
	AND b.category_parent_id='$category_id' 
	AND a.category_id=b.category_child_id 
	ORDER BY category_parent_id, list_order, category_name ASC";
	
	$db = new ps_DB();
	$db->query( $query );	
	
	
	if(((int)$level >= 2) && (count($db->record)>0)){
		echo '<ul class="accordionstyle">';
	}

	while($db->next_record()) {
		$itemid = '&Itemid='.$sess->getShopItemid();

		echo '<li class="';
		
		if((int)$db->f("filhos") > 0) echo("parent ");
		
		// troquei sefRelToAbs por JRoute::_
		echo 'item' . $sess->getShopItemid() . '"><a href="' . JRoute::_('index.php?option=com_virtuemart&page=shop.browse&category_id='.$db->f("category_id").$itemid) . '"><span>' . $db->f("category_name",false) . '</span></a>';

		$ibg++;

		traverse_tree_down($db->f("category_child_id"), $level);

		echo "</li>";
	}
	if(((int)$level >= 2) && (count($db->record)>0)){
		echo '</ul>';
	}
}





/*

global $mosConfig_live_site, $mainframe, $root_label, $jscook_type, $jscookMenu_style, $jscookTree_style, $ps_product_category;
require_once( CLASSPATH . 'ps_product_category.php' );
if( !isset( $ps_product_category )) $ps_product_category = new ps_product_category;


if( !class_exists('vmCategoryMenu')) {
class vmCategoryMenu {

	// function traverse_tree_down

	function traverse_tree_down(&$mymenu_content, $category_id='0', $level='0') {
		static $ibg = 0;
		global $mosConfig_live_site, $sess;
		$level++;
		$query = "SELECT category_name, category_id, category_child_id "
		. "FROM #__{vm}_category as a, #__{vm}_category_xref as b "
		. "WHERE a.category_publish='Y' AND "
		. " b.category_parent_id='$category_id' AND a.category_id=b.category_child_id "
		. "ORDER BY category_parent_id, list_order, category_name ASC";
		$db = new ps_DB();
		$db->query( $query );
		
		//echo("LEVEL=".$level);
		
		if((int)$level >= 2){
			$mymenu_content.= '<ul class="accordionstyle">';
		}

		while($db->next_record()) {
			$itemid = '&Itemid='.$sess->getShopItemid();
			//if( $ibg != 0 )	$mymenu_content.= ",";

			//$mymenu_content.= "\n[ '<img src=\"' + ctThemeXPBase + 'darrow.png\" alt=\"arr\" />LEONARDO','".$db->f("category_name",false)."','".sefRelToAbs('index.php?option=com_virtuemart&page=shop.browse&category_id='.$db->f("category_id").$itemid)."',null,'".$db->f("category_name",false)."'\n ";
			$mymenu_content.= '<li class="item' . $sess->getShopItemid() . '"><a href="' . sefRelToAbs('index.php?option=com_virtuemart&page=shop.browse&category_id='.$db->f("category_id").$itemid) . '"><span>' . $db->f("category_name",false) . '</span></a>';

			$ibg++;

			// recurse through the subcategories 
			$this->traverse_tree_down($mymenu_content, $db->f("category_child_id"), $level);

			// let's see if the loop has reached its end 
			$mymenu_content.= "</li>";
		}
		if((int)$level >= 2){
			$mymenu_content.= '</ul>';
		}
	}
}
}




$menu_htmlcode .= '<div id="othermenu_wrap" style="height:200px"><ul class="menu" id="othermenu">';

$Itemid = vmRequest::getInt( 'Itemid' );
$TreeId = vmRequest::getInt( 'TreeId' );


$vm_jscook = new vmCategoryMenu();

$vm_jscook->traverse_tree_down($menu_htmlcode);

$menu_htmlcode .= '</ul></div>';
echo $menu_htmlcode;
*/
?>