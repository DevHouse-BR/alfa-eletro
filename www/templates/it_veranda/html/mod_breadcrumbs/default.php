<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<ol>
<?php for ($i = 0; $i < $count; $i ++) :

	// If not the last item in the breadcrumbs add the separator
	if ($i < $count -1) {
		if(!empty($list[$i]->link)) {
			echo '<li><a href="'.$list[$i]->link.'">'.str_replace("|", " ", $list[$i]->name).'</a></li>';
		} else {
			echo '<li>'.str_replace("|", " ", $list[$i]->name).'</li>';
		}
		echo '';
	}  else { // when $i == $count -1
	    echo '<li class="last"><span>'.str_replace("|", " ", $list[$i]->name).'</span></li>';
	}
endfor; ?>
</ol>
