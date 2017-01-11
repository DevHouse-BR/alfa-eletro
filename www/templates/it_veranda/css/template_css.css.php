<?php 

// Gzip CSS 
// http://www.fiftyfoureleven.com/weblog/web-development/css/the-definitive-css-gzip-method

if (extension_loaded('zlib') && !ini_get('zlib.output_compression')) @ob_start('ob_gzhandler');
header('Content-type: text/css; charset: UTF-8');
header('Cache-Control: must-revalidate');
header('Expires: ' . gmdate('D, d M Y H:i:s', time() + 3600) . ' GMT');

define('DIRSEP', DIRECTORY_SEPARATOR);
define('ROOT_DIR', dirname(__FILE__) . DIRSEP);

/*---------------------------------------------------------------- 
  Copyright:
  Copyright (C) 2008 IceTheme. All Rights Reserved
  
  License:
  Copyrighted Commercial Software 
  
  Author:
  IceTheme - http://wwww.icetheme.com
---------------------------------------------------------------- */


/* Reset Browser Default */ 
include(ROOT_DIR . 'reset.css');

/* Typography */
include(ROOT_DIR . 'typography.css');

/* Forms */
include(ROOT_DIR . 'forms.css');

/* Menus */
include(ROOT_DIR . 'menus.css');

/* General */
include(ROOT_DIR . 'general.css');

/* Modules */
include(ROOT_DIR . 'icemodules.css');

?>