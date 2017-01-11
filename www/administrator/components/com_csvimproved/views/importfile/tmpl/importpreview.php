<?php
/**
 * Import preview
 *
 * @package CSVImproved
 * @subpackage Import
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: importpreview.php 666 2009-01-02 07:55:31Z Suami $
 */
 
defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' ); 
?>
<form method="post" action="index.php" name="adminForm" enctype="multipart/form-data"> 
	<input type="hidden" name="task" value="importfile" />
	<input type="hidden" name="option" value="com_csvimproved" />
	<input type="hidden" name="controller" value="importfile" />
	<input type="hidden" name="template_id" value="<?php echo $this->template_id; ?>" />
	<input type="hidden" name="show_preview" value="" />
	<input type="hidden" name="was_preview" value="Y" />
	<input type="hidden" name="selectfile" value="2" />
	<input type="hidden" name="user_filename" value="<?php echo $this->userfilename;?>" />
	<input type="hidden" name="local_csv_file" value="<?php echo $this->csvfile;?>" />
</form>
<div style="width: 100%; float: left; overflow: auto;">
	<div class="userfilename"><?php echo JText::_('Preview for').' '.$this->userfilename; ?></div>
	<table class="adminlist" style="empty-cells: show;">
		<thead>
			<tr>
				<?php
				foreach ($this->csvfields as $name => $order) {
					echo '<th>'.$name.'</th>';
				}
				?>
			</tr>
		</thead>
		<tbody>
		<tr>
		<?php
		foreach ($this->datapreview as $id => $data) {
			foreach( $this->csvfields as $fieldname ) {
				if (isset($data[$fieldname["order"]])) {
					echo '<td>'.$data[$fieldname["order"]].'</td>';
				}
				else echo '<td></td>';
			}
			echo '</tr><tr>';
		}
		?>
		</tr>
		</tbody>
	</table>
</div>
