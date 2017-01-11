<?php
// @version $Id: default.php 9477 2007-12-05 19:35:52Z tsai146 $
defined('_JEXEC') or die('Restricted access'); 
?>
 <div id="searcharea">
        
        <div id="search_bg">
                                
<form action="index.php"  method="post" id="search" class="search<?php echo $params->get('moduleclass_sfx'); ?>">
	<p>
    
    <label for="mod_search_searchword">	
		<?php echo JText::_('search') ?>
	</label>
	<?php 
		    $output = '<input name="searchword" id="mod_search_searchword" maxlength="60" alt="'.$button_text.'" class="inputbox'.$moduleclass_sfx.'" type="text" size="'.$width.'" value="Busca por ..."  onblur="if(this.value==\'\') this.value=\'Busca por ...\';" onfocus="if(this.value==\'Busca por ...\') this.value=\'\';" />';
			
			if ($button) : 
			    if ($imagebutton) :
			        $button = '<input type="image" value="'.$button_text.'" class="button'.$moduleclass_sfx.'" src="'.$img.'"/>';
			    else :
			        $button = '<input type="submit" value="'.$button_text.'" class="button'.$moduleclass_sfx.'"/>';
			    endif;
			endif;
			
			switch ($button_pos) :
			    case 'top' :
				    $button = $button.'<br/>';
				    $output = $button.$output;
				    break;

			    case 'bottom' :
				    $button = '<br/>'.$button;
				    $output = $output.$button;
				    break;

			    case 'right' :
				    $output = $output.$button;
				    break;

			    case 'left' :
			    default :
				    $output = $button.$output;
				    break;
			endswitch;
			
			echo $output;
    ?>
	<input type="hidden" name="option" value="com_search" />
	<input type="hidden" name="task"   value="search" />
    </p> 
</form>
	</div></div>
    
