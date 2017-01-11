<?php
defined('_JEXEC') or die('Restricted access');

require_once(dirname(__FILE__).DS.'helper.php');

$conf = modBannerSliderHelper::getparam($params);

$doc = &JFactory::getDocument();
$doc->addScript('modules/mod_bannerslider/tmpl/mod_bannerslider.js');
$doc->addStyleSheet('modules/mod_bannerslider/tmpl/mod_bannerslider.css');
	
if ($params->get('cache') == 1)
{
	$cache = &JFactory::getCache('mod_bannerslider');
	$cache->setCaching(true);
	
	$cache->call(array('modBannerSliderHelper', 'display'), $conf);
}
else
{
	modBannerSliderHelper::display($conf);	
}
?>