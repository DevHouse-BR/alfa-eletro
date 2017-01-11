<?php if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 

$iCol = 1;
if( !isset( $categories_per_row )) {
	$categories_per_row = 4;
}
$cellwidth = intval( 100 / $categories_per_row );

if( empty( $categories )) {
	return; // Do nothing, if there are no child categories!
}
?>
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<?php
foreach( $categories as $category ) {
	if ($iCol == 1) { // this is an indicator wether a row needs to be opened or not
		echo "<tr>\n";
	}
	?>
	
	<td align="center" width="<?php echo $cellwidth ?>%" valign="top" style="margin:0px 0px 0px 0px; padding:0px 0px 0px 0px;">
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td align="center" valign="middle" style="margin:0px 0px 0px 0px; padding:0px 0px 0px 0px;height:97px">
					<a title="<?php echo $category["category_name"] ?>" href="<?php $sess->purl(URL."index.php?option=com_virtuemart&amp;page=shop.browse&amp;category_id=".$category["category_id"]) ?>"> 
						<?php
							echo ps_product::image_tag( $category["category_thumb_image"], "alt=\"".$category["category_name"]."\"" . ' style="margin:0px 0px 0px 0px;"', 0, "category");
						?>
					 </a>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" style="margin:0px 0px 0px 0px; padding:0px 0px 0px 0px;height:30px">
					<a title="<?php echo $category["category_name"] ?>" href="<?php $sess->purl(URL."index.php?option=com_virtuemart&amp;page=shop.browse&amp;category_id=".$category["category_id"]) ?>"> 
						<?php
						echo $category["category_name"];
						?>
					 </a>
				</td>
			</tr>
		</table>
	</td>
	<?php
	// Do we need to close the current row now?
	if ($iCol == $categories_per_row) { // If the number of products per row has been reached
		echo "</tr>\n";
		$iCol = 1;
	}
	else {
		$iCol++;
	}
}
// Do we need a final closing row tag?
if (sizeof( $categories ) < $categories_per_row) {
	echo "</tr>\n";
}
?>
</table>