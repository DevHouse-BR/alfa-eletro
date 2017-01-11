-- neue Spalte anfügen
ALTER TABLE `jos_vvisitcounter` ADD `userAgent` VARCHAR( 512 ) NULL ;
-- auch Indexe anlegen
ALTER TABLE `jos_vvisitcounter` ADD INDEX ( `tm` ) ; 
ALTER TABLE `jos_vvisitcounter` ADD INDEX ( `ip` ) ; 
ALTER TABLE `jos_vvisitcounter` ADD INDEX `tmIP` ( `tm` , `ip` ) ;
-- z.Z. noch nicht notwendig ( keine Suche auf UserAgenten )
-- ALTER TABLE `jos_vvisitcounter` ADD INDEX ( `userAgent` ) ;
