<?php
class SubscriptionCheck {
	
	public function CheckKey($hostname = false) {
		if (!$hostname) {
			$uri = JURI::getInstance(); 
			/* Check if the license is valid */
			/* Check for server address or hostname */
			$hostname = $uri->toString( array('host'));
		}
		$hostparts = explode('.', $hostname);
		/* Let's check if there is no period in the hostname, if so, no need to check further */
		if (stripos($hostname, '.') !== false) {
			/* See how many parts the domain name consists of */
			$hostcount = count($hostparts);
			
			if ($hostcount > 1) {
				/* The last part contains any subfolders, lets drop those */
				$hostparts[$hostcount-1] = str_replace(strstr($hostparts[$hostcount-1], '/'), '', $hostparts[$hostcount-1]);
				
				/* Check if we have an IP address instead of a domain name */
				$countip = 0;
				foreach ($hostparts as $key => $value) {
					$oldlength = strlen($value);
					$value = (int)$value;
					$newlength = strlen($value);
					if ($oldlength == $newlength) $countip++;
				}
				
				/* Do we have an IP or a domain name */
				if ($countip == 4) {
					/* We have an IP address */
					$hostname = $hostparts[$hostcount-4].'.'.$hostparts[$hostcount-3].'.'.$hostparts[$hostcount-2].'.'.$hostparts[$hostcount-1];
				}
				/* Domain name can consist of 2 or 3 parts */
				/* Domain consists of 3 parts when the last part is 2 letters long */
				else if ((strlen($hostparts[$hostcount-1]) == 2 && strlen($hostparts[$hostcount-2]) == 2) 
						|| (strlen($hostparts[$hostcount-1]) == 2 && strlen($hostparts[$hostcount-2]) == 3)) {
					/* We have a 3-part domain */
					$hostname = $hostparts[$hostcount-3].'.'.$hostparts[$hostcount-2].'.'.$hostparts[$hostcount-1];
				}
				else if (strlen($hostparts[$hostcount-1]) == 3 || strlen($hostparts[$hostcount-1]) == 2) {
					/* We have a 2-part domain */
					$hostname = $hostparts[$hostcount-2].'.'.$hostparts[$hostcount-1];
				}
				else if (strlen($hostparts[$hostcount-1]) == 4) {
					/* We have a 2-part domain */
					$hostname = $hostparts[$hostcount-2].'.'.$hostparts[$hostcount-1];
				}
				else {
					/* Guessing this is a local domain */
				}
			}
			else {
				/* This is a local domain */
				/* The last part contains any subfolders, lets drop those */
			}
		}
		/* Local check */
		if ((strpos($_SERVER['SERVER_ADDR'], '127.0') == 0 && strpos($_SERVER['SERVER_ADDR'], '127.0') !== false)
			|| (strpos($_SERVER['SERVER_ADDR'], '192.168') == 0 && strpos($_SERVER['SERVER_ADDR'], '192.168') !== false)
			|| (stripos($hostname, 'localhost') == 0 && stripos($hostname, 'localhost') !== false)
			|| (stripos($hostname, '.') === false)
			) {
			$result = JText::_('WORK_LOCAL');
			$errorcode = 0;
			$uxdate = false;
		}
		else {
			$params	= JComponentHelper::getParams( 'com_csvimproved' );
			$ct_period = 0;
			$license_key = str_replace('.', '.', $params->get('csvi_license_key'), $ct_period);
			if ($ct_period == 2) {
				list($key, $hash, $uxdate) = explode(".", $license_key);
				if (md5($hostname.$hash) == $key && $uxdate > time()) {
					$errorcode = 0;
					$result = JText::_('LICENSE_KEY_OK');
				}
				else {
					$errorcode = 1;
					$result = JText::_('LICENSE_KEY_NOK');
				}
			}
			else {
				$errorcode = 1;
				$result = JText::_('LICENSE_KEY_NOK');
			}
			
			if ($hostname != $params->getValue('hostname')) {
				$db = JFactory::getDBO();
				/* Set the hostname for future reference */
				$params->setValue('hostname', $hostname);
				
				/* Store the last run date and hostname */
				$q = "UPDATE #__components SET params = '".$params->toString()."' WHERE link = 'option=com_csvimproved' LIMIT 1";
				$db->setQuery($q);
				$db->query();
			}
		}
		return array('result' => $result, 'uxdate' => $uxdate, 'hostname' => $hostname, 'errorcode' => $errorcode);
	}
}
?>
