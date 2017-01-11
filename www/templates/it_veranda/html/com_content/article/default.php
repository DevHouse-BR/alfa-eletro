<?php // no direct access
defined('_JEXEC') or die('Restricted access');

?>

<div id="page">

<?php $canEdit	= ($this->user->authorize('com_content', 'edit', 'content', 'all') || $this->user->authorize('com_content', 'edit', 'content', 'own'));
?>


<?php if ($this->params->get('show_page_title', 1) && $this->params->get('page_title') != $this->article->title) : ?>
	<div class="componentheading<?php echo $this->params->get('pageclass_sfx')?>">
		<?php echo $this->escape($this->params->get('page_title')); ?>
	</div>
<?php endif; ?>


<?php if ($canEdit || $this->params->get('show_title') || $this->params->get('show_pdf_icon') || $this->params->get('show_print_icon') || $this->params->get('show_email_icon')) : ?>

	<?php if ($this->params->get('show_title')) : ?>
	<h1 class="contentheading <?php echo $this->params->get( 'pageclass_sfx' ); ?>">
			<?php echo $this->escape($this->article->title); ?>
	</h1>
	<?php endif; ?>
    
    
    <div class="buttons clearfix">
    
	    <?php if (!$this->print) : ?>
		<p class="buttonheading">
        
			<?php if ($this->params->get('show_pdf_icon')) : ?>
            
            <?php echo JHTML::_('icon.pdf',  $this->article, $this->params, $this->access); ?>
    
            <?php endif; ?>
            

			<?php if ( $this->params->get( 'show_print_icon' )) : ?>
            <?php echo JHTML::_('icon.print_popup',  $this->article, $this->params, $this->access); ?>
            <?php endif; ?>

			<?php if ($this->params->get('show_email_icon')) : ?>
            <?php echo JHTML::_('icon.email',  $this->article, $this->params, $this->access); ?>
            <?php endif; ?>
        
        
			<?php if ($canEdit) : ?>
			<?php echo JHTML::_('icon.edit', $this->article, $this->params, $this->access); ?>
			<?php endif; ?>
   		         
				<?php else : ?>
				<?php echo JHTML::_('icon.print_screen',  $this->article, $this->params, $this->access); ?>
				<?php endif; ?>
                
		</p>
		<?php endif; ?>
        
        

<?php  if (!$this->params->get('show_intro')) :
	echo $this->article->event->afterDisplayTitle;
endif; ?>


<?php echo $this->article->event->beforeDisplayContent; ?>


<p class="iteminfo">

	<?php if (($this->params->get('show_author')) && ($this->article->author != "")) : ?>
        <span class="createdby">
            <?php JText::printf( 'Written by', ($this->article->created_by_alias ? $this->article->created_by_alias : $this->article->author) ); ?>
        </span>
    <?php endif; ?>


	<?php if ($this->params->get('show_create_date')) : ?>
    <span class="createdate">
            <?php echo JHTML::_('date', $this->article->created, JText::_('DATE_FORMAT_LC2')) ?>
     </span>
    <?php endif; ?>

	<?php if ($this->params->get('show_url') && $this->article->urls) : ?>
   <span>
            <a href="http://<?php echo $this->article->urls ; ?>" target="_blank">
                <?php echo $this->article->urls; ?></a>
    </span>
    <?php endif; ?>
    
    <?php if ( intval($this->article->modified) !=0 && $this->params->get('show_modify_date')) : ?>
	<span class="modifydate">
		<?php echo JText::sprintf('LAST_UPDATED2', JHTML::_('date', $this->article->modified, JText::_('DATE_FORMAT_LC2'))); ?>
	</span>
	<?php endif; ?>


</p>
</div>

<div class="blog_content">
<?php if (isset ($this->article->toc)) : ?>
	<?php echo $this->article->toc; ?>
<?php endif; ?>
<?php echo $this->article->text; ?>
</div>




<span class="clearfix">&nbsp;</span>

<?php echo $this->article->event->afterDisplayContent; ?>

<?php if (($this->params->get('show_section') && $this->article->sectionid) || ($this->params->get('show_category') && $this->article->catid)) : ?>
		<?php if ($this->params->get('show_section') && $this->article->sectionid && isset($this->article->section)) : ?>
		<span>
			<?php if ($this->params->get('link_section')) : ?>
				<?php echo '<a href="'.JRoute::_(ContentHelperRoute::getSectionRoute($this->article->sectionid)).'">'; ?>
			<?php endif; ?>
			<?php echo $this->article->section; ?>
			<?php if ($this->params->get('link_section')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
				<?php if ($this->params->get('show_category')) : ?>
				<?php echo ' - '; ?>
			<?php endif; ?>
		</span>
		<?php endif; ?>
		<?php if ($this->params->get('show_category') && $this->article->catid) : ?>
		<span>
			<?php if ($this->params->get('link_category')) : ?>
				<?php echo '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->article->catslug, $this->article->sectionid)).'">'; ?>
			<?php endif; ?>
			<?php echo $this->article->category; ?>
			<?php if ($this->params->get('link_category')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
		</span>
		<?php endif; ?>

    
<?php endif; ?>

</div>

