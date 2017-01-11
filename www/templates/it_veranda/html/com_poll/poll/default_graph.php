<?php // @version $Id: default_graph.php 8796 2007-09-09 15:46:34Z jinx $
defined('_JEXEC') or die('Restricted access');
?>

<dl class="poll">
	<dt><?php echo JText::_( 'Number of Voters' ); ?></dt>
	<dd><?php echo $this->votes[0]->voters; ?></dd>
	<dt><?php echo JText::_( 'First Vote' ); ?></dt>
	<dd><?php echo $this->first_vote; ?></dd>
	<dt><?php echo JText::_( 'Last Vote' ); ?></dt>
	<dd><?php echo $this->last_vote; ?></dd>
</dl>

<h3>
	<?php echo $this->poll->title; ?>
</h3>

<table class="custom">
	<thead>
	<tr class="odd">
    	<td class="column1"></td>
		<th scope="col"><?php echo JText::_( 'Hits' ); ?></th>
		<th scope="col"><?php echo JText::_( 'Percent' ); ?></th>	
		<th scope="col"><?php echo JText::_( 'Graph' ); ?></th>
	</tr>	
	</thead>

	<?php for ( $row = 0; $row < count( $this->votes ); $row++ ) :
		$vote = $this->votes[$row];
	?>
	<tr>
    
    	<th scope="row" class="column1"><?php echo $vote->text; ?></th>
        
		<td>
			<?php echo $vote->hits; ?>
		</td>
		<td>
			<?php echo $vote->percent.'%' ?>
		</td>
		<td>
			<div class="<?php echo $vote->class; ?>" style="height:<?php echo $vote->barheight; ?>px;width:<?php echo $vote->percent; ?>% !important"></div>
		</td>
	</tr>
	<?php endfor; ?>
</table>
