<table width="100%" cellpadding="3" cellspacing="0" style="margin: 0px 0px 2px 0px !important;">
	<tr style="background-color:#F4F4F4;" onmouseover="this.style.backgroundColor = '#D2D2EE';" onmouseout="this.style.backgroundColor = '#F4F4F4';">
		<td width="50" align="left" style="padding:1px 1px 1px 2px !important; margin:0px 0px 0px 0px !important;"><?=$ref?></td>
		<td id="name<?=$ref?>" align="left" style="padding:1px 1px 1px 2px !important; margin:0px 0px 0px 0px !important;">
			<span style="cursor:pointer" onmouseover="this.style.textDecoration='underline';" onmouseout="this.style.textDecoration='none';" title="Ver Detalhes Do Produto" onclick="handleViewPInfo('<?=$ref?>','<?php echo $product_flypage ?>&template=ja_purity');">
				<?php echo $product_name ?>
			</span>
		</td>
		<td width="110" align="left" style="padding:0px 0px 0px 0px !important; margin:0px 0px 0px 0px !important;">
			<?php echo $form_addtocart ?>
		</td>
		<td width="21" valign="middle" style="vertical-align:middle;padding:0px 0px 0px 0px !important; margin:0px 0px 0px 0px !important;">
			<? echo $file_list ?>
		</td>
	</tr>
</table>
<div id="ihtr<?=$ref?>" style="display:none;border:2px solid #003366;overflow: auto;"></div>