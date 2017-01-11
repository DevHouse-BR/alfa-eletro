<?php
/**
 * Log results
 *
 * @package CSVImproved
 * @subpackage Log
 * @author Roland Dalmulder
 * @link http://www.csvimproved.com
 * @copyright Copyright (C) 2006 - 2009 RolandD Cyber Produksi
 * @version $Id: log.php 904 2009-05-14 16:04:15Z Roland $
 */
 
defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' ); 
?>
<form action="index.php" method="post" name="adminForm">
	<table class="adminlist">
		<thead>
		<tr>
			<th width="20">
			<?php echo JText::_('ID'); ?>
			</th>
			<th width="20">
			<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count($this->logentries); ?>);" />
			</th>
			<th class="title">
			<?php echo JText::_('Action'); ?>
			</th>
			<th class="title">
			<?php echo JText::_('Action type'); ?>
			</th>
			<th class="title">
			<?php echo JText::_('TEMPLATE_NAME'); ?>
			</th>
			<th class="title">
			<?php echo JText::_('Timestamp'); ?>
			</th>
			<th class="title">
			<?php echo JText::_('User'); ?>
			</th>
			<th class="title">
			<?php echo JText::_('Records'); ?>
			</th>
		</tr>
		</thead>
		<?php
		/* Check for logentries */
		if ($this->logentries) {
			$k = 0;
			for ($i=0, $n=count( $this->logentries ); $i < $n; $i++) {
				$row = $this->logentries[$i];
				
				/* Pseudo entry for satisfying Joomla */
				$row->checked_out = 0;
				
				$link 	= 'index2.php?option=com_csvimproved&task=logdetails&controller=log&hidemainmenu=1&cid[]='. $row->id;
				$checked = JHTML::_('grid.checkedout',  $row, $i);
				$user = JFactory::getUser($row->userid);
				?>
				<tr class="<?php echo 'row'. $k; ?>">
					<td align="center">
					<?php echo $this->pagination->getRowOffset($i); ?>
					</td>
					<td>
					<?php echo $checked; ?>
					</td>
					<td>
						<a href="<?php echo $link; ?>"><?php echo JText::_($row->action); ?></a>
					</td>
					<td>
						<?php echo JText::_($row->action_type); ?>
					</td>
					<td>
						<?php echo $row->template_name; ?>
					</td>
					<td>
						<?php echo $row->logstamp; ?>
					</td>
					<td>
						<?php echo $user->name; ?>
					</td>
					<td>
						<?php echo $row->records; ?>
					</td>
				</tr>
				<?php
				$k = 1 - $k;
			}
		}
		else echo '<tr><td colspan="8" class="center">'.JText::_('No log entries found').'</td></tr>';
		?>
		<tr>
            <td colspan="8"><?php echo $this->pagination->getListFooter(); ?></td>
         </tr>
		</table>
	<input type="hidden" name="option" value="com_csvimproved" />
	<input type="hidden" name="task" value="log" />
	<input type="hidden" name="boxchecked" value="0" />
	<input type="hidden" name="controller" value="log" />
</form>
