<?php 
/**
		  mod_onlinedestek for Joomla!
Author  : Hasan Beydağı
Website : http://www.beydagi.net
Tarih   : Feb 2009
Version : v1.2
Licence : GNU/GPL
Copyright Hasan Beydağı
*/
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' ); ?>

<?php 
$kimlik   = ($params->get( 'kimlik' )!='') ? $params->get( 'kimlik' ) : '43BA6707A3BDC6B0' ; 
$tip = ($params->get( 'tip' )!='') ? $params->get( 'tip' ) : 'modul' ;

$en   = ($params->get( 'en' )!='') ? $params->get( 'en' ) : '300px' ; 
$boy   = ($params->get( 'boy' )!='') ? $params->get( 'boy' ) : '300px' ;
$genislik   = ($params->get( 'genislik' )!='') ? $params->get( 'genislik' ) : '1px' ;
$bcolor   = ($params->get( 'bcolor' )!='') ? $params->get( 'bcolor' ) : 'black' ;

$b_en   = ($params->get( 'b_en' )!='') ? $params->get( 'b_en' ) : '100' ; 
$b_backcolor   = ($params->get( 'b_backcolor' )!='') ? $params->get( 'b_backcolor' ) : '77ADCF' ;
$b_altbackcolor   = ($params->get( 'b_altbackcolor' )!='') ? $params->get( 'b_altbackcolor' ) : 'FFFFFF' ;
$b_foreColor   = ($params->get( 'b_foreColor' )!='') ? $params->get( 'b_foreColor' ) : '424542' ;

$ulke   = ($params->get( 'ulke' )!='') ? $params->get( 'ulke' ) : 'en-GB' ;


$fore_color    = ($params->get( 'fore_color' )!='') ? $params->get( 'fore_color' ) : '333333' ; 
$back_color    = ($params->get( 'back_color' )!='') ? $params->get( 'back_color' ) : 'E8F1F8' ; 
$link_color    = ($params->get( 'link_color' )!='') ? $params->get( 'link_color' ) : '333333' ; 
$border_color    = ($params->get( 'border_color' )!='') ? $params->get( 'border_color' ) : 'AFD3EB' ; 
$button_forecolor    = ($params->get( 'button_forecolor' )!='') ? $params->get( 'button_forecolor' ) : '333333' ; 
$button_backcolor    = ($params->get( 'button_backcolor' )!='') ? $params->get( 'button_backcolor' ) : 'EEF7FE' ; 
$button_bordercolor    = ($params->get( 'button_bordercolor' )!='') ? $params->get( 'button_bordercolor' ) : 'AFD3EB' ; 
$button_disabledcolor    = ($params->get( 'button_disabledcolor' )!='') ? $params->get( 'button_disabledcolor' ) : 'EEF7FE' ; 
$header_forecolor    = ($params->get( 'header_forecolor' )!='') ? $params->get( 'header_forecolor' ) : '0066A7' ; 
$header_backcolor    = ($params->get( 'header_backcolor' )!='') ? $params->get( 'header_backcolor' ) : '8EBBD8' ; 
$menu_forecolor    = ($params->get( 'menu_forecolor' )!='') ? $params->get( 'menu_forecolor' ) : '333333' ; 
$menu_backcolor    = ($params->get( 'menu_backcolor' )!='') ? $params->get( 'menu_backcolor' ) : 'FFFFFF' ; 
$chat_forecolor    = ($params->get( 'chat_forecolor' )!='') ? $params->get( 'chat_forecolor' ) : '333333' ; 
$chat_backcolor    = ($params->get( 'chat_backcolor' )!='') ? $params->get( 'chat_backcolor' ) : 'FFFFFF' ; 
$chat_disabledcolor    = ($params->get( 'chat_disabledcolor' )!='') ? $params->get( 'chat_disabledcolor' ) : 'F6F6F6' ; 
$chat_errorcolor    = ($params->get( 'chat_errorcolor' )!='') ? $params->get( 'chat_errorcolor' ) : '760502' ; 
$chat_labelcolor    = ($params->get( 'chat_labelcolor' )!='') ? $params->get( 'chat_labelcolor' ) : '6E6C6C' ; 

$beforeyazi = ($params->get( 'beforeyazi' )!='') ? $params->get( 'beforeyazi' ) : '' ;
$afteryazi = ($params->get( 'afteryazi' )!='') ? $params->get( 'afteryazi' ) : '' ;

if($tip == "modul"){
$output = '<iframe src="http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee='.$kimlik.'@apps.messenger.live.com&mkt='.$ulke.'&useTheme=true&foreColor='.$fore_color.'&backColor='.$back_color.'&linkColor='.$link_color.'&borderColor='.$border_color.'&buttonForeColor='.$button_forecolor.'&buttonBackColor='.$button_backcolor.'&buttonBorderColor='.$button_bordercolor.'&buttonDisabledColor='.$button_disabledcolor.'&headerForeColor='.$header_forecolor.'&headerBackColor='.$header_backcolor.'&menuForeColor='.$menu_forecolor.'&menuBackColor='.$menu_backcolor.'&chatForeColor='.$chat_forecolor.'&chatBackColor='.$chat_backcolor.'&chatDisabledColor='.$chat_disabledcolor.'&chatErrorColor='.$chat_errorcolor.'&chatLabelColor='.$chat_labelcolor.'" width="300" height="300" style="border: solid '.$genislik.' '.$bcolor.'; width: '.$en.'; height: '.$boy.';" frameborder="0"></iframe>';
} 
else if($tip == "dugme"){
$output = '<script type="text/javascript" src="http://settings.messenger.live.com/controls/1.0/PresenceButton.js"></script>
<div
  id="Microsoft_Live_Messenger_PresenceButton_'.$kimlik.'"
  msgr:width="'.$b_en.'"
  msgr:backColor="#'.$b_backcolor.'"
  msgr:altBackColor="#'.$b_altbackcolor.'"
  msgr:foreColor="#'.$b_foreColor.'"
  msgr:conversationUrl="http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee='.$kimlik.'@apps.messenger.live.com&mkt='.$ulke.'&useTheme=true&foreColor='.$fore_color.'&backColor='.$back_color.'&linkColor='.$link_color.'&borderColor='.$border_color.'&buttonForeColor='.$button_forecolor.'&buttonBackColor='.$button_backcolor.'&buttonBorderColor='.$button_bordercolor.'&buttonDisabledColor='.$button_disabledcolor.'&headerForeColor='.$header_forecolor.'&headerBackColor='.$header_backcolor.'&menuForeColor='.$menu_forecolor.'&menuBackColor='.$menu_backcolor.'&chatForeColor='.$chat_forecolor.'&chatBackColor='.$chat_backcolor.'&chatDisabledColor='.$chat_disabledcolor.'&chatErrorColor='.$chat_errorcolor.'&chatLabelColor='.$chat_labelcolor.'" ></div>
<script type="text/javascript" src="http://messenger.services.live.com/users/'.$kimlik.'@apps.messenger.live.com/presence?mkt='.$ulke.'&cb=Microsoft_Live_Messenger_PresenceButton_onPresence"></script>';
}
 else {
$output = ''.$beforeyazi.' <br /><center><a href="Javascript: return false;" onclick="window.open(\'http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee='.$kimlik.'@apps.messenger.live.com&mkt='.$ulke.'\', \'_blank\', \'height=300px,width=300px\');"><img style="border-style: none;" src="http://www.alfaeletro.com.br/images/atendimento_online.png" /></a></center>'.$afteryazi.'';
}
echo $output;
//http://messenger.services.live.com/users/'.$kimlik.'@apps.messenger.live.com/presenceimage?mkt='.$ulke.'
?>