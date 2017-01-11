<?php 

// Gzip CSS 
// http://www.fiftyfoureleven.com/weblog/web-development/css/the-definitive-css-gzip-method
// http://wyome.com/docs/Compressing_Javascript_with_PHP

if (extension_loaded('zlib') && !ini_get('zlib.output_compression')) @ob_start('ob_gzhandler');
header('Content-type: text/javascript; charset: UTF-8');
header('Cache-Control: must-revalidate');
header('Expires: ' . gmdate('D, d M Y H:i:s', time() + 3600) . ' GMT');

define('DIRSEP', DIRECTORY_SEPARATOR);
define('ROOT_DIR', dirname(__FILE__) . DIRSEP);

include(ROOT_DIR . 'mootools-1.2.1-core-nc.js');
include(ROOT_DIR . 'mootools-1.2-more.js');

?>