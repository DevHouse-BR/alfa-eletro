

<?php
defined('_JEXEC') or die('Restricted access');

/*
 * used on the left/right modules
 */
function modChrome_icemodule($module, &$params, &$attribs)
{
	$headerLevel = isset($attribs['headerLevel']) ? (int) $attribs['headerLevel'] : 3;
	if (!empty ($module->content)) : ?>
		
        
        <div class="icemodule<?php echo $params->get('moduleclass_sfx'); ?>">
        	<div><div><div><div>
        		<div class="icemodule_fix">
                                   
					<?php if ($module->showtitle) : ?>
                        <h<?php echo $headerLevel; ?>>
                            <span class="icemodule_header_r">
                            <span class="icemodule_header_l">
                            <span class="icemodule_header_arrow">
                                    
								<?php
                                    $title = $module->title;
                                    $title = split(' ', $title);
                                    $title[0] = '<span class="icemodule_header_color">'.$title[0].'</span>';
                                    $title= join(' ', $title);
                                    echo $title; 
                                ?>
                            
                             </span>
                             </span>
                             </span>  
                        </h<?php echo $headerLevel; ?>>
                    <?php endif; ?>
                    
                     <div class="clearfix" style="text-align:left">
					<?php echo $module->content; ?>
                    </div>
                    
        		</div>
            </div></div></div></div>
        </div>
        
        
        
        
	<?php endif;
}

/*
 * used on the promoe and bottom modules
 */
function modChrome_block($module, &$params, &$attribs)
{
	if (!empty ($module->content)) : ?>
		<div class="moduletable<?php echo $params->get('moduleclass_sfx'); ?>">
		<?php if ($module->showtitle != 0) : ?>
			<h3><?php
                                    $title = $module->title;
                                    $title = split(' ', $title);
                                    $title[0] = '<span class="icemodule_header_color">'.$title[0].'</span>';
                                    $title= join(' ', $title);
                                    echo $title; 
                                ?></h3>
		<?php endif; ?>
			<?php echo $module->content; ?>
		</div>
	<?php endif;
}
?>
