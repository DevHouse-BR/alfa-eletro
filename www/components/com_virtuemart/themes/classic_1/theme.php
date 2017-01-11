<?php 
if( !defined( '_VALID_MOS' ) && !defined( '_JEXEC' ) ) die( 'Direct Access to '.basename(__FILE__).' is not allowed.' ); 

/*------------------------------------------------------------------------
# Classic I Theme for VirtueMart 1.1.x - March, 2009
# ------------------------------------------------------------------------
# Copyright (C) 2009-2013 VMJunction.com, Ltd. All Rights Reserved.
# @license - Copyrighted Commercial Software
# Author: VMJunction.com
# Websites:  http://www.VMJunction.com
# Icon Designed by: http://www.dryicons.com
-------------------------------------------------------------------------*/

global $mainframe;

// include the stylesheet for this template

if( vmIsJoomla(1.0) && mosGetParam($_REQUEST,'option') != VM_COMPONENT_NAME) {
	// This can only be a call from a module or mambot
	// In Joomla 1.0 it is not possible to add a JS or CSS into the HEAD from a module or content mambot,
	// using addcustomheadtag, that's why we just print the tags here
	echo vmCommonHTML::scriptTag(VM_THEMEURL.'theme.js');
	echo vmCommonHTML::linkTag(VM_THEMEURL.'theme.css');
} else {
	$vm_mainframe->addStyleSheet( VM_THEMEURL.'theme.css' );
	$vm_mainframe->addScript( VM_THEMEURL.'theme.js' );
}
class vmTheme extends vmTemplate  {
	
	function vmTheme() {
		parent::vmTemplate();
		vmCommonHTML::loadMooTools();
	}
	
	function vmBuildFullImageLink( $product ) {
		global $VM_LANG;
		
		$product_image = '';
		
		$img_attributes= 'alt="'.$product['product_name'].'" style="margin: 3px; border:solid 6px #DDDDDD;"';
		
		if( empty($product['product_full_image'] ) ) {
			$product_image = "<img src=\"".VM_THEMEURL.'images/'.NO_IMAGE."\" alt=\"".$product['product_name']."\" border=\"0\" vspace=\"3\" hspace=\"3\" />";
		}
		else {
			// file_exists doesn't work on remote files,
			// so returns false on remote files
			// This should fix the "Long Page generation bug"
			if( file_exists( IMAGEPATH.'product/'.$product['product_full_image'] )) {
	
				/* Get image width and height */
				if( $image_info = @getimagesize(IMAGEPATH.'product/'.$product['product_full_image'] ) ) {
					$width = $image_info[0] + 20;
					$height = $image_info[1] + 20;
				}
			}
			else {
				$width = 640;
				$height= 480;
			}
			if( stristr( $product['product_full_image'], "http" ) ) {
				$imageurl = $product['product_full_image'];
			}
			else {
				$imageurl = IMAGEURL.'product/'.rawurlencode( $VM_LANG->convert($product['product_full_image']));
			}
			/* Build the "See Bigger Image" Link */
			if( @$_REQUEST['output'] != "pdf" && $this->get_cfg('useLightBoxImages', 1 ) ) {
				$link = $imageurl;
				$text = ps_product::image_tag($product['product_thumb_image'], $img_attributes, 1);//."<br/>".$VM_LANG->_('PHPSHOP_FLYPAGE_ENLARGE_IMAGE');

				$product_image = vmCommonHTML::getLightboxImageLink( $link, $text, $product['product_name'], 'product'.$product['product_id'] );
			}
			elseif( @$_REQUEST['output'] != "pdf" ) {
				$link = $imageurl;
				$text = ps_product::image_tag($product['product_thumb_image'], $img_attributes, 1)."<br/>".$VM_LANG->_('PHPSHOP_FLYPAGE_ENLARGE_IMAGE');
				// vmPopupLink can be found in: htmlTools.class.php
				$product_image = vmPopupLink( $link, $text, $width, $height );
			}
			else {
				$product_image = "<a href=\"$imageurl\" target=\"_blank\">"
								. ps_product::image_tag($product['product_thumb_image'], $img_attributes, 1)
								. "</a>";
			}
		}
		return $product_image;
	}
	
	/**
	 * Builds a list of all additional images
	 *
	 * @param int $product_id
	 * @param array $images
	 * @return string
	 */
	function vmlistAdditionalImages( $product_id, $images, $title='', $limit=1000 ) {
		global $sess;
		$html = '';
		$i = 0;
		foreach( $images as $image ) { 
			$thumbtag = ps_product::image_tag( $image->file_name, 'class="browseProductImage" style="margin: 3px; border:solid 6px #DDDDDD;"', 1, 'product', $image->file_image_thumb_height, $image->file_image_thumb_width );
			$fulladdress = $sess->url( 'index2.php?page=shop.view_images&amp;image_id='.$image->file_id.'&amp;product_id='.$product_id.'&amp;pop=1' );
			
			if( $this->get_cfg('useLightBoxImages', 1 )) {
				$html .= vmCommonHTML::getLightboxImageLink( $image->file_url, $thumbtag, $title ? $title : $image->file_title, 'product'.$product_id );
			}
			else {
				$html .= vmPopupLink( $fulladdress, $thumbtag, 640, 550 );
			}
			
			if( ++$i > $limit ) break;
		}
		return $html;
	}
	/**
	 * Builds the "more images" link
	 *
	 * @param array $images
	 */
	function vmMoreImagesLink( $images ) {
		global $mosConfig_live_site, $VM_LANG, $sess;
		/* Build the JavaScript Link */
		$url = $sess->url( "index2.php?page=shop.view_images&amp;flypage=".@$_REQUEST['flypage']."&amp;product_id=".@$_REQUEST['product_id']."&amp;category_id=".@$_REQUEST['category_id']."&amp;pop=1" );
		$text = $VM_LANG->_('PHPSHOP_MORE_IMAGES').'('.count($images).')';
		$image = vmCommonHTML::imageTag( VM_THEMEURL.'images/more_images.png', $text, '', '16', '16' );
		
		return vmPopupLink( $url, $image.'<br />'.$text, 640, 550, '_blank', '', 'screenX=100,screenY=100' );
	}
	/**
	 * This is a function to silently add a product into cart
	 * and notify the user with a nice dhtml window
	 *
	 * @param string $class
	 * @param string $id
	 * @param string $updateElement
	 * @param string $onComplete
	 */
	function vmThemeAjaxSubmitter( $class='', $id='', $updateElement='vmCartModule', $onComplete='showMessagesinLightBox' ) {
		global $mm_action_url, $sess;
		if( $id ) {
			$element = '#'.$id;
		}
		else {
			$element = $class;
		}
		vmCommonHTML::loadMooTools();
		vmCommonHTML::loadLightBox('_gw');
		$script = "\$S('$element').action( {
				onsubmit: function(){
					showLoadingLightbox();
					var cForm = $(this.id);
					cForm.page.value = 'shop.basket_short';
					";
		$cartUpdateURL = $sess->url( $mm_action_url.'index.php?only_page=1&ignore_last_page=1' );
		$script .= vmMooAjax::getAjaxUpdater( $cartUpdateURL, $updateElement, $onComplete, 'post', array( 'formName' => 'cForm.id' ) );
		$script .= "		
					return false;
				}
			} );
		";
		
		echo vmCommonHTML::scriptTag('', $script );
	}
	
	// Your code here please...

}
?>