<?php

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// Include PHP files to the template
include_once(JPATH_ROOT . "/templates/" . $this->template . '/icetools/default.php');
include_once(JPATH_ROOT . "/templates/" . $this->template . '/icetools/switcher.php');

// Remove this files from the head of the template
	unset($this->_scripts[$this->baseurl . '/media/system/js/mootools.js']);
	unset($this->_scripts[$this->baseurl . '/media/system/js/caption.js']);
 
// Add this files on the head of the template 
	//$this->_scripts = array_merge(array($template_baseurl . '/js/ice-menu.js' => 'text/javascript'), $this->_scripts);
	 
	//if($gzip == "true") :
   // $this->_scripts = array_merge(array($template_baseurl . '/js/mootools.php' => 'text/javascript'), $this->_scripts);
 	//else:
	//$this->_scripts = array_merge(array($template_baseurl . '/js/mootools-1.2-more.js' => 'text/javascript'), $this->_scripts);
	//$this->_scripts = array_merge(array($template_baseurl . '/js/mootools-1.2.1-core-nc.js' => 'text/javascript'), $this->_scripts);
	//endif;
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >

<head>
<script type="text/javascript" src="/components/com_virtuemart/js/mootools/mootools-release-1.11.js"></script>

<jdoc:include type="head" />
<script type="text/javascript" src="/templates/it_veranda/js/mootools-1.2-more.js"></script>
<script type="text/javascript" src="/templates/it_veranda/js/ice-menu.js"></script>


<script type="text/javascript" src="/components/com_virtuemart/js/slimbox/js/slimbox.js"></script>
<link rel="stylesheet" type="text/css" href="/components/com_virtuemart/js/slimbox/css/slimbox.css" />

<script type="text/javascript" src="/smoothbox/smoothbox.js"></script>
<link rel="stylesheet" type="text/css" href="/smoothbox/smoothbox.css" />

<script type="text/javascript" src="/cidades-estados-utf8.js"></script>

<!-- CSS -->
<style type="text/css" media="screen">
/*\*/@import url("<?php echo $this->baseurl ?>/templates/system/css/system.css");/**/
/*\*/@import url("<?php echo $this->baseurl ?>/templates/system/css/general.css");/**/

<?php if($gzip == "true") : ?>
/*\*/@import url("<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template_css.css.php");/**/
<?php else: ?>
/*\*/@import url("<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template_css.css");/**/
<?php endif; ?>
/*\*/@import url("<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/styles/<?php echo $TemplateStyle; ?>.css");/**/



<?php if ($this->countModules('left + othermenu')) { ?>
#outer-column-container { border-left-width:<?php echo $layout_leftcol_width ?>px;}
#left-column { margin-left: -<?php echo $layout_leftcol_width ?>px; width: <?php echo $layout_leftcol_width ?>px;}
#inner-column-container {  border-left-width:1px; margin-right:-1px;}
<?php } ?>	

<?php if ($this->countModules('right')) { ?>
#outer-column-container { border-right-width:<?php echo $layout_rightcol_width ?>px;	}
#right-column { margin-right: -<?php echo $layout_rightcol_width ?>px; width: <?php echo $layout_rightcol_width ?>px;}
#inner-column-container { border-right-width:1px; margin-left:-1px;}	
<?php } ?>	

<?php if($mainnav_oneline == "true") : ?>
/*This is when menu is set to 1 line from the Template Manager */
ul#nav li a{ font-size:1.2em;  padding:15px 14px 18px;}
ul#nav li a span { padding-top:10px; display:inline;}
ul#nav li a span.sub { display:inline; font-size:1em; padding-top:0; color:#fff; font-family:Georgia, "Times New Roman", Times, serif;}
ul#nav li a span.sub:hover  {color:#fff}
<?php endif; ?>

</style>

<!--[if lte IE 7]>
<link rel="stylesheet" type="text/css" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/ie.css" />
<![endif]-->

<!--[if lt IE 7]>
 <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/fix-png-ie6.js"></script>
<script type="text/javascript" >
	DD_belatedPNG.fix('.png, img.png, #fontswitcher, #fontswitcher ul li a, ul.icescroller_buttons li a, #header_shadow, #loginarea, #left-column .icemodule h3 span.icemodule_header_r, #right-column .icemodule h3 span.icemodule_header_r, .iceslider_carouselslide_item .icemodule h4 span.icemodule_header_r, #footer #gotop p a, p.buttonheading img');
</script>
<![endif]--> 

<script type="text/javascript" >
	window.addEvent('domready', function() {			
		
		// MainMenu
		<?php if ($this->countModules('mainmenu')) { ?>
		var MainMenu = new IceMenu({
			id: '<?php echo $mainnav_id ?>',
			subMenusContainerId:'MainMenuSub',
			effect: '<?php echo $mainnav_effect ?>',
			duration: <?php echo $mainnav_duration ?>,
			physics: Fx.Transitions.<?php echo $mainnav_transition ?>,
			hideDelay: <?php echo $mainnav_delay ?>,
			orientation: '<?php echo $mainnav_orientation ?>',
			direction:{	x: '<?php echo $mainnav_direction_x ?>',	y: '<?php echo $mainnav_direction_y ?>' },
			opacity: <?php echo $mainnav_opacity ?>
		});
		<?php } ?>
		
		// OtherMenu 
		<?php //if ($this->countModules('othermenu')) { ?>
		var OtherMenu = new IceMenu({
			id: '<?php echo $othermenu_id ?>',
			subMenusContainerId:'OtherMenuSub',
			effect: '<?php echo $othermenu_effect ?>',
			duration: <?php echo $othermenu_duration ?>,
			physics: Fx.Transitions.<?php echo $othermenu_transition ?>,
			hideDelay: <?php echo $othermenu_delay ?>,
			orientation: '<?php echo $othermenu_orientation ?>',
			direction:{	x: '<?php echo $othermenu_direction_x ?>',	y: '<?php echo $othermenu_direction_y ?>' },
			opacity: <?php echo $othermenu_opacity ?>
		});
		<?php //} ?>
		
		
		
		var msnHelp = new IceMenu({
			id: 'mhelper',
			subMenusContainerId:'MainMenuSub',
			effect: '<?php echo $mainnav_effect ?>',
			duration: <?php echo $mainnav_duration ?>,
			physics: Fx.Transitions.<?php echo $mainnav_transition ?>,
			hideDelay: <?php echo $mainnav_delay ?>,
			orientation: '<?php echo $mainnav_orientation ?>',
			direction:{	x: '<?php echo $mainnav_direction_x ?>',	y: '<?php echo $mainnav_direction_y ?>' },
			opacity: <?php echo $mainnav_opacity ?>
		});
		
		
		
		<?php if($this->params->get('gotop')) { ?>
		new SmoothScroll({ duration:<?php echo $gotop_duration ?>, transition: Fx.Transitions.<?php echo $gotop_transition ?>  }, window); 
		<?php } ?> 

	});		
</script>


<script type="text/javascript">
/*
var modal;

window.addEvent("domready", function (){

	var html = "<p>I have read this notice and agree to the terms listed.</p>"
			 + "<p align='center'><input type='button' value='I agree' onclick='agree()' /> "
			 + "<input type='button' value='I disagree' onclick='agree(false)' /></p>";

	modal = new Modal({
		title: "Do you agree?",
		html: html,
		width: 210,
		height: 140,
		closeButton: false,
		backgroundClickDismissesModal: false,
		animate: true
	});
	
});

function agree(answersYes){
	modal.close();
	var msg = "You agreed!  SUCKER!  mwuhahahahahahaha!";
	if(answersYes === false){
		msg = "You disagreed. I don't blame you.";	
	}
	$("feedback").addClass("provided").innerHTML = msg;
}
*/
</script>




</head>

<body class="<?php echo $FontSize; ?>">

<!-- Accessibility -->
<ol id="accessibility">
    <li><a href="#nav">Skip to Menu</a></li>
    <li><a href="#mainwrapper">Skip to Content</a></li>
    <li><a href="#footer" >Skip to Footer></a></li>
</ol>
<!-- Accessibility -->


<div class="wrapper_full">

	<!-- Main Nav -->
	<div id="main-nav_wrap">
		
        <div id="main-nav">
        	
             <jdoc:include type="modules" name="mainmenu" />         
  
             <?php if($this->params->get('FontSwitcher')) { ?>
             <div id="fontswitcher">
                <ul>
                    <li class="smallfont"><a href="<?php echo $mainurl; ?>FontSize=font-small" title="<?php echo JText::_("Small Font");?>"></a></li>
                    <li class="normalfont"><a href="<?php echo $mainurl; ?>FontSize=font-medium" title="<?php echo JText::_("Normal Font");?>"></a></li>
                    <li class="largefont"><a href="<?php echo $mainurl; ?>FontSize=font-large" title="<?php echo JText::_("Large Font");?>"></a></li>
                </ul>
             </div>
             <?php } ?>
 		</div>                    
          
	</div><!-- Main Nav -->                    

	<!-- Header -->	  
    <div id="header">
                
		<div id="header_shadow">
         
        	<div class="wrapper">
             
            	<div class="padding">
                
                    <div id="logo">
                        <a href="<?php echo $this->baseurl ?>"><img src="images/stories/logo_alfa.png" class="png" /></a>
                    </div>  
                    
                    <?php if ($this->countModules('banner')) { ?>
                    <div id="bannertop" class="floatleft width33">
                        <jdoc:include type="modules" name="banner"  />
                    </div>
                    <?php } ?>
                    
                    <div style="float:right;color:#777;font-size:14px;font-weight:bold;margin:8px 40px 0px 0px;vertical-align:middle; line-height:50px;">
						<ul class="menu" id="mhelper" style="list-style:none;margin:0px 0px 0px 0px;">
							<li class="parent item29">
								<a href="#" style="color:#777;text-decoration:none">
									<img src="/images/atendimento_online.png" height="50" align="left" style="margin-bottom:0px;" border="0" />
									Atendimento&nbsp;Online
								</a>
								<ul class="accordionstyle">
									<li class="item284">
										<a href="Javascript: return false;" onclick="window.open('http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee=959F4C7894A704AE@apps.messenger.live.com&mkt=pt-BR', '_blank', 'height=300px,width=300px');">
											<span style="line-height:16px;"><img style="border-style: none;margin:6px 0px 0px 0px;" src="http://messenger.services.live.com/users/959F4C7894A704AE@apps.messenger.live.com/presenceimage?mkt=pt-BR" />&nbsp;Comercial</span>
										</a>
									</li>
									<li class="item285">
										<a href="Javascript: return false;" onclick="window.open('http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee=959F4C7894A704AE@apps.messenger.live.com&mkt=pt-BR', '_blank', 'height=300px,width=300px');">
											<span style="line-height:16px;"><img style="border-style: none;margin:6px 0px 0px 0px;" src="http://messenger.services.live.com/users/959F4C7894A704AE@apps.messenger.live.com/presenceimage?mkt=pt-BR" />&nbsp;Administrato</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>         
					</div>
					<jdoc:include type="modules" name="login"  /> 
                
				</div>
                 
			</div>      
            
		</div>
        
	</div><!-- Header -->	
    
	<!-- Content --> 
	<div id="content_gradient">
    
		<div id="content_top"></div>
    
    		<div id="content_shadow">
    
    			<div id="content" class="clearfix">
		
        			<div class="wrapper">
	
            			<?php if ($this->countModules('promo1 + promo2 + promo3 + promo4 + promo5 + promo6 + iceslider + iceslideshow')) { ?>
                        <!-- Promo --> 	
                        <div id="promo" class="clearfix">               
                		
                        	<div class="padding">
							
								<?php if ($this->countModules('promo1')) { ?>
                                <div class="<?php echo $promomodulewidth; ?> <?php echo $promomodsep1; ?> floatleft">
                                    <jdoc:include type="modules" name="promo1" style="block"  />
                                </div>
                                <?php } ?>
                                <?php if ($this->countModules('promo2')) { ?>
                                <div class="<?php echo $promomodulewidth; ?> <?php echo $promomodsep2; ?> floatleft">
                                    <jdoc:include type="modules" name="promo2" style="block"  />
                                </div>
                                <?php } ?>
                                <?php if ($this->countModules('promo3')) { ?>
                                <div class="<?php echo $promomodulewidth; ?> <?php echo $promomodsep3; ?> floatleft">
                                    <jdoc:include type="modules" name="promo3" style="block"  />
                                </div>
                                <?php } ?>
                                <?php if ($this->countModules('promo4')) { ?>
                                <div class="<?php echo $promomodulewidth; ?> <?php echo $promomodsep4; ?> floatleft">
                                    <jdoc:include type="modules" name="promo4" style="block"  />
                                </div>
                                <?php } ?>
                                <?php if ($this->countModules('promo5')) { ?>
                                <div class="<?php echo $promomodulewidth; ?> <?php echo $promomodsep5; ?> floatleft">
                                    <jdoc:include type="modules" name="promo5" style="block"  />
                                </div>
                                <?php } ?>
                                <?php if ($this->countModules('promo6')) { ?>
                                <div class="<?php echo $promomodulewidth; ?>  floatleft">
                                    <jdoc:include type="modules" name="promo6" style="block"  />
                                </div>
                                <?php } ?> 
                                
                                <div class="floatleft">
                                <jdoc:include type="modules" name="iceslideshow" />
                                </div>
                                 
                                <?php if ($this->countModules('carouselslide')) { ?>
                                <div class="floatright">
                                      <jdoc:include type="modules"  name="carouselslide" />
                                </div>
                                <?php } ?> 
                                
                               
                                
                                </div>
                               
                   		</div>  
                   		<!-- Promo --> 	
                        <?php } ?> 
                        
                        <?php if ($this->countModules('search + icescroller + breadcrumb')) { ?>
                        <!-- UserArea --> 	
                     	<div id="userarea">
                        
                        	<div class="padding clearfix">
								
								<?php if ($this->countModules('icescroller')) { ?>
                                <div class="floatleft" style="position:relative;">
                                    <jdoc:include type="modules" name="icescroller" />    
                                </div>    
                                <?php } ?>
                                
                                <?php if ($this->countModules('breadcrumb')) { ?>
                                 <div id="breadcrumbs" class="clearfix">
                                    <jdoc:include type="modules" name="breadcrumb" />
                                </div>  
                                <?php } ?>
                                
                                 <?php if ($this->countModules('search')) { ?>
                                     <jdoc:include type="modules" name="search" />
                                 <?php } ?>
                            
                            </div>
                               
                        </div>  
                        <!-- UserArea --> 	
                        <?php } ?> 
                        
                        
						<!-- Columns Container -->             
                        <div id="columns-container">
                            
                            <div id="outer-column-container">
                                
                                <div id="inner-column-container" class="clearfix">
                                    
                                    <!-- Source Order Container -->	
                                    <div id="source-order-container">
                                        
                                        <!-- Middle Column -->   
                                        <div id="middle-column">
                                                            
                                            <div class="inside">
                                
                        						
                                                 <jdoc:include type="modules" name="tabularslide" />
                                                 
                                                 
                                                <?php if ($this->countModules('user1 + user2 + user3')) { ?>
                                                <div id="usertopmods">    
                                                    
                                                    <?php if ($this->countModules('user1')) { ?>
                                                    <div class="<?php echo $usertopmodwidth; ?> <?php echo $usetopmodsep1; ?> floatleft">
                                                        <jdoc:include type="modules" name="user1" style="icemodule"  />
                                                    </div>
                                                    <?php } ?>
                                                    
                                                    <?php if ($this->countModules('user2')) { ?>
                                                    <div class="<?php echo $usertopmodwidth; ?> <?php echo $usetopmodsep2; ?> floatleft">																		 													<jdoc:include type="modules" name="user2" style="icemodule"  />
                                                    </div>
                                                    <?php } ?>
                                                     
                                                    <?php if ($this->countModules('user3')) { ?>
                                                    <div class="<?php echo $usertopmodwidth; ?> floatleft">
                                                        <jdoc:include type="modules" name="user3" style="icemodule"  />
                                                    </div>
                                                    <?php } ?>
                            
                                                 </div> 
                                                 <?php } ?>
                         
                                                 <?php if ($this->countModules('content1 + content2')) { ?>
                                                 <div id="contenttopmods">
                                                 
                                                     <?php if ($this->countModules('content1')) { ?>
                                                     <div class="<?php echo $contenttopmodwidth; ?> <?php echo $contenttopmodsep1; ?> floatleft">
                                                        <jdoc:include type="modules" name="content1" style="icemodule"  />
                                                     </div>
                                                     <?php } ?>
                                                        
                                                     <?php if ($this->countModules('content2')) { ?>
                                                     <div class="<?php echo $contenttopmodwidth; ?> floatleft">
                                                        <jdoc:include type="modules" name="content2" style="icemodule"  />
                                                     </div>
                                                     <?php } ?>
                                                     
                                                 </div>      
                                                 <?php } ?>
                                
                                                 <jdoc:include type="message" />
                                                 <jdoc:include type="component" />
                                    
                                                 <?php if ($this->countModules('content3 + content4')) { ?>
                                                 <div id="contentbotmods">
                                                 
                                                     <?php if ($this->countModules('content3')) { ?>
                                                     <div class="<?php echo $contentbottomodwidth; ?> <?php echo $contentbottomodsep1; ?> floatleft">
                                                        <jdoc:include type="modules" name="content3" style="icemodule"  />
                                                     </div>
                                                     <?php } ?>
                                                     
                                                     <?php if ($this->countModules('content4')) { ?>
                                                     <div class="<?php echo $contentbottomodwidth; ?> floatleft">
                                                        <jdoc:include type="modules" name="content4" style="icemodule"  />
                                                     </div>
                                                     <?php } ?>
                                                 
                                                 </div>      
                                                 <?php } ?>
                         
                                                 <?php if ($this->countModules('user4 + user5 + user6')) { ?>
                                                 <div id="userbottommods">    
                                                    
                                                    <?php if ($this->countModules('user4')) { ?>
                                                    <div class="<?php echo $userbottomodwidth; ?> <?php echo $userbotmodsep1; ?> floatleft">
                                                        <jdoc:include type="modules" name="user4" style="icemodule"  />
                                                    </div>
                                                    <?php } ?>
                                                    
                                                    <?php if ($this->countModules('user5')) { ?>
                                                    <div class="<?php echo $userbottomodwidth; ?> <?php echo $userbotmodsep2; ?> floatleft">
                                                        <jdoc:include type="modules" name="user5" style="icemodule"  />
                                                    </div>
                                                    <?php } ?>
                                                    
                                                    <?php if ($this->countModules('user6')) { ?>
                                                    <div class="<?php echo $userbottomodwidth; ?> <?php echo $userbotmodsep3; ?> floatleft">
                                                        <jdoc:include type="modules" name="user6" style="icemodule"  />
                                                    </div>
                                                    <?php } ?>
                                                                   
                                                 </div>            
                                                 <?php } ?> 
                                                 
                                              
                        
                                            </div>
                                                    
                                        </div><!-- Middle Column -->
                         
    
                                        <?php if ($this->countModules('left + othermenu')) { ?>
                                        <div id="left-column">
                                                     
                                            <div class="inside">
                                                  <?php if ($this->countModules('othermenu')) { ?>
                                                   <div class="icemodule">
                                                   		<div><div><div><div>
                                                        	<div class="icemodule_fix">
					                       					<h3>
                                                            <span class="icemodule_header_r">
                                                            <span class="icemodule_header_l">
                                                            <span class="icemodule_header_arrow">
															<span class="icemodule_header_color">Categorias</span>                            
                                                            </span>
                                                            </span>
                                                            </span>  
                        									</h3>
                     											<div class="clearfix" style="text-align:left">
                                                            		<div id="othermenu_wrap" style="height:<?php echo $othermenu_height ?>px">
                                                                		<jdoc:include type="modules" name="othermenu" />
                                                           			</div>
                                                           		</div>
                                                             
                                                            </div>
														</div></div></div></div>
                                                   </div>
                                               	   <?php } ?>
                                            
                                                <jdoc:include type="modules" name="left" style="icemodule"  />
                                            </div>    
                                                         
                                        </div>
                            
                                        <div class="clear-columns"></div>
                                        <?php } ?>
                     
                                    </div><!-- Source Order Container -->	
    
    
                                    <?php if ($this->countModules('right')) { ?>
                                    <div id="right-column">
                                                        
                                        <div class="inside">
                                            <jdoc:include type="modules" name="right" style="icemodule"  />
                                        </div>
                                                        
                                     </div>
                                     
                                     <div class="clear-columns"></div>
                                     <?php } ?>
                                     
                                                                                        
                                </div>
                                         
                            </div>
                                    
                        </div><!-- Columns Container -->    
                    
 					
						<?php if ($this->countModules('bottom1 + bottom2 + bottom3 + bottom4 + bottom5 + bottom6')) { ?>
                        <!-- Bottom -->
                        <div id="bottom">
            
                            <div class="padding  clearfix">  
                                
                             <?php if ($this->countModules('bottom1')) { ?>
                                    <div class="<?php echo $botmodwidth; ?> <?php echo $botmodsep1; ?> floatleft">
                                        <jdoc:include type="modules" name="bottom1" style="block"  />
                                    </div>
                                <?php } ?>
                                <?php if ($this->countModules('bottom2')) { ?>
                                    <div class="<?php echo $botmodwidth; ?> <?php echo $botmodsep2; ?> floatleft">
                                        <jdoc:include type="modules" name="bottom2" style="block"  />
                                    </div>
                                <?php } ?>
                                <?php if ($this->countModules('bottom3')) { ?>
                                    <div class="<?php echo $botmodwidth; ?> <?php echo $botmodsep3; ?> floatleft">
                                        <jdoc:include type="modules" name="bottom3" style="block"  />
                                    </div>
                                <?php } ?>
                                <?php if ($this->countModules('bottom4')) { ?>
                                    <div class="<?php echo $botmodwidth; ?> <?php echo $botmodsep4; ?> floatleft">
                                        <jdoc:include type="modules" name="bottom4" style="block"  />
                                    </div>
                                <?php } ?>
                                <?php if ($this->countModules('bottom5')) { ?>
                                    <div class="<?php echo $botmodwidth; ?> <?php echo $botmodsep5; ?> floatleft">
                                        <jdoc:include type="modules" name="bottom5" style="block"  />
                                    </div>
                                <?php } ?>
                                <?php if ($this->countModules('bottom6')) { ?>
                                    <div class="<?php echo $botmodwidth; ?>  floatleft">
                                        <jdoc:include type="modules" name="bottom6" style="block"  />
                                    </div>
                                <?php } ?>       
                               
                                
                            </div>
                            
                        </div> <!-- Bottom -->
                        <?php } ?>                  
                        
                    </div>
       
                </div> 
	
			<div id="content_bottom"></div>
            
    	</div> 
        
     </div>   
    <!-- Content -->   
    
    
    <!-- Footer -->
    <div id="footer">
    
        <div class="wrapper">
            
            <div class="padding">
                    
    		     <jdoc:include type="modules" name="footerlinks" />
                                           
				<?php if($this->params->get('icelogo')) { ?>
                     <p id="icelogo"><a href="http://icetheme.com"><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/icetheme_logo.png"  alt="IceTheme" class="png" /></a></p>
                <?php } ?>
                
                <jdoc:include type="modules" name="footer" />
                
                 <jdoc:include type="modules" name="footermenu" />
                                
                <?php if($this->params->get('gotop')) { ?>
                     <div id="gotop"><p><a href="#main-nav_wrap"><span><?php echo JText::_("Go to Top");?></span></a></p></div>
                <?php } ?>
                            
                            
                            
 			</div>
                        
		</div> 
            
	</div><!-- Footer -->   
                                   
                    
                    
                    
                    
                    
</div> <!-- Wrapper Full -->                  

<jdoc:include type="modules" name="debug" />
<div id="myOnPageContent" style="display:none;"></div>
</body>
</html>
