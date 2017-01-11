<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<?php $canEdit   = ($this->user->authorize('com_content', 'edit', 'content', 'all') || $this->user->authorize('com_content', 'edit', 'content', 'own')); ?>
<?php if ($this->item->state == 0) : ?>
<div class="system-unpublished">
<?php endif; ?>


	<?php if ($this->item->params->get('show_title')) : ?>
 	 <h2 class="contentheading<?php echo $this->item->params->get('pageclass_sfx'); ?>">
   
		<?php if ($this->item->params->get('link_titles') && $this->item->readmore_link != '') : ?>
		<a href="<?php echo $this->item->readmore_link; ?>" class="contentpagetitle<?php echo $this->item->params->get( 'pageclass_sfx' ); ?>">
			<?php echo $this->escape($this->item->title); ?></a>
		<?php else : ?>
			<?php echo $this->escape($this->item->title); ?>
		<?php endif; ?>
        
	</h2>
	<?php endif; ?>


<?php if ((!empty ($this->item->modified) && $this->item->params->get('show_modify_date')) || ($this->item->params->get('show_author') && ($this->item->author != "")) || ($this->item->params->get('show_create_date') || ($this->params->get('show_url') && $this->article->urls)) || ($this->item->params->get('show_pdf_icon') || $this->item->params->get('show_print_icon') || $this->item->params->get('show_email_icon') || $canEdit))  : ?>
 
	
        
		
    
		
        <?php if ((!empty ($this->item->modified) && $this->item->params->get('show_modify_date')) || ($this->item->params->get('show_author') && ($this->item->author != "")) || ($this->item->params->get('show_create_date') || ($this->params->get('show_url') && $this->article->urls))) : ?>
		
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
            <?php echo JText::sprintf('LAST_UPDATED2', JHTML::_('date', $this->item->modified, JText::_('DATE_FORMAT_LC2'))); ?>
         <span>
        <?php endif; ?>
		
        </p>
		
		<?php endif; ?>

<?php endif; ?>

<?php  if (!$this->item->params->get('show_intro')) :
	echo $this->item->event->afterDisplayTitle;
endif; ?>

<div class="blogcontent">

<?php echo $this->item->event->beforeDisplayContent; ?>


<?php if (($this->item->params->get('show_section') && $this->item->sectionid) || ($this->item->params->get('show_category') && $this->item->catid)) : ?>
<p class="pageinfo">
		<?php if ($this->item->params->get('show_section') && $this->item->sectionid && isset($this->item->section)) : ?>
		<span>
			<?php if ($this->item->params->get('link_section')) : ?>
				<?php echo '<a href="'.JRoute::_(ContentHelperRoute::getSectionRoute($this->item->sectionid)).'">'; ?>
			<?php endif; ?>
			<?php echo $this->item->section; ?>
			<?php if ($this->item->params->get('link_section')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
				<?php if ($this->item->params->get('show_category')) : ?>
				<?php echo ' - '; ?>
			<?php endif; ?>
		</span>
		<?php endif; ?>
		<?php if ($this->item->params->get('show_category') && $this->item->catid) : ?>
		<span>
			<?php if ($this->item->params->get('link_category')) : ?>
				<?php echo '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->item->catslug, $this->item->sectionid)).'">'; ?>
			<?php endif; ?>
			<?php echo $this->item->category; ?>
			<?php if ($this->item->params->get('link_category')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
		</span>
		<?php endif; ?>
	
 </p>   
<?php endif; ?>





<?php if (isset ($this->item->toc)) : ?>
	<?php echo $this->item->toc; ?>
<?php endif; ?>

<?php echo $this->item->text; ?>



<?php if ($this->item->params->get('show_readmore') && $this->item->readmore) : ?>
<p class="readmore">

		<a href="<?php echo $this->item->readmore_link; ?>"class="button<?php echo $this->item->params->get('pageclass_sfx'); ?>">
		<?php if ($this->item->readmore_register) :
				echo JText::_('Register to read more...');
			elseif ($readmore = $this->item->params->get('readmore')) :
				echo $readmore;
			else :
				echo JText::sprintf('Read more...');
			endif; ?></a>
	</p>
<?php endif; ?>
</div>

<?php if ($this->item->state == 0) : ?>
</div>
<?php endif; ?>

<?php echo $this->item->event->afterDisplayContent; ?>
