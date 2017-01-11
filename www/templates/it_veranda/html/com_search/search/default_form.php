<?php defined('_JEXEC') or die('Restricted access'); ?>

<form id="searchForm" action="<?php echo JRoute::_( 'index.php?option=com_search' );?>" method="post" name="searchForm">
	<fieldset>
	<?php if ( $this->params->get( 'show_page_title', 1 ) ) : ?>
		<legend>
			<?php echo $this->params->get( 'page_title' ); ?>
		</legend>
	<?php endif; ?>

				
                <p>
				<label for="search_searchword">
					<?php echo JText::_( 'Search Keyword' ); ?>:
				</label>
			
				<input type="text" name="searchword" id="search_searchword" size="30" maxlength="20" value="<?php echo $this->escape($this->searchword); ?>" class="inputbox" />
                </p>
			
				
			<p>	
			<?php echo $this->lists['searchphrase']; ?>
		</p>
        
        <p>
				<label for="ordering">
					<?php echo JText::_( 'Ordering' );?>:
				</label>
				<?php echo $this->lists['ordering'];?>
	 <p>		
            
	<?php if ($this->params->get( 'search_areas', 1 )) : ?>
    </p>
		<?php echo JText::_( 'Search Only' );?>:
		<?php foreach ($this->searchareas['search'] as $val => $txt) :
			$checked = is_array( $this->searchareas['active'] ) && in_array( $val, $this->searchareas['active'] ) ? 'checked="checked"' : '';
		?>
		<input type="checkbox" name="areas[]" value="<?php echo $val;?>" id="area_<?php echo $val;?>" <?php echo $checked;?> />
			<label for="area_<?php echo $val;?>">
				<?php echo JText::_($txt); ?>
			</label>
		<?php endforeach; ?>
        </p>
	<?php endif; ?>
 <p>
 <br />
<button type="submit"  onClick="this.form.submit()" name="Search"><span class="round"><span><?php echo JText::_( 'Search' );?></span></span></button>
  </p>
  
  <div class="notice clearfix">
  	<p class="floatleft" style="margin:0">
			<?php echo JText::_( 'Search Keyword' ) .' <b>'. $this->escape($this->searchword) .'</b>'; ?>
	</p>
    <p class="floatright" style="margin:0">	
			<?php echo $this->result; ?>
	</p>
    </div>	


<input type="hidden" name="task"   value="search" />
</form>

<?php if($this->total > 0) : ?>
		<label for="limit">
			<?php echo JText::_( 'Display Num' ); ?>
		</label>
		<?php echo $this->pagination->getLimitBox( ); ?>
		<?php echo $this->pagination->getPagesCounter(); ?>
        <br /> <br />
<?php endif; ?>