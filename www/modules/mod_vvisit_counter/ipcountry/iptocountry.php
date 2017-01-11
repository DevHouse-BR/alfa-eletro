<?php
// no direct access
defined('_JEXEC') or die('Restricted access');

/**
 * Part of Counter mod_vvisit_counter
 *
 * @version $Id: iptocountry.php 18 2009-04-01 15:39:15Z mmicha $
 * @package Joomla
 * @copyright Copyright (C) 2009 Majunke Michael majunke@mmajunke.de
 *
 * @license GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 *
 * TODO:
 *   - Update des Datenfiles automatisieren lassen wenn neue File-Version eingespielt wird
 *
 */

class IPtoCountry {

    // call create Table or not
    private $s_trycreateIPCtable = null;
    private $s_IPCtableName = null;

    private $db = null ;

    /**
     * Konstruktor
     */
    public function __construct(&$params)
    {
        // call create Table or not
        $this->s_trycreatetable = @$params->get('s_trycreateIPCtable', 0);
        // fest
        $this->s_IPCtableName = 'jos_mvc_iptocountry';


        // Initalisierung
        $this->init();
    }

	/**
	 * liefert f¸r eine IP-Adresse den ISO2 Code
	 *
	 * @param ip_adress IP-Adresse
	 * @return ISO Code z.B. US
	 *         or null
	 */
	public function getISOAlphaZwei( $ip_adress ){

		if ( empty($ip_adress)) {
			return null ;
		}
		//
		$ipAsLong = sprintf("%u", ip2long($ip_adress) );
		//
		//
        $query = "select isoAlphaZwei from " . $this->s_IPCtableName . " WHERE ipFrom <= " . $ipAsLong . " AND ipTo >= " . $ipAsLong . " LIMIT 1";
        $this->db->setQuery($query);
        $code = $this->db->loadResult();
		if( empty($code)) {
			return null;
		} else {
			return $code;
		}

	}

	/**
	 * liefert f¸r eine IP-Adresse den L‰ndername
	 *
	 * @param ip_adress IP-Adresse
	 * @return L‰ndername z.B. GERMANY
	 *         or null
	 */
	public function getCountry($ip_adress ){

		if ( empty($ip_adress)) {
			return null ;
		}
		//
		$ipAsLong = sprintf("%u", ip2long($ip_adress) );
		//
		//
        $query = "select name from " . $this->s_IPCtableName . " WHERE ipFrom <= " . $ipAsLong . " AND ipTo >= " . $ipAsLong . " LIMIT 1";
        $this->db->setQuery($query);
        $name = $this->db->loadResult();
		if( empty($name)) {
			return null;
		} else {
			return $name;
		}

	}



    /**
     * initalise
     */
    protected function init()
    {
        // Database init
        $this->db = &JFactory::getDBO();

        // Check if table exists. When not, create it
        if ($this->s_trycreatetable) {
            // create
            $query = "CREATE TABLE IF NOT EXISTS " . $this->s_IPCtableName . "(ipFrom int(11) unsigned NOT NULL, ipTo int(11) unsigned NOT NULL, isoAlphaZwei CHAR( 2 ) NOT NULL , isoAlphaDrei CHAR( 3 ) NOT NULL , name VARCHAR( 150 ) NOT NULL, KEY ipFT( ipFrom, ipTo) ) ENGINE=MyISAM AUTO_INCREMENT=1";
            $this->db->setQuery($query);
            $this->db->query();
            if ($this->db->getErrorNum ()) {
                $e = $this->db->getErrorMsg();
                // print_r( $e );
                JError::raiseWarning(500, $e);
                return;
            }
            // count Data
            $counts = 0 ;
            $query = "select count(*) from " . $this->s_IPCtableName ;
            $this->db->setQuery($query);
            $counts = $this->db->loadResult();
            if ($this->db->getErrorNum ()) {
                $e = $this->db->getErrorMsg();
                // print_r( $e );
                JError::raiseWarning(500, $e);
                return;
            }
            // wenn leer , insert Daten from File
            if ($counts < 1) {
                // Pfad zum File TODO Konstante
                $dataPath = (dirname(__FILE__) . DS . 'ip-to-country.csv');
                // print_r($dataPath);
                if (! file_exists($dataPath)) {
                    JError::raiseWarning(500, "Missing File:[" + $dataPath + "]");
                    // TODO hier DROP Tabel ausf¸hren ??
                    return;
                }
                // Daten einspielen
                // CSV-Datei ˆffnen
                $handle = fopen($dataPath, "r");

                //
                $query = "LOCK TABLE " . $this->s_IPCtableName;
                $this->db->setQuery($query);
                $this->db->query();

                // each row
                $ins = 0 ;
                while ($rowcsv = fgetcsv($handle, 1024, ',', '"')) {
                    $query = "INSERT INTO " . $this->s_IPCtableName . " (ipFrom, ipTo, isoAlphaZwei, isoAlphaDrei, name ) VALUES( '$rowcsv[0]' , '$rowcsv[1]', " . $this->db->Quote($rowcsv[2]) . ", " . $this->db->Quote($rowcsv[3]) . ", " . $this->db->Quote($rowcsv[4]) . " )";
                    $this->db->setQuery($query);
                    $insT = $this->db->query();
                    $ins += $insT;
                    if ($this->db->getErrorNum ()) {
                        $e = $this->db->getErrorMsg();
                        // print_r( $e );
                        JError::raiseWarning(500, $e);
                        // TODO irgendein Rollback ?
                        break;
                    }
                }

                //
                $query = "UNLOCK TABLE " . $this->s_IPCtableName;
                $this->db->setQuery($query);
                $this->db->query();

                // print_r( "<h2> I=" . $ins . "</h2>" );
                // CSV-Datei schlieﬂen
                fclose($handle);
                //print_r("<h1>Inserted [" . $ins . "]</h1>");
            }
        }
    }
}

?>