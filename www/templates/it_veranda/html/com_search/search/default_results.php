<?php defined('_JEXEC') or die('Restricted access'); ?>


		<?php
		foreach( $this->results as $result ) : ?>
			
            
            <p>
					<span class="small<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
						<?php echo $this->pagination->limitstart + $result->count.'. ';?>
					</span>
					<?php if ( $result->href ) :
						if ($result->browsernav == 1 ) : ?>
							<a href="<?php echo JRoute::_($result->href); ?>" target="_blank">
						<?php else : ?>
							<a href="<?php echo JRoute::_($result->href); ?>">
						<?php endif;

						echo $this->escape($result->title);

						if ( $result->href ) : ?>
							</a>
						<?php endif;
						if ( $result->section ) : ?>
							<br />
							<span class="small<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
								(<?php echo $this->escape($result->section); ?>)
							</span>
						<?php endif; ?>
					<?php endif; ?>
	
    
					<?php echo $result->text; ?>
				<?php
					if ( $this->params->get( 'show_date' )) : ?>
				<div class="small<?php echo $this->params->get( 'pageclass_sfx' ); ?>">
					<?php echo $result->created; ?>
				</div>
				<?php endif; ?>
                
			</p>
		<?php endforeach; ?>
	
			<div align="center">
				<?php echo $this->pagination->getPagesLinks( ); ?>
			</div>
	