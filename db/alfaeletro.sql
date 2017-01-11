-- phpMyAdmin SQL Dump
-- version 3.0.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jan 11, 2017 as 12:54 AM
-- Versão do Servidor: 5.0.51
-- Versão do PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `alfaeletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_lists`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_lists` (
  `id` int(10) NOT NULL auto_increment,
  `list_name` varchar(101) character set latin1 collate latin1_general_ci NOT NULL default '',
  `list_desc` text character set latin1 collate latin1_general_ci NOT NULL,
  `list_type` tinyint(2) NOT NULL default '0',
  `sendername` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `senderemail` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `bounceadres` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `layout` text character set latin1 collate latin1_general_ci NOT NULL,
  `template` int(9) NOT NULL default '0',
  `subscribemessage` text character set latin1 collate latin1_general_ci NOT NULL,
  `unsubscribemessage` text character set latin1 collate latin1_general_ci NOT NULL,
  `unsubscribesend` tinyint(1) NOT NULL default '1',
  `auto_add` tinyint(1) NOT NULL default '0',
  `user_choose` tinyint(1) NOT NULL default '0',
  `cat_id` varchar(250) character set latin1 collate latin1_general_ci NOT NULL default '',
  `delay_min` int(2) NOT NULL default '0',
  `delay_max` int(2) NOT NULL default '7',
  `follow_up` int(10) NOT NULL default '0',
  `html` tinyint(1) NOT NULL default '1',
  `hidden` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `createdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `acc_level` int(2) NOT NULL default '0',
  `acc_id` int(11) NOT NULL default '29',
  `notification` tinyint(1) NOT NULL default '0',
  `owner` int(11) NOT NULL default '0',
  `footer` tinyint(1) NOT NULL default '1',
  `notify_id` int(10) NOT NULL default '0',
  `next_date` int(11) NOT NULL default '0',
  `start_date` date NOT NULL,
  `params` text character set latin1 collate latin1_general_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `list_name` (`list_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_acajoom_lists`
--

INSERT INTO `jos_acajoom_lists` (`id`, `list_name`, `list_desc`, `list_type`, `sendername`, `senderemail`, `bounceadres`, `layout`, `template`, `subscribemessage`, `unsubscribemessage`, `unsubscribesend`, `auto_add`, `user_choose`, `cat_id`, `delay_min`, `delay_max`, `follow_up`, `html`, `hidden`, `published`, `createdate`, `acc_level`, `acc_id`, `notification`, `owner`, `footer`, `notify_id`, `next_date`, `start_date`, `params`) VALUES
(1, 'Alfa Eletro', '', 1, 'Admin', 'leo_lima_jlle@yahoo.com.br', 'leo_lima_jlle@yahoo.com.br', '<table style="width: 100%;" bgcolor="#f1f1f1" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td align="center" valign="top">\r\n<table style="width: 530px;" bgcolor="#f1f1f1" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td class="hbnr" colspan="3" bgcolor="#ffffff"><img src="components/com_acajoom/templates/default/tpl0_top_header.jpg" alt="e Newsletter" border="0" width="530" height="137" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan="3" bgcolor="#ffffff"><img src="components/com_acajoom/templates/default/tpl0_underban.jpg" alt="." border="0" width="530" height="22" /></td>\r\n</tr>\r\n<tr>\r\n<!-- /// gutter \\\\\\ -->\r\n<td bgcolor="#ffffff" valign="top" width="15"><img src="components/com_acajoom/templates/default/tpl0_spacer.gif" alt="1" border="0" width="15" height="1" /></td>\r\n<!-- \\\\\\ gutter /// --> <!-- /// content cell \\\\\\ -->\r\n<td bgcolor="#ffffff" valign="top" width="500"><br />\r\n<p> </p>\r\n<p>Your Subscription:<br /> [SUBSCRIPTIONS]</p>\r\n<p> </p>\r\n</td>\r\n<!-- \\\\\\ content cell /// --> <!-- /// gutter \\\\\\ -->\r\n<td bgcolor="#ffffff" valign="top" width="15"><img src="components/com_acajoom/templates/default/tpl0_spacer.gif" alt="1" border="0" width="15" height="1" /></td>\r\n<!-- \\\\\\ gutter /// -->\r\n</tr>\r\n<!-- /// footer area with contact info and opt-out link \\\\\\ --> \r\n<tr>\r\n<td colspan="3" bgcolor="#ffffff"><img src="components/com_acajoom/templates/default/tpl0_abovefooter.jpg" alt="." border="0" width="530" height="22" /></td>\r\n</tr>\r\n<tr>\r\n<td style="border-top: 1px solid #aeaeae;" colspan="3" align="center" bgcolor="#cacaca" valign="middle">\r\n<p class="footerText"><a href="http://www.ijoobi.com"><img src="components/com_acajoom/templates/default/tpl0_powered_by.gif" alt="Powered By Joobi" border="0" width="129" height="60" /></a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- \\\\\\ footer area with contact info and opt-out link /// --></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- \\\\\\ Newsletter Powered by Acajoom!  /// --> <br />', 0, '', 'Este é um email de confirmação de que você foi removido da nossa lista.  Lamentamos que tenha decidido cancelar a sua subscrição, caso queira voltar a subscrever pode sempre fazê-lo no nosso site.  Caso tenha alguma questão por favor contacte o nosso Webmaster.', 1, 0, 0, '', 0, 0, 0, 1, 1, 1, '2009-06-28 22:48:57', 25, 29, 0, 62, 1, 0, 0, '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_mailings`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_mailings` (
  `id` int(11) NOT NULL auto_increment,
  `list_id` int(10) NOT NULL default '0',
  `list_type` tinyint(2) NOT NULL default '0',
  `issue_nb` int(10) NOT NULL default '0',
  `subject` varchar(120) character set latin1 collate latin1_general_ci NOT NULL default '',
  `fromname` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `fromemail` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `frombounce` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `htmlcontent` longtext character set latin1 collate latin1_general_ci NOT NULL,
  `textonly` longtext character set latin1 collate latin1_general_ci NOT NULL,
  `attachments` text character set latin1 collate latin1_general_ci NOT NULL,
  `images` text character set latin1 collate latin1_general_ci NOT NULL,
  `send_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `delay` int(10) NOT NULL default '0',
  `visible` tinyint(1) NOT NULL default '1',
  `html` tinyint(1) NOT NULL default '1',
  `published` tinyint(1) NOT NULL default '0',
  `createdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `acc_level` int(2) NOT NULL default '0',
  `author_id` int(11) NOT NULL default '0',
  `params` text character set latin1 collate latin1_general_ci,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_acajoom_mailings`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_queue`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_queue` (
  `qid` int(11) NOT NULL auto_increment,
  `type` tinyint(2) NOT NULL default '0',
  `subscriber_id` int(11) NOT NULL default '0',
  `list_id` int(10) NOT NULL default '0',
  `mailing_id` int(11) NOT NULL default '0',
  `issue_nb` int(10) NOT NULL default '0',
  `send_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `suspend` tinyint(1) NOT NULL default '0',
  `delay` int(10) NOT NULL default '0',
  `acc_level` int(2) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `params` text character set latin1 collate latin1_general_ci,
  PRIMARY KEY  (`qid`),
  UNIQUE KEY `subscriber_id` (`subscriber_id`,`list_id`,`mailing_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_acajoom_queue`
--

INSERT INTO `jos_acajoom_queue` (`qid`, `type`, `subscriber_id`, `list_id`, `mailing_id`, `issue_nb`, `send_date`, `suspend`, `delay`, `acc_level`, `published`, `params`) VALUES
(1, 1, 3, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_stats_details`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_stats_details` (
  `id` int(11) NOT NULL auto_increment,
  `mailing_id` int(11) NOT NULL default '0',
  `subscriber_id` int(11) NOT NULL default '0',
  `sentdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `html` tinyint(1) NOT NULL default '0',
  `read` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sub_mail` (`mailing_id`,`subscriber_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_acajoom_stats_details`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_stats_global`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_stats_global` (
  `mailing_id` int(11) NOT NULL default '0',
  `sentdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `html_sent` int(11) NOT NULL default '0',
  `text_sent` int(11) NOT NULL default '0',
  `html_read` int(11) NOT NULL default '0',
  PRIMARY KEY  (`mailing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_acajoom_stats_global`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_subscribers`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_subscribers` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `name` varchar(64) character set latin1 collate latin1_general_ci NOT NULL default '',
  `email` varchar(100) character set latin1 collate latin1_general_ci NOT NULL default '',
  `receive_html` tinyint(1) NOT NULL default '1',
  `confirmed` tinyint(1) NOT NULL default '0',
  `blacklist` tinyint(1) NOT NULL default '0',
  `timezone` time NOT NULL default '00:00:00',
  `language_iso` varchar(10) character set latin1 collate latin1_general_ci NOT NULL default 'eng',
  `subscribe_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text character set latin1 collate latin1_general_ci,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `date` (`subscribe_date`),
  KEY `joomlauserid` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `jos_acajoom_subscribers`
--

INSERT INTO `jos_acajoom_subscribers` (`id`, `user_id`, `name`, `email`, `receive_html`, `confirmed`, `blacklist`, `timezone`, `language_iso`, `subscribe_date`, `params`) VALUES
(1, 62, 'Admin', 'leo_lima_jlle@yahoo.com.br', 1, 1, 0, '00:00:00', 'eng', '2008-05-29 17:38:31', NULL),
(2, 75, 'Ismar', 'ismar@ldi.com.br', 1, 1, 0, '00:00:00', 'eng', '2009-06-11 13:16:10', NULL),
(3, 77, 'Leonardo Vasconcellos', 'leo.lima.web@gmail.com', 1, 1, 0, '00:00:00', 'eng', '2009-06-25 14:13:42', NULL),
(4, 79, 'Denise Lima', 'denisejlle@hotmail.com', 1, 1, 0, '00:00:00', 'eng', '2009-06-30 05:30:54', NULL),
(5, 80, 'Janjao Sobrenome', 'janjao@janjao.com.br', 1, 1, 0, '00:00:00', 'eng', '2009-06-30 06:18:24', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_acajoom_xonfig`
--

CREATE TABLE IF NOT EXISTS `jos_acajoom_xonfig` (
  `akey` varchar(32) character set latin1 collate latin1_general_ci NOT NULL default '',
  `text` varchar(254) character set latin1 collate latin1_general_ci NOT NULL default '',
  `value` int(11) NOT NULL default '0',
  PRIMARY KEY  (`akey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_acajoom_xonfig`
--

INSERT INTO `jos_acajoom_xonfig` (`akey`, `text`, `value`) VALUES
('component', 'Acajoom', 0),
('type', 'GPL', 0),
('version', '3.2.6', 0),
('level', '1', 0),
('emailmethod', 'smtp', 0),
('sendmail_from', 'alfa@alfaeletro.com.br', 0),
('sendmail_name', 'ALFA ELETRO', 0),
('sendmail_path', '/usr/sbin/sendmail', 0),
('smtp_host', 'mail.alfaeletro.com.br', 0),
('smtp_auth_required', '1', 0),
('smtp_username', 'alfa@alfaeletro.com.br', 0),
('smtp_password', 'alfa001', 0),
('embed_images', '0', 0),
('confirm_return', 'alfa@alfaeletro.com.br', 0),
('upload_url', '/components/com_acajoom/upload', 0),
('enable_statistics', '1', 0),
('statistics_per_subscriber', '1', 0),
('send_data', '1', 0),
('allow_unregistered', '1', 0),
('require_confirmation', '0', 0),
('redirectconfirm', '', 0),
('show_login', '1', 0),
('show_logout', '1', 0),
('send_unsubcribe', '1', 0),
('confirm_fromname', 'ALFA ELETRO', 0),
('confirm_fromemail', 'alfa@alfaeletro.com.br', 0),
('confirm_html', '1', 0),
('time_zone', '0', 0),
('show_archive', '1', 0),
('pause_time', '20', 0),
('emails_between_pauses', '65', 0),
('wait_for_user', '0', 0),
('script_timeout', '0', 0),
('display_trace', '1', 0),
('send_log', '1', 0),
('send_auto_log', '0', 0),
('send_log_simple', '0', 0),
('send_log_closed', '1', 0),
('save_log', '0', 0),
('send_email', '1', 0),
('save_log_simple', '0', 0),
('save_log_file', '/administrator/components/com_acajoom/com_acajoom.log', 0),
('send_log_address', '@ijoobi.com', 0),
('option', 'com_sdonkey', 0),
('send_log_name', 'Acajoom Mailing Report', 0),
('homesite', 'http://www.ijoobi.com', 0),
('report_site', 'http://www.ijoobi.com', 0),
('integration', '0', 0),
('cb_plugin', '1', 0),
('cb_listIds', '0', 0),
('cb_intro', '', 0),
('cb_showname', '1', 0),
('cb_checkLists', '1', 0),
('cb_showHTML', '1', 0),
('cb_defaultHTML', '1', 0),
('cb_integration', '0', 0),
('cb_pluginInstalled', '0', 0),
('cron_max_freq', '10', 0),
('cron_max_emails', '60', 0),
('last_cron', '', 0),
('last_sub_update', '1246351467', 0),
('next_autonews', '', 0),
('show_footer', '0', 0),
('show_signature', '1', 0),
('update_url', 'http://www.ijoobi.com/update/', 0),
('date_update', '2009-06-28 22:20:44', 0),
('update_message', '', 0),
('show_guide', '1', 0),
('news1', '0', 0),
('news2', '0', 0),
('news3', '0', 0),
('cron_setup', '0', 0),
('queuedate', '', 0),
('update_avail', '0', 0),
('show_tips', '1', 0),
('update_notification', '1', 0),
('show_lists', '1', 0),
('use_sef', '0', 0),
('listHTMLeditor', '1', 0),
('mod_pub', '1', 0),
('firstmailing', '0', 0),
('nblist', '9', 0),
('license', '', 0),
('token', '', 0),
('maintenance', '', 0),
('admin_debug', '0', 0),
('send_error', '1', 0),
('report_error', '1', 0),
('fullcheck', '0', 0),
('frequency', '0', 0),
('nb_days', '7', 0),
('date_type', '1', 0),
('arv_cat', '', 0),
('arv_sec', '', 0),
('maintenance_clear', '24', 0),
('clean_stats', '90', 0),
('maintenance_date', '', 0),
('mail_format', '1', 0),
('showtag', '0', 0),
('show_author', '0', 0),
('addEmailRedLink', '0', 0),
('itemidAca', '999', 0),
('show_jcalpro', '0', 0),
('disabletooltip', '1', 0),
('minisendmail', '0', 0),
('word_wrap', '0', 0),
('listname0', '', 0),
('listnames0', 'All mailings', 0),
('listype0', '1', 0),
('listshow0', '1', 0),
('classes0', '', 0),
('listlogo0', 'addedit.png', 0),
('totallist0', '', 1),
('act_totallist0', '', 1),
('totalmailing0', '', 0),
('totalmailingsent0', '', 0),
('act_totalmailing0', '', 0),
('totalsubcribers0', '', 2),
('act_totalsubcribers0', '', 2),
('listname1', '_ACA_NEWSLETTER', 0),
('listnames1', '_ACA_MENU_NEWSLETTERS', 0),
('listype1', '1', 0),
('listshow1', '1', 0),
('classes1', 'newsletter', 0),
('listlogo1', 'inbox.png', 0),
('totallist1', '', 1),
('act_totallist1', '', 1),
('totalmailing1', '', 0),
('totalmailingsent1', '', 0),
('act_totalmailing1', '', 0),
('totalsubcribers1', '', 0),
('act_totalsubcribers1', '', 0),
('listname2', '', 0),
('listnames2', '', 0),
('listype2', '', 0),
('listshow2', '', 0),
('classes2', 'autoresponder', 0),
('listlogo2', '', 0),
('totallist2', '', 0),
('act_totallist2', '', 0),
('totalmailing2', '', 0),
('totalmailingsent2', '', 0),
('act_totalmailing2', '', 0),
('totalsubcribers2', '', 0),
('act_totalsubcribers2', '', 0),
('listname3', '', 0),
('listnames3', '', 0),
('listype3', '', 0),
('listshow3', '', 0),
('classes3', '', 0),
('listlogo3', '', 0),
('totallist3', '', 0),
('act_totallist3', '', 0),
('totalmailing3', '', 0),
('totalmailingsent3', '', 0),
('act_totalmailing3', '', 0),
('totalsubcribers3', '', 0),
('act_totalsubcribers3', '', 0),
('listname4', '', 0),
('listnames4', '', 0),
('listype4', '', 0),
('listshow4', '', 0),
('classes4', '', 0),
('listlogo4', '', 0),
('totallist4', '', 0),
('act_totallist4', '', 0),
('totalmailing4', '', 0),
('totalmailingsent4', '', 0),
('act_totalmailing4', '', 0),
('totalsubcribers4', '', 0),
('act_totalsubcribers4', '', 0),
('listname5', '', 0),
('listnames5', '', 0),
('listype5', '', 0),
('listshow5', '', 0),
('classes5', '', 0),
('listlogo5', '', 0),
('totallist5', '', 0),
('act_totallist5', '', 0),
('totalmailing5', '', 0),
('totalmailingsent5', '', 0),
('act_totalmailing5', '', 0),
('totalsubcribers5', '', 0),
('act_totalsubcribers5', '', 0),
('listname6', '', 0),
('listnames6', '', 0),
('listype6', '', 0),
('listshow6', '', 0),
('classes6', '', 0),
('listlogo6', '', 0),
('totallist6', '', 0),
('act_totallist6', '', 0),
('totalmailing6', '', 0),
('totalmailingsent6', '', 0),
('act_totalmailing6', '', 0),
('totalsubcribers6', '', 0),
('act_totalsubcribers6', '', 0),
('listname7', '', 0),
('listnames7', '', 0),
('listype7', '', 0),
('listshow7', '', 0),
('classes7', 'autonews', 0),
('listlogo7', '', 0),
('totallist7', '', 0),
('act_totallist7', '', 0),
('totalmailing7', '', 0),
('totalmailingsent7', '', 0),
('act_totalmailing7', '', 0),
('totalsubcribers7', '', 0),
('act_totalsubcribers7', '', 0),
('listname8', '', 0),
('listnames8', '', 0),
('listype8', '', 0),
('listshow8', '', 0),
('classes8', '', 0),
('listlogo8', '', 0),
('totallist8', '', 0),
('act_totallist8', '', 0),
('totalmailing8', '', 0),
('totalmailingsent8', '', 0),
('act_totalmailing8', '', 0),
('totalsubcribers8', '', 0),
('act_totalsubcribers8', '', 0),
('activelist', '1', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(6, 4, '', 'Alfa Eletro', 'alfa-eletro', 0, 240, 1, 'logoalfamestre-pq.jpg', 'http://www.alfaeletro.com.br', '2009-06-26 15:49:27', 1, 0, '0000-00-00 00:00:00', '', '', 102, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=200\nheight=200'),
(5, 3, '', 'LDI', 'ldi', 0, 241, 2, 'logo_ldi.jpg', 'http://www.ldi.com.br', '2009-06-26 15:36:47', 1, 0, '0000-00-00 00:00:00', '', '', 102, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(3, 'LDI', 'Ismar', 'ismar@ldi.com.br', '', 0, '00:00:00', ''),
(4, 'Alfa Eletro', 'Ismar', 'ismar@ldi.com.br', '', 0, '00:00:00', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Extraindo dados da tabela `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Business: General', '', 'business-general', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(7, 0, 'Internet', '', 'internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(12, 0, 'Financeiro', '', 'financeiro', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(102, 0, 'Image Rotator', '', 'image-rotator', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(101, 0, 'Comercial', '', 'comercial', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Extraindo dados da tabela `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=1\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=pt-BR\nsite=pt-BR\n\n', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=0\nnew_usertype=Registered\nuseractivation=0\nfrontend_userparams=0\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.3\r\nDEV_STATUS=stable', 1),
(63, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, '', 1),
(73, 'Phoca Download', 'option=com_phocadownload', 0, 0, 'option=com_phocadownload', 'Phoca Download', 'com_phocadownload', 0, 'components/com_phocadownload/assets/images/icon-16-pdl-menu.png', 0, 'filename_or_name=filenametitle\ndownload_external_link=_self\ndisplay_downloads=0\ndisplay_description=0\ndisplay_detail=0\ndisplay_new=0\ndisplay_hot=0\ndisplay_most_download=0\nsection_ordering=1\ncategory_ordering=1\nfile_ordering=1\ndefault_pagination=20\npagination=5;10;15;20;50\ntheme=phocadownload-blue-rc\ndisplay_num_doc_secs=0\ndisplay_num_doc_secs_header=1\nlicense_box_height=300\n\n', 1),
(74, 'Control Panel', '', 0, 73, 'option=com_phocadownload', 'Control Panel', 'com_phocadownload', 0, 'components/com_phocadownload/assets/images/icon-16-pdl-control-panel.png', 0, '', 1),
(75, 'Files', '', 0, 73, 'option=com_phocadownload&view=phocadownloads', 'Files', 'com_phocadownload', 1, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-files.png', 0, '', 1),
(76, 'Sections', '', 0, 73, 'option=com_phocadownload&view=phocadownloadsecs', 'Sections', 'com_phocadownload', 2, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-section.png', 0, '', 1),
(77, 'Categories', '', 0, 73, 'option=com_phocadownload&view=phocadownloadcats', 'Categories', 'com_phocadownload', 3, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-category.png', 0, '', 1),
(78, 'Licenses', '', 0, 73, 'option=com_phocadownload&view=phocadownloadlics', 'Licenses', 'com_phocadownload', 4, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-lic.png', 0, '', 1),
(79, 'Settings', '', 0, 73, 'option=com_phocadownload&view=phocadownloadset', 'Settings', 'com_phocadownload', 5, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-settings.png', 0, '', 1),
(80, 'Statistics', '', 0, 73, 'option=com_phocadownload&view=phocadownloadstat', 'Statistics', 'com_phocadownload', 6, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-stat.png', 0, '', 1),
(81, 'Info', '', 0, 73, 'option=com_phocadownload&view=phocadownloadinfo', 'Info', 'com_phocadownload', 7, 'components/com_phocadownload/assets/images/icon-16-pdl-menu-info.png', 0, '', 1),
(82, 'JoomlaPack', 'option=com_joomlapack', 0, 0, 'option=com_joomlapack', 'JoomlaPack', 'com_joomlapack', 0, 'components/com_joomlapack/assets/images/joomlapack-16.png', 0, '', 1),
(83, 'BACKUP_NOW', '', 0, 82, 'option=com_joomlapack&view=backup', 'BACKUP_NOW', 'com_joomlapack', 0, 'components/com_joomlapack/assets/images/backup-16.png', 0, '', 1),
(84, 'CONFIGURATION', '', 0, 82, 'option=com_joomlapack&view=config', 'CONFIGURATION', 'com_joomlapack', 1, 'components/com_joomlapack/assets/images/config-16.png', 0, '', 1),
(85, 'ADMINISTER_BACKUP_FILES', '', 0, 82, 'option=com_joomlapack&view=buadmin', 'ADMINISTER_BACKUP_FILES', 'com_joomlapack', 2, 'components/com_joomlapack/assets/images/bufa-16.png', 0, '', 1),
(86, 'eXtplorer', 'option=com_extplorer', 0, 0, 'option=com_extplorer', 'eXtplorer', 'com_extplorer', 0, '../administrator/components/com_extplorer/images/joomla_x_icon.png', 0, '', 1),
(87, 'JCE Administration', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE Administration', 'com_jce', 0, '../administrator/components/com_jce/img/logo.png', 0, '', 1),
(88, 'Control Panel', '', 0, 87, 'option=com_jce', 'Control Panel', 'com_jce', 0, 'templates/khepri/images/menu/icon-16-cpanel.png', 0, '', 1),
(89, 'Configuration', '', 0, 87, 'option=com_jce&type=config', 'Configuration', 'com_jce', 1, 'templates/khepri/images/menu/icon-16-config.png', 0, '', 1),
(90, 'Groups', '', 0, 87, 'option=com_jce&type=group', 'Groups', 'com_jce', 2, 'templates/khepri/images/menu/icon-16-user.png', 0, '', 1),
(91, 'Plugins', '', 0, 87, 'option=com_jce&type=plugin', 'Plugins', 'com_jce', 3, 'templates/khepri/images/menu/icon-16-plugin.png', 0, '', 1),
(92, 'Install', '', 0, 87, 'option=com_jce&type=install', 'Install', 'com_jce', 4, 'templates/khepri/images/menu/icon-16-install.png', 0, '', 1),
(93, 'CSV Improved', 'option=com_csvimproved', 0, 0, 'option=com_csvimproved', 'CSV Improved', 'com_csvimproved', 0, 'components/com_csvimproved/assets/images/logo_16.png', 0, 'hostname=alfaeletro.com.br\n\n', 1),
(94, 'Templates', '', 0, 93, 'option=com_csvimproved&task=templates&controller=templates', 'Templates', 'com_csvimproved', 0, 'components/com_csvimproved/assets/images/template_16.png', 0, '', 1),
(95, 'Import', '', 0, 93, 'option=com_csvimproved&task=import&controller=import', 'Import', 'com_csvimproved', 1, 'components/com_csvimproved/assets/images/import_16.png', 0, '', 1),
(96, 'Export', '', 0, 93, 'option=com_csvimproved&task=export&controller=export', 'Export', 'com_csvimproved', 2, 'components/com_csvimproved/assets/images/export_16.png', 0, '', 1),
(97, 'Maintenance', '', 0, 93, 'option=com_csvimproved&task=maintenance&controller=maintenance', 'Maintenance', 'com_csvimproved', 3, 'components/com_csvimproved/assets/images/maintenance_16.png', 0, '', 1),
(98, 'Log', '', 0, 93, 'option=com_csvimproved&task=log&controller=log', 'Log', 'com_csvimproved', 4, 'components/com_csvimproved/assets/images/log_16.png', 0, '', 1),
(99, 'Available fields', '', 0, 93, 'option=com_csvimproved&task=availablefields&controller=availablefields', 'Available fields', 'com_csvimproved', 5, 'components/com_csvimproved/assets/images/av_fields_16.png', 0, '', 1),
(100, 'About', '', 0, 93, 'option=com_csvimproved&task=about&controller=about', 'About', 'com_csvimproved', 6, 'components/com_csvimproved/assets/images/about_16.png', 0, '', 1),
(101, 'Acajoom', 'option=com_acajoom', 0, 0, 'option=com_acajoom', 'Acajoom', 'com_acajoom', 0, '../administrator/components/com_acajoom/images/acajoom_icon.png', 0, '', 1),
(102, 'Lists', '', 0, 101, 'option=com_acajoom&act=list', 'Lists', 'com_acajoom', 0, '../includes/js/ThemeOffice/edit.png', 0, '', 1),
(103, 'Subscribers', '', 0, 101, 'option=com_acajoom&act=subscribers', 'Subscribers', 'com_acajoom', 1, '../includes/js/ThemeOffice/users_add.png', 0, '', 1),
(104, 'Newsletters', '', 0, 101, 'option=com_acajoom&act=mailing&listype=1', 'Newsletters', 'com_acajoom', 2, '../includes/js/ThemeOffice/messaging_inbox.png', 0, '', 1),
(105, 'Statistics', '', 0, 101, 'option=com_acajoom&act=statistics', 'Statistics', 'com_acajoom', 3, '../includes/js/ThemeOffice/query.png', 0, '', 1),
(106, 'Configuration', '', 0, 101, 'option=com_acajoom&act=configuration', 'Configuration', 'com_acajoom', 4, '../includes/js/ThemeOffice/menus.png', 0, '', 1),
(107, 'Import', '', 0, 101, 'option=com_acajoom&act=update', 'Import', 'com_acajoom', 5, '../includes/js/ThemeOffice/restore.png', 0, '', 1),
(108, 'About', '', 0, 101, 'option=com_acajoom&act=about', 'About', 'com_acajoom', 6, '../includes/js/ThemeOffice/credits.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Marcela de Souza', 'marcela-de-souza', 'Departamento Financeiro', 'Rua Dona Francisca, 415', 'Joinville', 'Santa Catarina', 'Brail', '89218-111', '(47)3029-1500', '(47)3029-1500', 'msn: financeiro@ldi.com.br', 'powered_by.png', 'top', 'marcela@alfaeletro.com.br', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=0\nshow_fax=0\nshow_webpage=1\nshow_misc=1\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 12, 0, '', 'http://www.alfaeletro.com.br'),
(2, 'Jeferson', 'jeferson', 'Departamento Comercial', 'Rua Dona Francisca, 4215', 'Joinville / Santo Antônio', '', '', '', '(47)3029-1500', '(47)3029-1500', 'msn:', '', NULL, 'jeferson@alfaeletro.com.br', 0, 1, 75, '2009-06-26 18:15:24', 2, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=0\nshow_fax=0\nshow_webpage=1\nshow_misc=1\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 101, 0, '', 'http://www.alfaeletro.com.br'),
(3, 'Thompson', 'thompson', 'Departamento Comercial', '', '', '', '', '', '(47)3029-1500', '', '', '', NULL, 'thompson@alfaeletro.com.br', 0, 1, 0, '0000-00-00 00:00:00', 3, 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=0\nshow_webpage=1\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 101, 0, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1127 ;

--
-- Extraindo dados da tabela `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1123, 'Empresa / Quem Somos', 'empresa--quem-somos', '', '<p>A empresa ALFA ELETRO Comércio de Produtos Eletro-Eletrônicos é uma empresa nascida em Joinville no final de 2008 com intuito de trazer para Joinville e região um novo conceito em atendimento.</p><p>Trabalhamos com a linha eletro-eletrônica Industrial</p><p>Nossa equipe é treinada a atender os clientes... </p>', '', 1, 0, 0, 0, '2009-06-11 15:53:37', 75, '', '2009-06-11 17:38:37', 75, 0, '0000-00-00 00:00:00', '2009-06-11 15:53:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 39, 'robots=\nauthor='),
(1124, 'Parceiros / Clientes', 'parceiros--clientes', '', 'asfsaf', '', 1, 0, 0, 0, '2009-06-11 17:33:00', 75, '', '2009-06-11 17:38:18', 75, 0, '0000-00-00 00:00:00', '2009-06-11 17:33:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 5, 'robots=\nauthor='),
(1125, 'Empresas / Localização', 'empresas-localizacao', '', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3577.7330751434943!2d-48.85526508496852!3d-26.270325183408485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94deafc4460cf451%3A0x44b7880ff0732396!2sR.+Dona+Francisca%2C+4215+-+Zona+Industrial+Norte%2C+Joinville+-+SC!5e0!3m2!1spt-BR!2sbr!4v1484102458711" width="720" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 1, 0, 0, 0, '2009-06-11 17:36:28', 62, '', '2017-01-11 02:45:39', 62, 0, '0000-00-00 00:00:00', '2009-06-11 17:36:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 3, '', '', 0, 36, 'robots=\nauthor='),
(1126, 'Fretes e Entregas', 'fretes-e-entregas', '', '<p>Trabalhamos com diferentes formas de entregas:</p><p> - Motoboy: Possuímos motoboy parceiro que está pronto para entregas dentro da cidade de Joinville e cidades vizinhas.</p><p> - Transportadora: Depende do Cliente.</p>', '', 1, 0, 0, 0, '2009-06-11 17:40:13', 75, '', '0000-00-00 00:00:00', 0, 75, '2009-06-18 02:03:52', '2009-06-11 17:40:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 22, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_content_frontpage`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Extraindo dados da tabela `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Admin', 0),
(25, 'users', '77', 0, 'Leonardo Vasconcellos', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(18, '', 25),
(25, '', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_available_fields`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_available_fields` (
  `id` int(11) NOT NULL auto_increment,
  `csvi_name` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `vm_name` varchar(55) character set latin1 collate latin1_general_ci NOT NULL,
  `vm_table` varchar(55) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `vm_name_table` (`vm_name`,`vm_table`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=419 ;

--
-- Extraindo dados da tabela `jos_csvi_available_fields`
--

INSERT INTO `jos_csvi_available_fields` (`id`, `csvi_name`, `vm_name`, `vm_table`) VALUES
(1, 'template_id', 'template_id', 'csvi_templates'),
(2, 'template_name', 'template_name', 'csvi_templates'),
(3, 'template_type', 'template_type', 'csvi_templates'),
(4, 'skip_first_line', 'skip_first_line', 'csvi_templates'),
(5, 'use_column_headers', 'use_column_headers', 'csvi_templates'),
(6, 'collect_debug_info', 'collect_debug_info', 'csvi_templates'),
(7, 'overwrite_existing_data', 'overwrite_existing_data', 'csvi_templates'),
(8, 'skip_default_value', 'skip_default_value', 'csvi_templates'),
(9, 'show_preview', 'show_preview', 'csvi_templates'),
(10, 'include_column_headers', 'include_column_headers', 'csvi_templates'),
(11, 'text_enclosure', 'text_enclosure', 'csvi_templates'),
(12, 'field_delimiter', 'field_delimiter', 'csvi_templates'),
(13, 'export_type', 'export_type', 'csvi_templates'),
(14, 'export_site', 'export_site', 'csvi_templates'),
(15, 'thumb_width', 'thumb_width', 'csvi_templates'),
(16, 'thumb_height', 'thumb_height', 'csvi_templates'),
(17, 'shopper_group_id', 'shopper_group_id', 'csvi_templates'),
(18, 'producturl_suffix', 'producturl_suffix', 'csvi_templates'),
(19, 'file_location', 'file_location', 'csvi_templates'),
(20, 'product_publish', 'product_publish', 'csvi_templates'),
(21, 'max_execution_time', 'max_execution_time', 'csvi_templates'),
(22, 'max_input_time', 'max_input_time', 'csvi_templates'),
(23, 'memory_limit', 'memory_limit', 'csvi_templates'),
(24, 'post_max_size', 'post_max_size', 'csvi_templates'),
(25, 'upload_max_filesize', 'upload_max_filesize', 'csvi_templates'),
(26, 'export_filename', 'export_filename', 'csvi_templates'),
(27, 'manufacturer', 'manufacturer', 'csvi_templates'),
(28, 'thumb_create', 'thumb_create', 'csvi_templates'),
(29, 'ignore_non_exist', 'ignore_non_exist', 'csvi_templates'),
(30, 'thumb_extension', 'thumb_extension', 'csvi_templates'),
(31, 'append_categories', 'append_categories', 'csvi_templates'),
(32, 'export_date_format', 'export_date_format', 'csvi_templates'),
(33, 'add_currency_to_price', 'add_currency_to_price', 'csvi_templates'),
(34, 'use_system_limits', 'use_system_limits', 'csvi_templates'),
(35, 'id', 'id', 'csvi_template_fields'),
(36, 'field_template_id', 'field_template_id', 'csvi_template_fields'),
(37, 'field_name', 'field_name', 'csvi_template_fields'),
(38, 'field_column_header', 'field_column_header', 'csvi_template_fields'),
(39, 'field_default_value', 'field_default_value', 'csvi_template_fields'),
(40, 'field_order', 'field_order', 'csvi_template_fields'),
(41, 'published', 'published', 'csvi_template_fields'),
(42, 'checked_out', 'checked_out', 'csvi_template_fields'),
(43, 'category_id', 'category_id', 'vm_category'),
(44, 'vendor_id', 'vendor_id', 'vm_category'),
(45, 'category_name', 'category_name', 'vm_category'),
(46, 'category_description', 'category_description', 'vm_category'),
(47, 'category_thumb_image', 'category_thumb_image', 'vm_category'),
(48, 'category_full_image', 'category_full_image', 'vm_category'),
(49, 'category_publish', 'category_publish', 'vm_category'),
(50, 'cdate', 'cdate', 'vm_category'),
(51, 'mdate', 'mdate', 'vm_category'),
(52, 'category_browsepage', 'category_browsepage', 'vm_category'),
(53, 'category_products_per_row', 'products_per_row', 'vm_category'),
(54, 'category_flypage', 'category_flypage', 'vm_category'),
(55, 'category_list_order', 'list_order', 'vm_category'),
(56, 'category_parent_id', 'category_parent_id', 'vm_category_xref'),
(57, 'category_child_id', 'category_child_id', 'vm_category_xref'),
(58, 'category_list', 'category_list', 'vm_category_xref'),
(59, 'country_name', 'country_name', 'vm_country'),
(60, 'coupon_id', 'coupon_id', 'vm_coupons'),
(61, 'coupon_code', 'coupon_code', 'vm_coupons'),
(62, 'percent_or_total', 'percent_or_total', 'vm_coupons'),
(63, 'coupon_type', 'coupon_type', 'vm_coupons'),
(64, 'coupon_value', 'coupon_value', 'vm_coupons'),
(65, 'manufacturer_id', 'manufacturer_id', 'vm_manufacturer'),
(66, 'manufacturer_name', 'mf_name', 'vm_manufacturer'),
(67, 'manufacturer_email', 'mf_email', 'vm_manufacturer'),
(68, 'manufacturer_desc', 'mf_desc', 'vm_manufacturer'),
(69, 'manufacturer_category_id', 'mf_category_id', 'vm_manufacturer'),
(70, 'manufacturer_url', 'mf_url', 'vm_manufacturer'),
(71, 'manufacturer_category_id', 'mf_category_id', 'vm_manufacturer_category'),
(72, 'manufacturer_category_name', 'mf_category_name', 'vm_manufacturer_category'),
(73, 'manufacturer_category_desc', 'mf_category_desc', 'vm_manufacturer_category'),
(74, 'order_item_id', 'order_item_id', 'vm_order_item'),
(75, 'order_id', 'order_id', 'vm_order_item'),
(76, 'user_info_id', 'user_info_id', 'vm_order_item'),
(77, 'vendor_id', 'vendor_id', 'vm_order_item'),
(78, 'product_id', 'product_id', 'vm_order_item'),
(79, 'product_sku', 'order_item_sku', 'vm_order_item'),
(80, 'product_name', 'order_item_name', 'vm_order_item'),
(81, 'product_quantity', 'product_quantity', 'vm_order_item'),
(82, 'product_price', 'product_item_price', 'vm_order_item'),
(83, 'product_final_price', 'product_final_price', 'vm_order_item'),
(84, 'order_item_currency', 'order_item_currency', 'vm_order_item'),
(85, 'order_status', 'order_status', 'vm_order_item'),
(86, 'cdate', 'cdate', 'vm_order_item'),
(87, 'mdate', 'mdate', 'vm_order_item'),
(88, 'product_attribute', 'product_attribute', 'vm_order_item'),
(89, 'order_id', 'order_id', 'vm_order_payment'),
(90, 'payment_method_id', 'payment_method_id', 'vm_order_payment'),
(91, 'order_payment_code', 'order_payment_code', 'vm_order_payment'),
(92, 'order_payment_number', 'order_payment_number', 'vm_order_payment'),
(93, 'order_payment_expire', 'order_payment_expire', 'vm_order_payment'),
(94, 'order_payment_name', 'order_payment_name', 'vm_order_payment'),
(95, 'order_payment_log', 'order_payment_log', 'vm_order_payment'),
(96, 'order_payment_trans_id', 'order_payment_trans_id', 'vm_order_payment'),
(97, 'order_status_id', 'order_status_id', 'vm_order_status'),
(98, 'order_status_code', 'order_status_code', 'vm_order_status'),
(99, 'order_status_name', 'order_status_name', 'vm_order_status'),
(100, 'order_status_description', 'order_status_description', 'vm_order_status'),
(101, 'list_order', 'list_order', 'vm_order_status'),
(102, 'vendor_id', 'vendor_id', 'vm_order_status'),
(103, 'order_info_id', 'order_info_id', 'vm_order_user_info'),
(104, 'order_id', 'order_id', 'vm_order_user_info'),
(105, 'user_id', 'user_id', 'vm_order_user_info'),
(106, 'address_type', 'address_type', 'vm_order_user_info'),
(107, 'address_type_name', 'address_type_name', 'vm_order_user_info'),
(108, 'company', 'company', 'vm_order_user_info'),
(109, 'title', 'title', 'vm_order_user_info'),
(110, 'last_name', 'last_name', 'vm_order_user_info'),
(111, 'first_name', 'first_name', 'vm_order_user_info'),
(112, 'middle_name', 'middle_name', 'vm_order_user_info'),
(113, 'phone_1', 'phone_1', 'vm_order_user_info'),
(114, 'phone_2', 'phone_2', 'vm_order_user_info'),
(115, 'fax', 'fax', 'vm_order_user_info'),
(116, 'address_1', 'address_1', 'vm_order_user_info'),
(117, 'address_2', 'address_2', 'vm_order_user_info'),
(118, 'city', 'city', 'vm_order_user_info'),
(119, 'state', 'state', 'vm_order_user_info'),
(120, 'country', 'country', 'vm_order_user_info'),
(121, 'zip', 'zip', 'vm_order_user_info'),
(122, 'user_email', 'user_email', 'vm_order_user_info'),
(123, 'extra_field_1', 'extra_field_1', 'vm_order_user_info'),
(124, 'extra_field_2', 'extra_field_2', 'vm_order_user_info'),
(125, 'extra_field_3', 'extra_field_3', 'vm_order_user_info'),
(126, 'extra_field_4', 'extra_field_4', 'vm_order_user_info'),
(127, 'extra_field_5', 'extra_field_5', 'vm_order_user_info'),
(128, 'bank_account_nr', 'bank_account_nr', 'vm_order_user_info'),
(129, 'bank_name', 'bank_name', 'vm_order_user_info'),
(130, 'bank_sort_code', 'bank_sort_code', 'vm_order_user_info'),
(131, 'bank_iban', 'bank_iban', 'vm_order_user_info'),
(132, 'bank_account_holder', 'bank_account_holder', 'vm_order_user_info'),
(133, 'bank_account_type', 'bank_account_type', 'vm_order_user_info'),
(134, 'order_id', 'order_id', 'vm_orders'),
(135, 'user_id', 'user_id', 'vm_orders'),
(136, 'vendor_id', 'vendor_id', 'vm_orders'),
(137, 'order_number', 'order_number', 'vm_orders'),
(138, 'user_info_id', 'user_info_id', 'vm_orders'),
(139, 'order_total', 'order_total', 'vm_orders'),
(140, 'order_subtotal', 'order_subtotal', 'vm_orders'),
(141, 'order_tax', 'order_tax', 'vm_orders'),
(142, 'order_tax_details', 'order_tax_details', 'vm_orders'),
(143, 'order_shipping', 'order_shipping', 'vm_orders'),
(144, 'order_shipping_tax', 'order_shipping_tax', 'vm_orders'),
(145, 'coupon_discount', 'coupon_discount', 'vm_orders'),
(146, 'coupon_code', 'coupon_code', 'vm_orders'),
(147, 'order_discount', 'order_discount', 'vm_orders'),
(148, 'order_currency', 'order_currency', 'vm_orders'),
(149, 'order_status', 'order_status', 'vm_orders'),
(150, 'order_date', 'cdate', 'vm_orders'),
(151, 'order_modified_date', 'mdate', 'vm_orders'),
(152, 'ship_method_id', 'ship_method_id', 'vm_orders'),
(153, 'customer_note', 'customer_note', 'vm_orders'),
(154, 'ip_address', 'ip_address', 'vm_orders'),
(155, 'payment_method_id', 'payment_method_id', 'vm_payment_method'),
(156, 'vendor_id', 'vendor_id', 'vm_payment_method'),
(157, 'payment_method_name', 'payment_method_name', 'vm_payment_method'),
(158, 'payment_class', 'payment_class', 'vm_payment_method'),
(159, 'shopper_group_id', 'shopper_group_id', 'vm_payment_method'),
(160, 'payment_method_discount', 'payment_method_discount', 'vm_payment_method'),
(161, 'payment_method_discount_is_percent', 'payment_method_discount_is_percent', 'vm_payment_method'),
(162, 'payment_method_discount_max_amount', 'payment_method_discount_max_amount', 'vm_payment_method'),
(163, 'payment_method_discount_min_amount', 'payment_method_discount_min_amount', 'vm_payment_method'),
(164, 'list_order', 'list_order', 'vm_payment_method'),
(165, 'payment_method_code', 'payment_method_code', 'vm_payment_method'),
(166, 'enable_processor', 'enable_processor', 'vm_payment_method'),
(167, 'is_creditcard', 'is_creditcard', 'vm_payment_method'),
(168, 'payment_enabled', 'payment_enabled', 'vm_payment_method'),
(169, 'accepted_creditcards', 'accepted_creditcards', 'vm_payment_method'),
(170, 'payment_extrainfo', 'payment_extrainfo', 'vm_payment_method'),
(171, 'payment_passkey', 'payment_passkey', 'vm_payment_method'),
(172, 'product_id', 'product_id', 'vm_product'),
(173, 'vendor_id', 'vendor_id', 'vm_product'),
(174, 'product_parent_id', 'product_parent_id', 'vm_product'),
(175, 'product_sku', 'product_sku', 'vm_product'),
(176, 'product_s_desc', 'product_s_desc', 'vm_product'),
(177, 'product_desc', 'product_desc', 'vm_product'),
(178, 'product_thumb_image', 'product_thumb_image', 'vm_product'),
(179, 'product_full_image', 'product_full_image', 'vm_product'),
(180, 'product_publish', 'product_publish', 'vm_product'),
(181, 'product_weight', 'product_weight', 'vm_product'),
(182, 'product_weight_uom', 'product_weight_uom', 'vm_product'),
(183, 'product_length', 'product_length', 'vm_product'),
(184, 'product_width', 'product_width', 'vm_product'),
(185, 'product_height', 'product_height', 'vm_product'),
(186, 'product_lwh_uom', 'product_lwh_uom', 'vm_product'),
(187, 'product_url', 'product_url', 'vm_product'),
(188, 'product_in_stock', 'product_in_stock', 'vm_product'),
(189, 'product_available_date', 'product_available_date', 'vm_product'),
(190, 'product_availability', 'product_availability', 'vm_product'),
(191, 'product_special', 'product_special', 'vm_product'),
(192, 'product_discount_id', 'product_discount_id', 'vm_product'),
(193, 'ship_code_id', 'ship_code_id', 'vm_product'),
(194, 'product_cdate', 'cdate', 'vm_product'),
(195, 'product_mdate', 'mdate', 'vm_product'),
(196, 'product_name', 'product_name', 'vm_product'),
(197, 'product_sales', 'product_sales', 'vm_product'),
(198, 'attribute', 'attribute', 'vm_product'),
(199, 'custom_attribute', 'custom_attribute', 'vm_product'),
(200, 'product_tax_id', 'product_tax_id', 'vm_product'),
(201, 'product_unit', 'product_unit', 'vm_product'),
(202, 'product_packaging', 'product_packaging', 'vm_product'),
(203, 'child_options', 'child_options', 'vm_product'),
(204, 'quantity_options', 'quantity_options', 'vm_product'),
(205, 'child_option_ids', 'child_option_ids', 'vm_product'),
(206, 'product_order_levels', 'product_order_levels', 'vm_product'),
(207, 'attribute_id', 'attribute_id', 'vm_product_attribute'),
(208, 'product_id', 'product_id', 'vm_product_attribute'),
(209, 'attribute_name', 'attribute_name', 'vm_product_attribute'),
(210, 'attribute_value', 'attribute_value', 'vm_product_attribute'),
(211, 'product_id', 'product_id', 'vm_product_attribute_sku'),
(212, 'attribute_name', 'attribute_name', 'vm_product_attribute_sku'),
(213, 'attribute_list', 'attribute_list', 'vm_product_attribute_sku'),
(214, 'category_id', 'category_id', 'vm_product_category_xref'),
(215, 'product_id', 'product_id', 'vm_product_category_xref'),
(216, 'product_list', 'product_list', 'vm_product_category_xref'),
(217, 'discount_id', 'discount_id', 'vm_product_discount'),
(218, 'product_discount', 'amount', 'vm_product_discount'),
(219, 'is_percent', 'is_percent', 'vm_product_discount'),
(220, 'product_discount_date_start', 'start_date', 'vm_product_discount'),
(221, 'product_discount_date_end', 'end_date', 'vm_product_discount'),
(222, 'file_id', 'file_id', 'vm_product_files'),
(223, 'file_product_id', 'file_product_id', 'vm_product_files'),
(224, 'product_files_file_name', 'file_name', 'vm_product_files'),
(225, 'product_files_file_title', 'file_title', 'vm_product_files'),
(226, 'product_files_file_description', 'file_description', 'vm_product_files'),
(227, 'file_extension', 'file_extension', 'vm_product_files'),
(228, 'file_mimetype', 'file_mimetype', 'vm_product_files'),
(229, 'product_files_file_url', 'file_url', 'vm_product_files'),
(230, 'product_files_file_published', 'file_published', 'vm_product_files'),
(231, 'file_is_image', 'file_is_image', 'vm_product_files'),
(232, 'file_image_height', 'file_image_height', 'vm_product_files'),
(233, 'file_image_width', 'file_image_width', 'vm_product_files'),
(234, 'file_image_thumb_height', 'file_image_thumb_height', 'vm_product_files'),
(235, 'file_image_thumb_width', 'file_image_thumb_width', 'vm_product_files'),
(236, 'product_id', 'product_id', 'vm_product_mf_xref'),
(237, 'manufacturer_id', 'manufacturer_id', 'vm_product_mf_xref'),
(238, 'product_price_id', 'product_price_id', 'vm_product_price'),
(239, 'product_id', 'product_id', 'vm_product_price'),
(240, 'product_price', 'product_price', 'vm_product_price'),
(241, 'product_currency', 'product_currency', 'vm_product_price'),
(242, 'product_price_vdate', 'product_price_vdate', 'vm_product_price'),
(243, 'product_price_edate', 'product_price_edate', 'vm_product_price'),
(244, 'cdate', 'cdate', 'vm_product_price'),
(245, 'mdate', 'mdate', 'vm_product_price'),
(246, 'shopper_group_id', 'shopper_group_id', 'vm_product_price'),
(247, 'price_quantity_start', 'price_quantity_start', 'vm_product_price'),
(248, 'price_quantity_end', 'price_quantity_end', 'vm_product_price'),
(249, 'product_id', 'product_id', 'vm_product_product_type_xref'),
(250, 'product_type_id', 'product_type_id', 'vm_product_product_type_xref'),
(251, 'product_id', 'product_id', 'vm_product_relations'),
(252, 'related_products', 'related_products', 'vm_product_relations'),
(253, 'product_type_id', 'product_type_id', 'vm_product_type'),
(254, 'product_type_name', 'product_type_name', 'vm_product_type'),
(255, 'product_type_description', 'product_type_description', 'vm_product_type'),
(256, 'product_type_publish', 'product_type_publish', 'vm_product_type'),
(257, 'product_type_browsepage', 'product_type_browsepage', 'vm_product_type'),
(258, 'product_type_flypage', 'product_type_flypage', 'vm_product_type'),
(259, 'product_type_list_order', 'product_type_list_order', 'vm_product_type'),
(260, 'product_type_id', 'product_type_id', 'vm_product_type_parameter'),
(261, 'parameter_name', 'parameter_name', 'vm_product_type_parameter'),
(262, 'parameter_label', 'parameter_label', 'vm_product_type_parameter'),
(263, 'parameter_description', 'parameter_description', 'vm_product_type_parameter'),
(264, 'parameter_list_order', 'parameter_list_order', 'vm_product_type_parameter'),
(265, 'parameter_type', 'parameter_type', 'vm_product_type_parameter'),
(266, 'parameter_values', 'parameter_values', 'vm_product_type_parameter'),
(267, 'parameter_multiselect', 'parameter_multiselect', 'vm_product_type_parameter'),
(268, 'parameter_default', 'parameter_default', 'vm_product_type_parameter'),
(269, 'parameter_unit', 'parameter_unit', 'vm_product_type_parameter'),
(270, 'shopper_group_id', 'shopper_group_id', 'vm_shopper_group'),
(271, 'vendor_id', 'vendor_id', 'vm_shopper_group'),
(272, 'shopper_group_name', 'shopper_group_name', 'vm_shopper_group'),
(273, 'shopper_group_desc', 'shopper_group_desc', 'vm_shopper_group'),
(274, 'shopper_group_discount', 'shopper_group_discount', 'vm_shopper_group'),
(275, 'show_price_including_tax', 'show_price_including_tax', 'vm_shopper_group'),
(276, 'default', 'default', 'vm_shopper_group'),
(277, 'user_id', 'user_id', 'vm_shopper_vendor_xref'),
(278, 'vendor_id', 'vendor_id', 'vm_shopper_vendor_xref'),
(279, 'shopper_group_id', 'shopper_group_id', 'vm_shopper_vendor_xref'),
(280, 'customer_number', 'customer_number', 'vm_shopper_vendor_xref'),
(281, 'tax_rate_id', 'tax_rate_id', 'vm_tax_rate'),
(282, 'vendor_id', 'vendor_id', 'vm_tax_rate'),
(283, 'tax_state', 'tax_state', 'vm_tax_rate'),
(284, 'tax_country', 'tax_country', 'vm_tax_rate'),
(285, 'mdate', 'mdate', 'vm_tax_rate'),
(286, 'product_tax', 'tax_rate', 'vm_tax_rate'),
(287, 'user_info_id', 'user_info_id', 'vm_user_info'),
(288, 'user_id', 'user_id', 'vm_user_info'),
(289, 'address_type', 'address_type', 'vm_user_info'),
(290, 'address_type_name', 'address_type_name', 'vm_user_info'),
(291, 'company', 'company', 'vm_user_info'),
(292, 'title', 'title', 'vm_user_info'),
(293, 'last_name', 'last_name', 'vm_user_info'),
(294, 'first_name', 'first_name', 'vm_user_info'),
(295, 'middle_name', 'middle_name', 'vm_user_info'),
(296, 'phone_1', 'phone_1', 'vm_user_info'),
(297, 'phone_2', 'phone_2', 'vm_user_info'),
(298, 'fax', 'fax', 'vm_user_info'),
(299, 'address_1', 'address_1', 'vm_user_info'),
(300, 'address_2', 'address_2', 'vm_user_info'),
(301, 'city', 'city', 'vm_user_info'),
(302, 'state', 'state', 'vm_user_info'),
(303, 'country', 'country', 'vm_user_info'),
(304, 'zip', 'zip', 'vm_user_info'),
(305, 'user_email', 'user_email', 'vm_user_info'),
(306, 'extra_field_1', 'extra_field_1', 'vm_user_info'),
(307, 'extra_field_2', 'extra_field_2', 'vm_user_info'),
(308, 'extra_field_3', 'extra_field_3', 'vm_user_info'),
(309, 'extra_field_4', 'extra_field_4', 'vm_user_info'),
(310, 'extra_field_5', 'extra_field_5', 'vm_user_info'),
(311, 'cdate', 'cdate', 'vm_user_info'),
(312, 'mdate', 'mdate', 'vm_user_info'),
(313, 'perms', 'perms', 'vm_user_info'),
(314, 'bank_account_nr', 'bank_account_nr', 'vm_user_info'),
(315, 'bank_name', 'bank_name', 'vm_user_info'),
(316, 'bank_sort_code', 'bank_sort_code', 'vm_user_info'),
(317, 'bank_iban', 'bank_iban', 'vm_user_info'),
(318, 'bank_account_holder', 'bank_account_holder', 'vm_user_info'),
(319, 'bank_account_type', 'bank_account_type', 'vm_user_info'),
(320, 'vendor_id', 'vendor_id', 'vm_vendor'),
(321, 'vendor_name', 'vendor_name', 'vm_vendor'),
(322, 'contact_last_name', 'contact_last_name', 'vm_vendor'),
(323, 'contact_first_name', 'contact_first_name', 'vm_vendor'),
(324, 'contact_middle_name', 'contact_middle_name', 'vm_vendor'),
(325, 'contact_title', 'contact_title', 'vm_vendor'),
(326, 'contact_phone_1', 'contact_phone_1', 'vm_vendor'),
(327, 'contact_phone_2', 'contact_phone_2', 'vm_vendor'),
(328, 'contact_fax', 'contact_fax', 'vm_vendor'),
(329, 'contact_email', 'contact_email', 'vm_vendor'),
(330, 'vendor_phone', 'vendor_phone', 'vm_vendor'),
(331, 'vendor_address_1', 'vendor_address_1', 'vm_vendor'),
(332, 'vendor_address_2', 'vendor_address_2', 'vm_vendor'),
(333, 'vendor_city', 'vendor_city', 'vm_vendor'),
(334, 'vendor_state', 'vendor_state', 'vm_vendor'),
(335, 'vendor_country', 'vendor_country', 'vm_vendor'),
(336, 'vendor_zip', 'vendor_zip', 'vm_vendor'),
(337, 'vendor_store_name', 'vendor_store_name', 'vm_vendor'),
(338, 'vendor_store_desc', 'vendor_store_desc', 'vm_vendor'),
(339, 'vendor_category_id', 'vendor_category_id', 'vm_vendor'),
(340, 'vendor_thumb_image', 'vendor_thumb_image', 'vm_vendor'),
(341, 'vendor_full_image', 'vendor_full_image', 'vm_vendor'),
(342, 'vendor_currency', 'vendor_currency', 'vm_vendor'),
(343, 'cdate', 'cdate', 'vm_vendor'),
(344, 'mdate', 'mdate', 'vm_vendor'),
(345, 'vendor_image_path', 'vendor_image_path', 'vm_vendor'),
(346, 'vendor_terms_of_service', 'vendor_terms_of_service', 'vm_vendor'),
(347, 'vendor_url', 'vendor_url', 'vm_vendor'),
(348, 'vendor_min_pov', 'vendor_min_pov', 'vm_vendor'),
(349, 'vendor_freeshipping', 'vendor_freeshipping', 'vm_vendor'),
(350, 'vendor_currency_display_style', 'vendor_currency_display_style', 'vm_vendor'),
(351, 'vendor_accepted_currencies', 'vendor_accepted_currencies', 'vm_vendor'),
(352, 'vendor_address_format', 'vendor_address_format', 'vm_vendor'),
(353, 'vendor_date_format', 'vendor_date_format', 'vm_vendor'),
(354, 'vendor_category_id', 'vendor_category_id', 'vm_vendor_category'),
(355, 'vendor_category_name', 'vendor_category_name', 'vm_vendor_category'),
(356, 'vendor_category_desc', 'vendor_category_desc', 'vm_vendor_category'),
(357, 'id', 'id', 'users'),
(358, 'name', 'name', 'users'),
(359, 'username', 'username', 'users'),
(360, 'user_email', 'email', 'users'),
(361, 'password', 'password', 'users'),
(362, 'usertype', 'usertype', 'users'),
(363, 'block', 'block', 'users'),
(364, 'sendemail', 'sendEmail', 'users'),
(365, 'gid', 'gid', 'users'),
(366, 'registerdate', 'registerDate', 'users'),
(367, 'lastvisitDate', 'lastvisitDate', 'users'),
(368, 'activation', 'activation', 'users'),
(369, 'params', 'params', 'users'),
(370, 'category_path', 'category_path', 'productimport'),
(371, 'category_id', 'category_id', 'productimport'),
(372, 'attributes', 'attributes', 'productimport'),
(373, 'attributes', 'attributes', 'productexport'),
(374, 'attribute_values', 'attribute_values', 'productimport'),
(375, 'product_box', 'product_box', 'productimport'),
(376, 'product_delete', 'product_delete', 'productimport'),
(377, 'product_parent_sku', 'product_parent_sku', 'productimport'),
(378, 'product_parent_sku', 'product_parent_sku', 'productexport'),
(379, 'price_with_tax', 'price_with_tax', 'productimport'),
(380, 'product_sku', 'product_sku', 'multiplepricesimport'),
(381, 'price_delete', 'price_delete', 'multiplepricesimport'),
(382, 'shopper_group_name', 'shopper_group_name', 'multiplepricesimport'),
(383, 'shopper_group_name', 'shopper_group_name', 'multiplepricesexport'),
(384, 'product_sku', 'product_sku', 'productfilesimport'),
(385, 'product_sku', 'product_sku', 'productfilesexport'),
(386, 'product_sku', 'product_sku', 'multiplepricesexport'),
(387, 'product_files_download', 'product_files_download', 'productfilesimport'),
(388, 'product_files_download', 'product_files_download', 'productfilesexport'),
(389, 'product_type_name', 'product_type_name', 'producttypeparametersimport'),
(390, 'product_type_parameter_delete', 'product_type_parameter_delete', 'producttypeparametersimport'),
(391, 'product_sku', 'product_sku', 'producttypenamesimport'),
(392, 'product_sku', 'product_sku', 'producttypenamesexport'),
(393, 'product_type_name', 'product_type_name', 'producttypenamesexport'),
(394, 'product_type_name', 'product_type_name', 'producttypenamesimport'),
(395, 'manufacturer_category_name', 'manufacturer_category_name', 'manufacturerimport'),
(396, 'manufacturer_category_delete', 'manufacturer_category_delete', 'manufacturercategoryimport'),
(397, 'category_path', 'category_path', 'categorydetailsimport'),
(398, 'category_path', 'category_path', 'categorydetailsexport'),
(399, 'category_path', 'category_path', 'productexport'),
(400, 'category_id', 'category_id', 'productexport'),
(401, 'custom', 'custom', 'productexport'),
(402, 'custom', 'custom', 'userinfoexport'),
(403, 'full_name', 'fullname', 'userinfoexport'),
(404, 'full_name', 'fullname', 'orderexport'),
(405, 'product_price_total', 'product_price_total', 'orderexport'),
(406, 'total_order_items', 'total_order_items', 'orderexport'),
(407, 'discount_percentage', 'discount_percentage', 'orderexport'),
(408, 'picture_url', 'picture_url', 'productexport'),
(409, 'price_with_tax', 'price_with_tax', 'productexport'),
(410, 'discount_with_tax', 'discount_with_tax', 'productexport'),
(411, 'username', 'username', 'orderexport'),
(412, 'custom', 'custom', 'orderexport'),
(413, 'vendor_name', 'vendor_name', 'userinfoexport'),
(414, 'vendor_name', 'vendor_name', 'userinfoimport'),
(415, 'price_with_discount', 'price_with_discount', 'productexport'),
(416, 'template_name', 'template_name', 'templatefieldsimport'),
(417, 'template_name', 'template_name', 'templatefieldsexport'),
(418, 'attribute_values', 'attribute_values', 'productexport');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_currency`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_currency` (
  `currency_id` tinyint(4) NOT NULL auto_increment,
  `currency_code` varchar(3) character set latin1 collate latin1_general_ci default NULL,
  `currency_rate` varchar(55) character set latin1 collate latin1_general_ci default NULL,
  PRIMARY KEY  (`currency_id`),
  UNIQUE KEY `currency_code` (`currency_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_csvi_currency`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_logs`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_logs` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `logstamp` datetime NOT NULL,
  `action` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `action_type` varchar(255) character set latin1 collate latin1_general_ci NOT NULL default '',
  `template_name` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `records` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_csvi_logs`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_log_details`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_log_details` (
  `id` int(11) NOT NULL auto_increment,
  `log_id` int(11) NOT NULL,
  `description` text character set latin1 collate latin1_general_ci NOT NULL,
  `result` varchar(45) character set latin1 collate latin1_general_ci NOT NULL,
  `status` varchar(45) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_csvi_log_details`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_templates`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_templates` (
  `template_id` tinyint(2) NOT NULL auto_increment,
  `template_name` varchar(255) character set latin1 collate latin1_general_ci NOT NULL default '',
  `template_type` varchar(50) character set latin1 collate latin1_general_ci NOT NULL,
  `skip_first_line` tinyint(1) NOT NULL default '0',
  `use_column_headers` tinyint(1) NOT NULL default '0',
  `collect_debug_info` tinyint(1) NOT NULL default '0',
  `overwrite_existing_data` tinyint(1) NOT NULL default '1',
  `skip_default_value` tinyint(1) NOT NULL default '0',
  `show_preview` tinyint(1) NOT NULL default '0',
  `include_column_headers` tinyint(1) NOT NULL default '0',
  `text_enclosure` varchar(2) character set latin1 collate latin1_general_ci NOT NULL default '~',
  `field_delimiter` varchar(2) character set latin1 collate latin1_general_ci NOT NULL default '^',
  `export_type` varchar(10) character set latin1 collate latin1_general_ci NOT NULL default 'csv',
  `export_site` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `thumb_width` int(4) default '0',
  `thumb_height` int(4) default '0',
  `shopper_group_id` int(4) unsigned default NULL,
  `producturl_suffix` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `file_location` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `product_publish` varchar(1) character set latin1 collate latin1_general_ci default NULL,
  `max_execution_time` int(4) default NULL,
  `max_input_time` int(4) default NULL,
  `memory_limit` int(4) default NULL,
  `post_max_size` int(4) default NULL,
  `upload_max_filesize` int(4) default NULL,
  `export_filename` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `manufacturer` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `thumb_create` tinyint(1) NOT NULL default '0',
  `ignore_non_exist` tinyint(1) NOT NULL default '0',
  `thumb_extension` enum('none','jpg','gif','png') character set latin1 collate latin1_general_ci NOT NULL default 'none',
  `append_categories` tinyint(1) NOT NULL default '0',
  `export_date_format` varchar(25) character set latin1 collate latin1_general_ci default 'd/m/Y H:i:s',
  `add_currency_to_price` tinyint(1) NOT NULL default '0',
  `use_system_limits` tinyint(1) default '0',
  PRIMARY KEY  (`template_id`),
  UNIQUE KEY `name` (`template_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `jos_csvi_templates`
--

INSERT INTO `jos_csvi_templates` (`template_id`, `template_name`, `template_type`, `skip_first_line`, `use_column_headers`, `collect_debug_info`, `overwrite_existing_data`, `skip_default_value`, `show_preview`, `include_column_headers`, `text_enclosure`, `field_delimiter`, `export_type`, `export_site`, `thumb_width`, `thumb_height`, `shopper_group_id`, `producturl_suffix`, `file_location`, `product_publish`, `max_execution_time`, `max_input_time`, `memory_limit`, `post_max_size`, `upload_max_filesize`, `export_filename`, `manufacturer`, `thumb_create`, `ignore_non_exist`, `thumb_extension`, `append_categories`, `export_date_format`, `add_currency_to_price`, `use_system_limits`) VALUES
(1, 'CSVI Google Base Export XML', 'productexport', 0, 1, 1, 1, 0, 0, 1, '~', '^', 'xml', 'froogle', 0, 0, NULL, NULL, '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(2, 'CSVI Product Import', 'productimport', 1, 0, 0, 1, 0, 1, 0, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(3, 'CSVI Product Export', 'productexport', 0, 0, 0, 0, 0, 0, 1, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(4, 'CSVI Product files import', 'productfilesupload', 1, 0, 0, 1, 0, 1, 0, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(5, 'CSVI Multiple Prices import', 'multiplepricesimport', 1, 0, 0, 1, 0, 1, 0, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(6, 'CSVI Multiple Prices export', 'multiplepricesexport', 0, 0, 0, 0, 0, 0, 1, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(7, 'CSVI Manufacturer details import', 'manufacturerimport', 1, 0, 0, 1, 0, 1, 0, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(8, 'CSVI Category details import', 'categorydetailsimport', 1, 0, 0, 1, 0, 1, 0, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(9, 'CSVI Category details export', 'categorydetailsexport', 0, 0, 0, 0, 0, 0, 1, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(10, 'CSVI Product files export', 'productfilesexport', 1, 0, 0, 1, 0, 1, 1, '~', '^', 'csv', '', 0, 0, 0, '', '', '', 90, 90, 64, 50, 90, NULL, NULL, 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0),
(11, 'Exportação de Usuários', 'userinfoexport', 0, 0, 0, 0, 0, 0, 1, '~', '^', 'csv', '', 0, 0, 0, '', 'E:\\home\\alfaeletro\\web\\components\\com_virtuemart\\shop_image\\product', '', 90, 90, 64, 50, 50, '', '0', 0, 0, 'none', 0, 'd/m/Y H:i:s', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_template_fields`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_template_fields` (
  `id` int(11) NOT NULL auto_increment,
  `field_template_id` int(11) NOT NULL default '0',
  `field_name` varchar(128) character set latin1 collate latin1_general_ci NOT NULL default '',
  `field_column_header` varchar(128) character set latin1 collate latin1_general_ci NOT NULL default '',
  `field_default_value` text character set latin1 collate latin1_general_ci,
  `field_order` int(3) NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Extraindo dados da tabela `jos_csvi_template_fields`
--

INSERT INTO `jos_csvi_template_fields` (`id`, `field_template_id`, `field_name`, `field_column_header`, `field_default_value`, `field_order`, `published`, `checked_out`) VALUES
(1, 1, 'product_name', 'title', '', 1, 1, 0),
(2, 1, 'product_url', 'link', 'http://www.yoursite.com/', 2, 1, 0),
(3, 1, 'product_desc', 'description', '', 3, 1, 0),
(4, 1, 'product_sku', 'g:id', '', 4, 1, 0),
(5, 1, 'picture_url', 'g:image_link', '', 5, 1, 0),
(6, 1, 'product_price', 'g:price', '', 6, 1, 0),
(7, 1, 'manufacturer_name', 'g:brand', 'Not Available', 7, 1, 0),
(8, 1, 'custom', 'g:condition', 'New', 8, 1, 0),
(9, 1, 'custom', 'g:payment_notes', '30 Days Money Back Guarantee', 9, 1, 0),
(10, 1, 'custom', 'g:expiration_date', 'None', 10, 1, 0),
(11, 1, 'product_width', 'g:width', 'Not Available', 11, 1, 0),
(12, 1, 'custom', 'g:payment_accepted', 'Check', 12, 1, 0),
(13, 1, 'custom', 'g:payment_accepted', 'Visa', 13, 1, 0),
(14, 1, 'custom', 'g:payment_accepted', 'MasterCard', 14, 1, 0),
(15, 1, 'custom', 'g:payment_accepted', 'AmericanExpress', 15, 1, 0),
(16, 1, 'custom', 'g:payment_accepted', 'Paypal', 16, 1, 0),
(17, 1, 'custom', 'g:payment_accepted', 'Money order', 17, 1, 0),
(18, 1, 'product_weight', 'g:weight', 'Not Available', 18, 1, 0),
(19, 1, 'product_length', 'g:lenght', 'Not Available', 19, 1, 0),
(20, 1, 'custom', 'g:price_type', 'Non Negotiable', 20, 1, 0),
(21, 1, 'product_in_stock', 'g:quantity', 'Not Available', 21, 1, 0),
(22, 1, 'custom', 'g:tax_region', 'Florida', 22, 1, 0),
(23, 1, 'custom', 'g:tax_percent', '6', 23, 1, 0),
(24, 1, 'attribute', 'g:tech_spec_link', 'http://www.yoursite.com/technical_specifications.html', 24, 1, 0),
(25, 1, 'custom', 'g:pickup', 'FALSE', 25, 1, 0),
(26, 1, 'custom', 'g:shipping', 'US:UPS Ground:5.00', 26, 1, 0),
(27, 2, 'category_path', '', '', 3, 1, 0),
(28, 2, 'product_availability', '', '', 10, 1, 0),
(29, 2, 'product_available_date', '', '', 11, 1, 0),
(30, 2, 'product_currency', '', 'EUR', 12, 1, 0),
(31, 2, 'product_desc', '', '', 6, 1, 0),
(32, 2, 'product_discount', '', '', 13, 1, 0),
(33, 2, 'product_discount_date_end', '', '', 14, 1, 0),
(34, 2, 'product_discount_date_start', '', '', 15, 1, 0),
(35, 2, 'product_full_image', '', '', 8, 1, 0),
(36, 2, 'product_name', '', '', 4, 1, 0),
(37, 2, 'product_packaging', '', '', 16, 1, 0),
(38, 2, 'product_parent_sku', '', '', 2, 1, 0),
(39, 2, 'product_price', '', '', 7, 1, 0),
(40, 2, 'product_publish', '', 'Y', 17, 1, 0),
(41, 2, 'product_s_desc', '', '', 5, 1, 0),
(42, 2, 'product_sku', '', '', 1, 1, 0),
(43, 2, 'product_special', '', '', 18, 1, 0),
(44, 2, 'product_tax', '', '', 19, 1, 0),
(45, 2, 'product_thumb_image', '', '', 9, 1, 0),
(46, 2, 'product_url', '', '', 20, 1, 0),
(47, 3, 'category_path', '', '', 3, 1, 0),
(48, 3, 'product_availability', '', '', 10, 1, 0),
(49, 3, 'product_available_date', '', '', 11, 1, 0),
(50, 3, 'product_currency', '', 'EUR', 12, 1, 0),
(51, 3, 'product_desc', '', '', 6, 1, 0),
(52, 3, 'product_discount', '', '', 13, 1, 0),
(53, 3, 'product_discount_date_end', '', '', 14, 1, 0),
(54, 3, 'product_discount_date_start', '', '', 15, 1, 0),
(55, 3, 'product_full_image', '', '', 8, 1, 0),
(56, 3, 'product_name', '', '', 4, 1, 0),
(57, 3, 'product_packaging', '', '', 16, 1, 0),
(58, 3, 'product_parent_sku', '', '', 2, 1, 0),
(59, 3, 'product_price', '', '', 7, 1, 0),
(60, 3, 'product_publish', '', 'Y', 17, 1, 0),
(61, 3, 'product_s_desc', '', '', 5, 1, 0),
(62, 3, 'product_sku', '', '', 1, 1, 0),
(63, 3, 'product_special', '', '', 18, 1, 0),
(64, 3, 'product_tax', '', '', 19, 1, 0),
(65, 3, 'product_thumb_image', '', '', 9, 1, 0),
(66, 3, 'product_url', '', '', 20, 1, 0),
(67, 4, 'product_files_file_description', '', '', 4, 1, 0),
(68, 4, 'product_files_file_name', '', '', 2, 1, 0),
(69, 4, 'product_files_file_published', '', '', 6, 1, 0),
(70, 4, 'product_files_file_title', '', '', 3, 1, 0),
(71, 4, 'product_files_file_url', '', '', 5, 1, 0),
(72, 4, 'product_sku', '', '', 1, 1, 0),
(73, 5, 'product_sku', '', '', 1, 1, 0),
(74, 5, 'product_currency', '', '', 3, 1, 0),
(75, 5, 'price_quantity_start', '', '', 4, 1, 0),
(76, 5, 'price_quantity_end', '', '', 5, 1, 0),
(77, 5, 'product_price', '', '', 2, 1, 0),
(78, 6, 'product_sku', '', '', 1, 1, 0),
(79, 6, 'product_currency', '', '', 3, 1, 0),
(80, 6, 'price_quantity_start', '', '', 4, 1, 0),
(81, 6, 'price_quantity_end', '', '', 5, 1, 0),
(82, 6, 'product_price', '', '', 2, 1, 0),
(83, 7, 'manufacturer_desc', '', '', 2, 1, 0),
(84, 7, 'manufacturer_email', '', '', 3, 1, 0),
(85, 7, 'manufacturer_name', '', '', 1, 1, 0),
(86, 7, 'manufacturer_category_name', '', '', 5, 1, 0),
(87, 7, 'manufacturer_url', '', '', 4, 1, 0),
(88, 8, 'category_path', '', '', 1, 1, 0),
(89, 8, 'category_description', '', '', 2, 1, 0),
(90, 8, 'category_thumb_image', '', '', 4, 1, 0),
(91, 8, 'category_full_image', '', '', 3, 1, 0),
(92, 8, 'category_publish', '', '', 8, 1, 0),
(93, 8, 'category_browsepage', '', '', 6, 1, 0),
(94, 8, 'category_products_per_row', '', '', 5, 1, 0),
(95, 8, 'category_flypage', '', '', 7, 1, 0),
(96, 8, 'category_list_order', '', '', 9, 1, 0),
(97, 9, 'category_path', '', '', 1, 1, 0),
(98, 9, 'category_description', '', '', 2, 1, 0),
(99, 9, 'category_thumb_image', '', '', 4, 1, 0),
(100, 9, 'category_full_image', '', '', 3, 1, 0),
(101, 9, 'category_publish', '', '', 8, 1, 0),
(102, 9, 'category_browsepage', '', '', 6, 1, 0),
(103, 9, 'category_products_per_row', '', '', 5, 1, 0),
(104, 9, 'category_flypage', '', '', 7, 1, 0),
(105, 9, 'category_list_order', '', '', 9, 1, 0),
(106, 10, 'product_files_file_description', '', '', 4, 1, 0),
(107, 10, 'product_files_file_name', '', '', 2, 1, 0),
(108, 10, 'product_files_file_published', '', '', 6, 1, 0),
(109, 10, 'product_files_file_title', '', '', 3, 1, 0),
(110, 10, 'product_files_file_url', '', '', 5, 1, 0),
(111, 10, 'product_sku', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_csvi_template_types`
--

CREATE TABLE IF NOT EXISTS `jos_csvi_template_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template_type_name` varchar(55) character set latin1 collate latin1_general_ci NOT NULL,
  `template_type` varchar(55) character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `type_name` (`template_type_name`,`template_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `jos_csvi_template_types`
--

INSERT INTO `jos_csvi_template_types` (`id`, `template_type_name`, `template_type`) VALUES
(1, 'categorydetailsexport', 'export'),
(2, 'categorydetailsimport', 'import'),
(3, 'couponsexport', 'export'),
(4, 'couponsimport', 'import'),
(5, 'manufacturercategoryimport', 'import'),
(6, 'manufacturerexport', 'export'),
(7, 'manufacturerimport', 'import'),
(8, 'multiplepricesexport', 'export'),
(9, 'multiplepricesimport', 'import'),
(10, 'orderexport', 'export'),
(11, 'productexport', 'export'),
(12, 'productfilesexport', 'export'),
(13, 'productfilesimport', 'import'),
(14, 'productimport', 'import'),
(15, 'producttypeexport', 'export'),
(16, 'producttypeimport', 'import'),
(17, 'producttypenamesexport', 'export'),
(18, 'producttypenamesimport', 'import'),
(19, 'producttypeparametersexport', 'export'),
(20, 'producttypeparametersimport', 'import'),
(21, 'shippingratesexport', 'export'),
(22, 'shippingratesimport', 'import'),
(23, 'templateexport', 'export'),
(24, 'templatefieldsexport', 'export'),
(25, 'templatefieldsimport', 'import'),
(26, 'templateimport', 'import'),
(27, 'userinfoexport', 'export'),
(28, 'userinfoimport', 'import');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jce_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_jce_extensions` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_jce_extensions`
--

INSERT INTO `jos_jce_extensions` (`id`, `pid`, `name`, `extension`, `folder`, `published`) VALUES
(1, 15, 'Joomla Links for Advanced Link', 'joomlalinks', 'links', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jce_groups`
--

CREATE TABLE IF NOT EXISTS `jos_jce_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `description` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `users` text character set latin1 collate latin1_general_ci NOT NULL,
  `types` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `components` text character set latin1 collate latin1_general_ci NOT NULL,
  `rows` text character set latin1 collate latin1_general_ci NOT NULL,
  `plugins` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text character set latin1 collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_jce_groups`
--

INSERT INTO `jos_jce_groups` (`id`, `name`, `description`, `users`, `types`, `components`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default group for all users with edit access', '', '19,20,21,23,24,25', '', '6,7,8,9,10,13,14,15,16,17,18,19,25,26,27,28,30,31,44,45;11,12,20,21,22,23,32,33,36,37,47,48;38,41,49,52,56;24,39,40,42,43,46,50,51,53,54,55,57,59,60', '1,2,3,4,5,6,20,21,37,38,39,40,41,42,49,50,51,52,53,54,55,56,57,59,60', 1, 1, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jce_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_jce_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `name` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `type` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `icon` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `layout` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `elements` varchar(255) character set latin1 collate latin1_general_ci NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Extraindo dados da tabela `jos_jce_plugins`
--

INSERT INTO `jos_jce_plugins` (`id`, `title`, `name`, `type`, `icon`, `layout`, `row`, `ordering`, `published`, `editable`, `iscore`, `elements`, `checked_out`, `checked_out_time`) VALUES
(1, 'Context Menu', 'contextmenu', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(2, 'File Browser', 'browser', 'plugin', '', '', 0, 0, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(3, 'Inline Popups', 'inlinepopups', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(4, 'Media Support', 'media', 'plugin', '', '', 0, 0, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(5, 'Safari Browser Support', 'safari', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(6, 'Help', 'help', 'plugin', 'help', 'help', 1, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(7, 'New Document', 'newdocument', 'command', 'newdocument', 'newdocument', 1, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(8, 'Bold', 'bold', 'command', 'bold', 'bold', 1, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(9, 'Italic', 'italic', 'command', 'italic', 'italic', 1, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(10, 'Underline', 'underline', 'command', 'underline', 'underline', 1, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(11, 'Font Select', 'fontselect', 'command', 'fontselect', 'fontselect', 1, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(12, 'Font Size Select', 'fontsizeselect', 'command', 'fontsizeselect', 'fontsizeselect', 1, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(13, 'Style Select', 'styleselect', 'command', 'styleselect', 'styleselect', 1, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(14, 'StrikeThrough', 'strikethrough', 'command', 'strikethrough', 'strikethrough', 1, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(15, 'Justify Full', 'full', 'command', 'justifyfull', 'justifyfull', 1, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(16, 'Justify Center', 'center', 'command', 'justifycenter', 'justifycenter', 1, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(17, 'Justify Left', 'left', 'command', 'justifyleft', 'justifyleft', 1, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(18, 'Justify Right', 'right', 'command', 'justifyright', 'justifyright', 1, 13, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(19, 'Format Select', 'formatselect', 'command', 'formatselect', 'formatselect', 1, 14, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(20, 'Paste', 'paste', 'plugin', 'pasteword,pastetext', 'paste', 2, 1, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(21, 'Search Replace', 'searchreplace', 'plugin', 'search,replace', 'searchreplace', 2, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(22, 'Font ForeColour', 'forecolor', 'command', 'forecolor', 'forecolor', 2, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(23, 'Font BackColour', 'backcolor', 'command', 'backcolor', 'backcolor', 2, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(24, 'Unlink', 'unlink', 'command', 'unlink', 'unlink', 2, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(25, 'Indent', 'indent', 'command', 'indent', 'indent', 2, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(26, 'Outdent', 'outdent', 'command', 'outdent', 'outdent', 2, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(27, 'Undo', 'undo', 'command', 'undo', 'undo', 2, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(28, 'Redo', 'redo', 'command', 'redo', 'redo', 2, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(29, 'HTML', 'html', 'command', 'code', 'code', 2, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(30, 'Numbered List', 'numlist', 'command', 'numlist', 'numlist', 2, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(31, 'Bullet List', 'bullist', 'command', 'bullist', 'bullist', 2, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(32, 'Clipboard Actions', 'clipboard', 'command', 'cut,copy,paste', 'clipboard', 2, 13, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(33, 'Anchor', 'anchor', 'command', 'anchor', 'anchor', 2, 14, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(34, 'Image', 'image', 'command', 'image', 'image', 2, 15, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(35, 'Link', 'link', 'command', 'link', 'link', 2, 16, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(36, 'Code Cleanup', 'cleanup', 'command', 'cleanup', 'cleanup', 2, 17, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(37, 'Directionality', 'directionality', 'plugin', 'ltr,rtl', 'directionality', 3, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(38, 'Emotions', 'emotions', 'plugin', 'emotions', 'emotions', 3, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(39, 'Fullscreen', 'fullscreen', 'plugin', 'fullscreen', 'fullscreen', 3, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(40, 'Preview', 'preview', 'plugin', 'preview', 'preview', 3, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(41, 'Tables', 'table', 'plugin', 'tablecontrols', 'buttons', 3, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(42, 'Print', 'print', 'plugin', 'print', 'print', 3, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(43, 'Horizontal Rule', 'hr', 'command', 'hr', 'hr', 3, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(44, 'Subscript', 'sub', 'command', 'sub', 'sub', 3, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(45, 'Superscript', 'sup', 'command', 'sup', 'sup', 3, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(46, 'Visual Aid', 'visualaid', 'command', 'visualaid', 'visualaid', 3, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(47, 'Character Map', 'charmap', 'command', 'charmap', 'charmap', 3, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(48, 'Remove Format', 'removeformat', 'command', 'removeformat', 'removeformat', 3, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(49, 'Styles', 'style', 'plugin', 'styleprops', 'style', 4, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(50, 'Non-Breaking', 'nonbreaking', 'plugin', 'nonbreaking', 'nonbreaking', 4, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(51, 'Visual Characters', 'visualchars', 'plugin', 'visualchars', 'visualchars', 4, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(52, 'XHTML Xtras', 'xhtmlxtras', 'plugin', 'cite,abbr,acronym,del,ins,attribs', 'xhtmlxtras', 4, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(53, 'Image Manager', 'imgmanager', 'plugin', 'imgmanager', 'imgmanager', 4, 5, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(54, 'Advanced Link', 'advlink', 'plugin', 'advlink', 'advlink', 4, 6, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(55, 'Spell Checker', 'spellchecker', 'plugin', 'spellchecker', 'spellchecker', 4, 7, 1, 1, 1, '', 0, '0000-00-00 00:00:00'),
(56, 'Layers', 'layer', 'plugin', 'insertlayer,moveforward,movebackward,absolute', 'layer', 4, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(57, 'Advanced Code Editor', 'advcode', 'plugin', 'advcode', 'advcode', 4, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(58, 'Article Breaks', 'article', 'plugin', 'readmore,pagebreak', 'article', 4, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00'),
(59, 'Media Manager', 'mediamanager', 'plugin', 'mediamanager', 'mediamanager', 4, 1, 1, 1, 0, '', 0, '0000-00-00 00:00:00'),
(60, 'Image Manager Extended', 'imgmanager_ext', 'plugin', 'imgmanager_ext', 'imgmanager_ext', 4, 1, 1, 1, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jp_exclusion`
--

CREATE TABLE IF NOT EXISTS `jos_jp_exclusion` (
  `id` bigint(20) NOT NULL auto_increment,
  `profile` int(10) unsigned NOT NULL,
  `class` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `jos_jp_exclusion`
--

INSERT INTO `jos_jp_exclusion` (`id`, `profile`, `class`, `value`) VALUES
(5, 1, 'def', 'eztest'),
(4, 1, 'def', 'arquivos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jp_inclusion`
--

CREATE TABLE IF NOT EXISTS `jos_jp_inclusion` (
  `id` bigint(20) NOT NULL auto_increment,
  `profile` int(10) unsigned NOT NULL,
  `class` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_jp_inclusion`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jp_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_jp_profiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_jp_profiles`
--

INSERT INTO `jos_jp_profiles` (`id`, `description`) VALUES
(1, 'Default Backup Profile');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jp_registry`
--

CREATE TABLE IF NOT EXISTS `jos_jp_registry` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `profile` int(10) unsigned NOT NULL default '1',
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Extraindo dados da tabela `jos_jp_registry`
--

INSERT INTO `jos_jp_registry` (`id`, `profile`, `key`, `value`) VALUES
(68, 1, 'mnMaxExecTimeAllowed', '14'),
(67, 1, 'mnZIPCompressionThreshold', '1048576'),
(66, 1, 'mnRowsPerStep', '100'),
(65, 1, 'MySQLCompat', 'compat'),
(64, 1, 'listerengine', 'smart'),
(63, 1, 'dbdumpengine', 'default'),
(62, 1, 'packerengine', 'zip'),
(61, 1, 'InstallerPackage', 'jpi3.jpa'),
(60, 1, 'backupMethod', 'jsredirect'),
(59, 1, 'throttling', '1000'),
(58, 1, 'enableMySQLKeepalive', '1'),
(57, 1, 'mnMaxFragmentSize', '524288'),
(56, 1, 'mnMaxFragmentFiles', '20'),
(55, 1, 'mnArchiverChunk', '1048576'),
(54, 1, 'mnZIPForceOpen', '0'),
(53, 1, 'mnZIPDirReadChunk', '1048576'),
(52, 1, 'mnMinimumExectime', '3'),
(51, 1, 'mnMaxOpsPerStep', '10'),
(50, 1, 'dbAlgorithm', 'smart'),
(49, 1, 'packAlgorithm', 'smart'),
(69, 1, 'mnExectimeBiasPercent', '75'),
(70, 1, 'arbitraryfeemail', ''),
(71, 1, 'BackupType', 'full'),
(72, 1, 'TarNameTemplate', 'site-[HOST]-[DATE]-[TIME]'),
(73, 1, 'logLevel', '4'),
(74, 1, 'enableSizeQuotas', '0'),
(75, 1, 'enableCountQuotas', '0'),
(76, 1, 'sizeQuota', '30'),
(77, 1, 'countQuota', '3'),
(78, 0, 'authlevel', '25'),
(79, 0, 'easymode', ''),
(80, 0, 'settingsmode', 'custom'),
(81, 0, 'OutputDirectory', 'E:\\home\\alfaeletro\\web\\administrator\\components\\com_joomlapack\\backup'),
(82, 0, 'cubeinfile', '1'),
(83, 0, 'enableFrontend', '0'),
(84, 0, 'frontendemail', '1'),
(85, 0, 'secretWord', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jp_stats`
--

CREATE TABLE IF NOT EXISTS `jos_jp_stats` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL default '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL default 'run',
  `origin` enum('backend','frontend') NOT NULL default 'backend',
  `type` enum('full','dbonly','extradbonly') NOT NULL default 'full',
  `profile_id` bigint(20) NOT NULL default '1',
  `archivename` longtext,
  `absolute_path` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `jos_jp_stats`
--

INSERT INTO `jos_jp_stats` (`id`, `description`, `comment`, `backupstart`, `backupend`, `status`, `origin`, `type`, `profile_id`, `archivename`, `absolute_path`) VALUES
(3, 'Backup taken on Segunda, 15 Junho 2009 14:52', 'Primeiro backup!', '2009-06-15 14:57:32', '2009-06-15 15:00:45', 'complete', 'backend', 'full', 1, 'site-www.alfaeletro.com.br-20090615-145732.zip', 'E:/home/alfaeletro/web/administrator/components/com_joomlapack/backup/site-www.alfaeletro.com.br-20090615-145732.zip'),
(7, 'Backup feito Quarta, 01 Julho 2009 13:12', 'Último Backup feito antes da mudança de plataforma de Windows para Linux', '2009-07-01 13:14:02', '0000-00-00 00:00:00', 'complete', 'backend', 'full', 1, 'site-www.alfaeletro.com.br-20090701-131402.zip', 'E:/home/alfaeletro/web/administrator/components/com_joomlapack/backup/site-www.alfaeletro.com.br-20090701-131402.zip');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_jp_temp`
--

CREATE TABLE IF NOT EXISTS `jos_jp_temp` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_jp_temp`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=604 ;

--
-- Extraindo dados da tabela `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 6, 62, '2008-08-10 15:26:50', 0, 0, 1, 3, '', 0, 0, 0),
(29, 'mainmenu', 'Empresa|Saiba Mais', 'empresa', '', 'separator', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, 'show_comp_description=\ncomp_description=\nshow_link_hits=\nshow_link_description=\nshow_other_cats=\nshow_headings=\ntarget=\nlink_icons=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'mainmenu', 'Fretes| e Entregas', 'typography', 'index.php?option=com_content&view=article&id=1126', 'component', 1, 0, 20, 0, 4, 75, '2009-06-11 18:19:28', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'mainmenu', 'Home|Página Inicial', 'home', 'index.php?option=com_virtuemart', 'component', 1, 0, 63, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=Alfa Eletro - Comércio de produtos eletro-eletrônicos\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(69, 'mainmenu', 'Contato|Fale Conosco', 'contatofale-conosco', '', 'separator', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(110, 'mainmenu', 'Parceiros|Parceiros Alfa', 'parceiros', '#', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(111, 'mainmenu', 'Clientes', 'clientes', '#', 'url', 1, 110, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(129, 'Footer Menu', 'Valid XHTML', 'valid-xhtml', 'http://validator.w3.org/check/referer', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(130, 'Footer Menu', 'Support Joomla', 'support-joomla', 'http://www.joomla.org/content/view/689/79/', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(131, 'Footer Menu', 'Joomla Template by IceTheme', 'joomla-template-by-icetheme', 'http://www.icetheme.com', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(132, 'Footer Menu', 'Valid CSS', 'valid-css', 'http://jigsaw.w3.org/css-validator/check/referer/', 'url', 1, 0, 0, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(137, 'mainmenu', 'Financeiro', 'financeiro', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 69, 7, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(269, 'mainmenu', 'Comercial', 'comercial', 'index.php?option=com_contact&view=category&catid=101', 'component', 1, 69, 7, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(253, 'othermenu', '1/4W', '14w', '#', 'url', 1, 290, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(276, 'topmenu', 'User Area', 'user-area', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_login_title=1\nheader_login=\nlogin=\nlogin_message=0\ndescription_login=0\ndescription_login_text=\nimage_login=\nimage_login_align=right\nshow_logout_title=1\nheader_logout=\nlogout=\nlogout_message=1\ndescription_logout=1\ndescription_logout_text=\nimage_logout=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(277, 'topmenu', 'Register Free', 'register-free', 'index.php?option=com_user&view=register', 'component', 1, 0, 14, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(278, 'topmenu', 'Contact Us', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 0, 7, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(284, 'mainmenu', 'Quem Somos', 'quem-somos', 'index.php?option=com_content&view=article&id=1123', 'component', 1, 29, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(285, 'mainmenu', 'Indicações', 'indicacoes', '#', 'url', 1, 110, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(290, 'othermenu', 'Resistor Discreto', 'resistor-discreto', 'index.php?option=com_content&view=category&layout=blog&id=96', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=6\nnum_columns=3\nnum_links=8\norderby_pri=\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(291, 'othermenu', 'Capacitor Discreto', 'capacitor-discreto', 'index.php?option=com_content&view=category&layout=blog&id=96', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=6\nnum_columns=3\nnum_links=8\norderby_pri=\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(292, 'othermenu', 'Convesor Sinal', 'convesor-sinal', 'index.php?option=com_content&view=category&layout=blog&id=96', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=6\nnum_columns=3\nnum_links=8\norderby_pri=\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(293, 'othermenu', 'Ventilador / Ventuinha', 'ventilador--ventuinha', 'index.php?option=com_content&view=category&layout=blog&id=96', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=6\nnum_columns=3\nnum_links=8\norderby_pri=\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(294, 'othermenu', 'Cabos / Fios', 'cabos--fios', 'index.php?option=com_content&view=category&layout=blog&id=96', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=6\nnum_columns=3\nnum_links=8\norderby_pri=\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(304, 'othermenu', '1/2W', '12w', '#', 'url', 1, 290, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(335, 'mainmenu', 'Localização', 'localizacao', 'index.php?option=com_content&view=article&id=1125', 'component', 1, 29, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(341, 'mainmenu', 'Cadastro|Meu Cadastro', 'contact-get-in-touch', 'index.php?option=com_contact&view=contact&id=1', 'component', 0, 0, 7, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(453, 'mainmenu', 'Downloads|Nossos Downloads', 'downloads', '', 'separator', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(596, 'footerlinks', 'Contato', 'contato', 'index.php?option=com_contact&view=category&catid=101', 'component', 1, 0, 7, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(590, 'mainmenu', 'Softwares', 'softwares', 'index.php?option=com_phocadownload&view=category&id=1:softwares', 'url', 1, 453, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(593, 'footerlinks', 'Empresa', 'empresa', 'index.php?option=com_content&view=article&id=1123', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(594, 'footerlinks', 'Fretes', 'typography', 'index.php?option=com_content&view=article&id=1126', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(591, 'mainmenu', 'Projetos Eletrônicos', 'projetos-eletronicos', 'index.php?option=com_phocadownload&view=category&id=2:projetos-eletronicos', 'url', 1, 453, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(595, 'footerlinks', 'Home', 'home', 'index.php?option=com_virtuemart', 'component', 1, 0, 63, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=Welcome to the Frontpage\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(597, 'footerlinks', 'Parceiros', 'parceiros', 'index.php?option=com_content&view=article&id=1124', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(598, 'footerlinks', 'Cadastro', 'contact-get-in-touch', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 0, 7, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(599, 'footerlinks', 'Downloads', 'downloads', 'index.php?option=com_phocadownload&view=sections', 'component', 1, 0, 73, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_pagination=1\nshow_pagination_limit=1\nfilename_or_name=\ndownload_external_link=\ndisplay_downloads=\ndisplay_description=\ndisplay_detail=\ndisplay_new=\ndisplay_hot=\ndisplay_most_download=\nsection_ordering=\ncategory_ordering=\nfile_ordering=\ndefault_pagination=\npagination=\ntheme=\ndisplay_num_doc_secs=\ndisplay_num_doc_secs_header=\nlicense_box_height=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(600, 'footerlinks', 'Loja', 'loja', 'index.php?option=com_virtuemart', 'component', -2, 0, 63, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'product_id=\ncategory_id=\nflypage=\npage=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(602, 'footermenu', 'Devhouse', 'devhouse', 'http://www.devhouse.com.br', 'url', 1, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(603, 'footermenu', 'Desenvolvido Por', 'desenvolvido-por', '', 'separator', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(601, 'mainmenu', 'Cadastre-se', 'cadastre-se', 'http://www.alfaeletro.com.br/index.php?option=com_virtuemart&page=shop.registration', 'url', 1, 341, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(589, 'othermenu', 'Resistor SMD', 'resistor-smd', 'index.php?option=com_content&view=category&layout=blog&id=96', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=6\nnum_columns=3\nnum_links=8\norderby_pri=\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'othermenu', 'OtherMenu', 'The Left Main Menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'mainmenu', 'Main Menu', 'Main Menu Navigation'),
(8, 'footermenu', 'Footer Menu', ''),
(10, 'topmenu', 'Top Menu', ''),
(11, 'footerlinks', 'Footer Links', 'The menu that is on the footer');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_messages`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Extraindo dados da tabela `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Categorias', '', 0, 'othermenu', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=othermenu\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=1\nfull_active_id=0\nindent_image=1\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'User Poll', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=15\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'User Menu', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=usermenu\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(20, 'Statistics', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(23, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(26, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 1, 'search', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=20\ntext=Test\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(28, 'Random Image', '', 7, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Main Menu', '', 0, 'mainmenu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=nav\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=1\nfull_active_id=0\nindent_image=0\nindent_image1=-1\nindent_image2=-1\nindent_image3=-1\nindent_image4=-1\nindent_image5=-1\nindent_image6=-1\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Footer', '', 1, 'footer', 62, '2008-07-06 17:44:06', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Display', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, 'moduleclass_sfx=\nrssurl=\nrssrtl=0\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\ncache=0\ncache_time=900\n\n', 1, 0, ''),
(35, 'Breadcrumbs', '', 0, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 0, 'showHome=1\nhomeText=Home\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 1, 0, ''),
(36, 'Syndication', '', 1, 'syndicate', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px"><p>Congratulations on choosing Joomla! as your content management system. We hope you are able to create a successful Web site with our program and maybe you will be able to give something back to the community later.</p><p>To make your start with Joomla! as smooth as possible, we want to give you some pointers to documentation, common questions and help on securing your server. A good place to start is the &quot;<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot;.</p><p>For your most common questions the best place to start looking for answers is the <a href="http://help.joomla.org/component/option,com_easyfaq/Itemid,268/" target="_blank">Frequently Asked Questions (FAQ)</a> area.  If you are stuck on a particular screen in the Administration area of Joomla! (which is where you are now), then try clicking on the Help toolbar button which you will find on almost all screens.  This will take you to a page about that screen on our <a href="http://help.joomla.org" target="_blank">Help Site</a>.  If you still have questions then take a look on our <a href="http://forum.joomla.org" target="_blank">forum</a> which is most likely the biggest resource on Joomla! there is and you will find almost every question answered at least once, so please try using the search function before asking your question.</p><p>Security is a big concern for us, which is why we would like you to subscribe to the <a href="http://forum.joomla.org/index.php/board,8.0.html" target="_blank">announcement forum</a> (by clicking on the Notify button) to always get the latest information on new releases for Joomla! You should also read the <a href="http://help.joomla.org/component/option,com_easyfaq/task,view/id,167/Itemid,268/" target="_blank">Joomla! Administrator''s Security Checklist</a> and regularly check the <a href="http://forum.joomla.org/index.php/board,267.0.html" target="_blank">security forum</a>.</p><p>We hope you have much fun and success with Joomla! and hope to see you in the forum among the hundreds and thousands of contributors.</p><p>Your Joomla! team.<img alt="Smile" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Smile" /></p><p>P.S.: To remove this message, delete the &quot;Welcome to Joomla!&quot; Module in the Administrator screen of the Module Manager (on the Extensions menu).  Here is a <a href="index.php?option=com_modules&amp;client=1">quick link</a> to this screen.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(46, 'IceAccordion Module', '', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_ice_accordion', 0, 0, 1, 'iceaccordion_inactivecolor=888\niceaccordion_activecolor=111\ncatid=0\norder=o_asc\nitems=6\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(202, 'JCE Control Panel Icons', '', 1, 'jce_icon', 0, '0000-00-00 00:00:00', 1, 'mod_jcequickicon', 0, 0, 0, '', 0, 1, ''),
(71, 'NewsFlash', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=37\nlayout=default\nimage=0\nlink_titles=\nreadmore=0\nitem_title=0\nitems=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(180, 'Login', '', 0, 'login', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 0, 0, ''),
(181, 'IceSlider ( CarouselSlide )', '', 0, 'carouselslide', 0, '0000-00-00 00:00:00', 0, 'mod_ice_slider', 0, 0, 0, 'style=carouselslide\niceslider_width=375\niceslider_item_width=192\niceslider_height=190\nanimation_duration=1000\nanimation_interval=5500\nanimation_transition=Quart.easeOut\nautoplay=false\nanimation_event=click\nslidesnr=1,2,3,4,5,6,7,8\niceslider_text=Inside the IT Veranda Template\ncatid=0\norder=o_asc\nitems=8\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(247, 'Visitantes', '', 14, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_vvisit_counter', 0, 0, 1, 'cache=0\nmoduleclass_sfx=style1\ns_countUserAsNewType=0\nlocktime=15\ninitialvalue=0\nrecords=100000\ns_trycreatetable=1\ns_createtableName=vvisitcounter\nread_only_counter=0\ns_ip=0\nip=\nip_type=text\nip_type_man=text\nfilterIPs=\ns_trycreateIPCtable=0\ns_ipCcode=0\ns_ipCountry=0\ns_ipCflag=0\ns_ipCflag_width=20\ns_ipCflag_height=13\ns_ipCLic=1\nIP2C LicenseText=<p style="font-size:25%">This page uses the IP-to-Country Database provided by WebHosting.Info (http://www.webhosting.info), available from http://ip-to-country.webhosting.info</p>\ns_autoFilterRobots=0\nfilterUserAgents=\nsaveUserAgents=0\nthe_order=1;2;3;4;5;6;7;8;9\ns_translate_table_texts=0\ns_today=1\ntoday=Hoje\ns_yesterday=1\nyesterday=Ontem\ns_week=1\ns_week_startday=1\nweek=Esta Semana\ns_month=1\nmonth=Este Mês\ns_all=1\nall=Total\nshow_UsageImgs=1\ns_digit=1\ns_digits_min=6\ns_digits_max=6\ns_digits_warnimg=\ndisp_type=mechanical\ndisp_type_man=text\nwidthtable=90\nimage_create=0\nimage_showDays=0\nimage_path=/tmp/imagemvc.png\nimage_newerAsHours=6\nimage_sizeX=160\nimage_sizeY=90\nimage_lineColor=#000000\nimage_dia_bgColor=#DDDDDD\nimage_dia_RandColor=#FF0000\npretext=\nposttext=\n\n', 0, 0, ''),
(124, 'IceSlider (imageslide)', '', 1, 'iceslider', 0, '0000-00-00 00:00:00', 0, 'mod_ice_slider', 0, 0, 0, 'style=imageslide\nitemwidth=546\nanimation_duration=1000\nanimation_interval=3000\nanimation_transition=Cubic.easeInOut\nautoplay=false\nanimation_event=click\nslidesnr=1,2,3\ncatid=53\norder=o_asc\nitems=4\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(127, 'IceScroller', '', 0, 'icescroller', 0, '0000-00-00 00:00:00', 0, 'mod_ice_scroller', 0, 0, 1, 'icescroller_text=Últimas Notícias\nicescroller_width=440\nicescroller_height=30\nicescroller_duration=1600\nicescroller_delay=4000\nicescroller_interval=2000\nicescroller_transition=Quart.easeOut\nicescroller_autoplay=1\nicescroller_direction=h\ncatid=0\norder=o_asc\nitems=4\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(179, 'IceSlideShow', '', 0, 'iceslideshow', 0, '0000-00-00 00:00:00', 0, 'mod_ice_slideshow', 0, 0, 0, 'IceSlideshow_hu=images/icetheme/iceslideshow/\nIceSlideshow_width=560\nIceSlideshow_height=240\nIceSlideshow_thumbnails=1\nIceSlideshow_thumbnails_position=right-inside\nIceSlideshow_thumbnails_width=80\nIceSlideshow_thumbnails_height=40\nIceSlideshow_captions=1\nIceSlideshow_controller=1\nIceSlideshow_fast=0\nIceSlideshow_linked=1\nIceSlideshow_overlap=1\nIceSlideshow_random=0\nIceSlideshow_center=1\nIceSlideshow_resize=width\nIceSlideshow_transition=Cubic.easeOut\nIceSlideshow_slide=0\nIceSlideshow_delay=3000\nIceSlideshow_duration=1000\ncatid=84\norder=o_asc\nitems=5\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(254, 'SubCategorias', '', 0, 'content1', 0, '0000-00-00 00:00:00', 1, 'mod_product_subcategories', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\nclass_sfx=\n\n', 0, 0, ''),
(248, 'Chat Online', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_onlinedestek', 0, 0, 1, 'moduleclass_sfx=\ncache=1\ncache_time=900\nkimlik=959F4C7894A704AE\ntip=icon\nen=300px\nboy=300px\ngenislik=1px\nbcolor=black\nb_en=100\nb_backcolor=77ADCF\nb_altbackcolor=FFFFFF\nb_foreColor=424542\nbeforeyazi=Tire suas dúvidas com nossos atendentes:\nafteryazi= \nulke=pt-BR\nfore_color=333333\nback_color=E8F1F8\nlink_color=333333\nborder_color=AFD3EB\nbutton_forecolor=333333\nbutton_backcolor=EEF7FE\nbutton_bordercolor=AFD3EB\nbutton_disabledcolor=EEF7FE\nheader_forecolor=0066A7\nheader_backcolor=8EBBD8\nmenu_forecolor=333333\nmenu_backcolor=FFFFFF\nchat_forecolor=333333\nchat_backcolor=FFFFFF\nchat_disabledcolor=F6F6F6\nchat_errorcolor=760502\nchat_labelcolor=6E6C6C\n\n', 0, 0, ''),
(244, 'VirtueMart Module', '', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart', 0, 0, 1, 'show_login_form=no\nshow_categories=yes\nshow_listall=yes\nshow_adminlink=yes\nshow_accountlink=yes\nshow_minicart=yes\nshow_productsearch=yes\nshow_product_parameter_search=no\nmenutype=links\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=hbr\njscookTree_style=ThemeXP\nroot_label=Shop\n', 0, 0, ''),
(243, 'Estatísticas de Download', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_phocadownload_chart_statistics', 0, 0, 1, 'moduleclass_sfx=\nchart_type=bhs\nchart_width=160\nchart_height=150\ndisplay_per=1\nnumber_item=5\nsection_id=\n\n', 0, 0, ''),
(245, 'Orçamento de Produtos', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 0, 0, 1, 'moduleclass_sfx=\nvmCartDirection=0\nvmEnableGreyBox=0\n\n', 0, 0, ''),
(242, 'Estatísticas de Download', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_phocadownload_statistics', 0, 0, 1, 'moduleclass_sfx=\ndisplay_title=1\ndisplay_filename=1\ndisplay_cat_sec=1\ndisplay_downloads=1\nmodule_width=150\nfont_size=10\nnumber_item=5\nsection_id=\n\n', 0, 0, ''),
(241, 'Categorias', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_product_categories', 0, 0, 1, 'menutype=leonardo\njscook_type=menu\njscookMenu_style=ThemeOffice\nmenu_orientation=vbr\njscookTree_style=ThemeXP\nroot_label=Shop\ncache=0\nmoduleclass_sfx=\nclass_sfx=othermenu\n\n', 0, 0, ''),
(246, 'JoomlaPack Backup Notification Module', '', 15, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_jpadmin', 0, 2, 1, '', 0, 1, ''),
(148, 'Right', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus id massa. Ut a sapien in purus tempor lacinia.', 4, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(149, 'Right ( Suffix = style1 )', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus id massa. Ut a sapien in purus tempor lacinia.', 5, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style1\n\n', 0, 0, ''),
(198, 'Who''s Online', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=style2\n\n', 0, 0, ''),
(162, 'Right ( Suffix = style2 )', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus id massa. Ut a sapien in purus tempor lacinia.', 6, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style2\n\n', 0, 0, ''),
(178, 'IceSlider ( TabularSlide )', '', 0, 'tabularslide', 0, '0000-00-00 00:00:00', 1, 'mod_ice_slider', 0, 0, 0, 'style=tabularslide\niceslider_width=565\niceslider_item_width=none\niceslider_height=270\nanimation_duration=1500\nanimation_interval=4000\nanimation_transition=Quint.easeOut\nautoplay=false\nanimation_event=click\nslidesnr=none\niceslider_text=none\ncatid=68\norder=o_asc\nitems=4\nmoduleclass_sfx=none\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(188, 'Footer Menu', '', 1, 'footermenu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=footermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=footermenu\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(237, 'Embed Video', '<object width="185" height="104"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=4019947&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" /><embed src="http://vimeo.com/moogaloop.swf?clip_id=4019947&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="182" height="104"></embed></object><br /><br /><a href="http://vimeo.com/4019947">rubbish dump</a> from <a href="http://vimeo.com/dimarconicola">Nicola Di Marco</a> on <a href="http://vimeo.com">Vimeo</a>.', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(255, 'Parceiros', '<a href="http://www.alfaeletro.com.br/" target="_blank"><img height="95" width="180" src="images/stories/parceiros/logoalfamestre-pq.jpg" alt="logoalfamestre-pq" style="border-width: 0px;" /></a><br /><br /><a href="http://www.ldi.com.br" target="_blank"><img height="93" width="180" src="images/stories/parceiros/logo_ldi.jpg" alt="logo_ldi" style="border-width: 0px;" /></a><br /><br /><a href="http://www.devhouse.com.br" target="_blank"><img height="99" width="180" src="images/stories/parceiros/devhouse.jpg" alt="devhouse" style="border-width: 0px;" /></a>', 13, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(201, 'JCE Latest News', '', 1, 'jce_cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\r\n	cache_time=15\r\n	moduleclass_sfx=\r\n	rssurl=http://www.joomlacontenteditor.net/index.php?option=com_rss&feed=RSS2.0&type=com_frontpage&Itemid=1\r\n	rssrtl=0\r\n	rsstitle=0\r\n	rssdesc=0\r\n	rssimage=0\r\n	rssitems=3\r\n	rssitemdesc=1\r\n	word_count=100', 0, 1, ''),
(197, 'Top Menu', '', 1, 'topmenu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=topmenu\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(257, 'Newsletter', '', 14, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_acajoom', 0, 0, 1, 'listids=1\nred_url=\nlinear=0\nintrotext=Inscreva-se para receber nossa newsletter com novidades e promoções.\\n\nshowlistname=0\ndefaultchecked=1\nshownamefield=1\ndropdown=0\nselecteddrop=0\nfieldsize=10\nposttext=\nreceivehtmldefault=1\nshowreceivehtml=0\nbutton_text=Enviar\nbutton_img=\nbutton_text_change=\nbutton_img_change=\nmoduleclass_sfx=\nmod_align=left\ncache=0\n\n', 0, 0, ''),
(215, 'Grid-Based Design', 'IceTheme has began to use the Grid-Based design approach since our third template, IT Newsy, which at the time was to popular. We use the grid-based deigns to offer to our Joomla Templates a solid, structured and proportioned layout.', 8, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(216, 'Template Styles', '<p>IT Veranda is build-in <span class="highlight">8 different color variations</span>. You can easily change the template style on the Template Manager in J! Administrator.</p> \r\n\r\n<ul class="tempstyle">\r\n\r\n    <li><a href="index.php?TemplateStyle=style1">Style 1</a></li> \r\n\r\n   <li><a href="index.php?TemplateStyle=style2">Style 2</a></li>    \r\n\r\n <li><a href="index.php?TemplateStyle=style3">Style 3</a></li>   \r\n\r\n  <li><a href="index.php?TemplateStyle=style4">Style 4</a></li>   \r\n\r\n  </ul>', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style1\n\n', 0, 0, ''),
(218, 'JWeather', '', 1, 'weather', 0, '0000-00-00 00:00:00', 1, 'mod_jweather', 0, 0, 1, 'measurement_system=m\nicondir=icons\ncitycode=BRXX0201\nnumdays=5\ntitle=Weather for\ndesc=1\ndays=0\nicon=1\ntemp=1\ntempseparator=', 0, 0, ''),
(219, 'FooterLinks', '', 1, 'footerlinks', 62, '2008-01-17 20:53:05', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=footerlinks\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=footerlinks\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(232, 'Template Typography', 'This templates delivers you sophisticated typography.', 10, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=style1\n\n', 0, 0, ''),
(252, 'Parceiros', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_bannerslider', 0, 0, 1, 'moduleclass_sfx=\nbanners=\ncategories=\nclients=\ntype=1\neffect=fade\nwidth=180\nheight=150\ndelay=3000\nrandom=1\nresize=1\ncenter=1\nwindow=1\ncache=0\ntrack_impressions=0\n\n', 0, 0, ''),
(253, 'VirtueMart Search', '', 15, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_virtuemart_search', 0, 0, 1, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 20),
(16, 24),
(16, 29),
(16, 51),
(16, 52),
(16, 67),
(16, 68),
(16, 69),
(16, 110),
(16, 111),
(16, 129),
(16, 130),
(16, 131),
(16, 132),
(16, 138),
(16, 142),
(16, 143),
(16, 144),
(16, 145),
(16, 146),
(16, 253),
(16, 257),
(16, 258),
(16, 269),
(16, 274),
(16, 275),
(16, 276),
(16, 277),
(16, 278),
(16, 279),
(16, 280),
(16, 281),
(16, 282),
(16, 283),
(16, 284),
(16, 285),
(16, 286),
(16, 287),
(16, 288),
(16, 289),
(16, 290),
(16, 291),
(16, 292),
(16, 293),
(16, 294),
(16, 295),
(16, 296),
(16, 297),
(16, 298),
(16, 299),
(16, 300),
(16, 301),
(16, 302),
(16, 303),
(16, 304),
(16, 305),
(16, 306),
(16, 307),
(16, 308),
(16, 309),
(16, 310),
(16, 311),
(16, 312),
(16, 313),
(16, 314),
(16, 315),
(16, 316),
(16, 317),
(16, 318),
(16, 319),
(16, 320),
(16, 321),
(16, 326),
(16, 327),
(16, 328),
(16, 329),
(16, 331),
(16, 332),
(16, 333),
(16, 334),
(16, 335),
(16, 339),
(16, 340),
(16, 341),
(16, 377),
(16, 378),
(16, 379),
(16, 380),
(16, 381),
(16, 382),
(16, 383),
(16, 384),
(16, 385),
(16, 386),
(17, 24),
(17, 29),
(17, 51),
(17, 52),
(17, 53),
(17, 67),
(17, 68),
(17, 69),
(17, 70),
(17, 73),
(17, 74),
(17, 75),
(17, 76),
(17, 77),
(17, 92),
(17, 93),
(17, 94),
(17, 95),
(17, 96),
(17, 97),
(17, 98),
(17, 99),
(17, 100),
(17, 101),
(17, 102),
(17, 110),
(17, 111),
(17, 112),
(17, 113),
(17, 114),
(17, 115),
(17, 116),
(17, 129),
(17, 130),
(17, 131),
(17, 132),
(17, 134),
(17, 135),
(17, 136),
(20, 0),
(27, 0),
(29, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(46, 0),
(71, 0),
(124, 0),
(125, 0),
(127, 0),
(148, 137),
(148, 270),
(148, 271),
(148, 272),
(148, 273),
(149, 137),
(149, 270),
(149, 271),
(149, 272),
(149, 273),
(162, 137),
(162, 270),
(162, 271),
(162, 272),
(162, 273),
(166, 68),
(170, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(178, 68),
(179, 68),
(180, 0),
(181, 0),
(187, 0),
(188, 0),
(197, 0),
(198, 68),
(215, 68),
(216, 68),
(218, 0),
(219, 0),
(230, 0),
(232, 68),
(237, 68),
(239, 0),
(241, 0),
(242, 453),
(242, 590),
(242, 591),
(243, 453),
(243, 590),
(243, 591),
(244, 0),
(245, 20),
(245, 24),
(245, 29),
(245, 51),
(245, 52),
(245, 67),
(245, 68),
(245, 69),
(245, 110),
(245, 111),
(245, 129),
(245, 130),
(245, 131),
(245, 132),
(245, 137),
(245, 253),
(245, 269),
(245, 276),
(245, 277),
(245, 278),
(245, 284),
(245, 285),
(245, 290),
(245, 291),
(245, 292),
(245, 293),
(245, 294),
(245, 304),
(245, 453),
(245, 589),
(245, 590),
(245, 591),
(245, 593),
(245, 594),
(245, 595),
(245, 596),
(245, 597),
(245, 598),
(245, 599),
(245, 602),
(245, 603),
(246, 0),
(247, 20),
(247, 24),
(247, 29),
(247, 51),
(247, 52),
(247, 67),
(247, 68),
(247, 69),
(247, 110),
(247, 111),
(247, 129),
(247, 130),
(247, 131),
(247, 132),
(247, 137),
(247, 253),
(247, 269),
(247, 276),
(247, 277),
(247, 278),
(247, 284),
(247, 285),
(247, 290),
(247, 291),
(247, 292),
(247, 293),
(247, 294),
(247, 304),
(247, 453),
(247, 589),
(247, 590),
(247, 591),
(247, 593),
(247, 594),
(247, 595),
(247, 596),
(247, 597),
(247, 598),
(247, 599),
(247, 602),
(247, 603),
(248, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 20),
(255, 24),
(255, 29),
(255, 51),
(255, 52),
(255, 67),
(255, 68),
(255, 69),
(255, 110),
(255, 111),
(255, 129),
(255, 130),
(255, 131),
(255, 132),
(255, 137),
(255, 253),
(255, 269),
(255, 276),
(255, 277),
(255, 278),
(255, 284),
(255, 285),
(255, 290),
(255, 291),
(255, 292),
(255, 293),
(255, 294),
(255, 304),
(255, 453),
(255, 589),
(255, 590),
(255, 591),
(255, 593),
(255, 594),
(255, 595),
(255, 596),
(255, 597),
(255, 598),
(255, 599),
(255, 602),
(255, 603),
(257, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! - Official News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0),
(4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0),
(6, 3, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 4, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(7, 5, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 6, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(6, 7, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 8, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_phocadownload`
--

CREATE TABLE IF NOT EXISTS `jos_phocadownload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sectionid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `filename` varchar(250) NOT NULL default '',
  `author` varchar(255) NOT NULL default '',
  `author_email` varchar(255) NOT NULL default '',
  `author_url` varchar(255) NOT NULL default '',
  `license` varchar(255) NOT NULL default '',
  `license_url` varchar(255) NOT NULL default '',
  `image_filename` varchar(255) NOT NULL default '',
  `image_download` varchar(255) NOT NULL default '',
  `link_external` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `version` varchar(255) NOT NULL default '',
  `directlink` tinyint(1) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `textonly` tinyint(1) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `confirm_license` int(11) NOT NULL default '0',
  `unaccessible_file` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `jos_phocadownload`
--

INSERT INTO `jos_phocadownload` (`id`, `catid`, `sectionid`, `sid`, `title`, `alias`, `filename`, `author`, `author_email`, `author_url`, `license`, `license_url`, `image_filename`, `image_download`, `link_external`, `description`, `version`, `directlink`, `date`, `hits`, `textonly`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `confirm_license`, `unaccessible_file`, `params`) VALUES
(1, 2, 1, 0, 'Manual Bitec', 'manual-bitec', 'manual bitec-tca600.pdf', 'Ismar', '', '', '', '', '', '', '', '\\zdxvsd', '1.0', 0, '2009-06-11 00:00:00', 11, 0, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, ''),
(2, 2, 1, 0, 'Manual LDI', 'manual-ldi', 'manual_ldi_tca1100.pdf', '', '', '', '', '', '', '', '', '', '', 0, '2009-06-11 20:07:52', 4, 0, 1, 0, '0000-00-00 00:00:00', 1, 0, -1, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_phocadownload_categories`
--

CREATE TABLE IF NOT EXISTS `jos_phocadownload_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `section` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `jos_phocadownload_categories`
--

INSERT INTO `jos_phocadownload_categories` (`id`, `parent_id`, `section`, `title`, `name`, `alias`, `image`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `date`, `count`, `params`) VALUES
(1, 0, 1, 'Softwares', '', 'softwares', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, '2009-06-11 19:07:29', 0, ''),
(2, 0, 1, 'Projetos Eletrônicos', '', 'projetos-eletronicos', '', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, '2009-06-11 19:07:59', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_phocadownload_licenses`
--

CREATE TABLE IF NOT EXISTS `jos_phocadownload_licenses` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_phocadownload_licenses`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_phocadownload_sections`
--

CREATE TABLE IF NOT EXISTS `jos_phocadownload_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_phocadownload_sections`
--

INSERT INTO `jos_phocadownload_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `date`, `count`, `params`) VALUES
(1, 'Downloads', '', 'downloads', '', '', 'left', '', 1, 0, '0000-00-00 00:00:00', 1, 0, '2009-06-11 19:05:12', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_phocadownload_settings`
--

CREATE TABLE IF NOT EXISTS `jos_phocadownload_settings` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(250) NOT NULL default '',
  `value` text NOT NULL,
  `values` text NOT NULL,
  `type` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `jos_phocadownload_settings`
--

INSERT INTO `jos_phocadownload_settings` (`id`, `title`, `value`, `values`, `type`) VALUES
(1, 'download_folder', 'phocadownload', '', 'text'),
(2, 'allowed_file_types', '{hqx=application/mac-binhex40}\r\n{cpt=application/mac-compactpro}\r\n{csv=text/x-comma-separated-values}\r\n{bin=application/macbinary}\r\n{dms=application/octet-stream}\r\n{lha=application/octet-stream}\r\n{lzh=application/octet-stream}\r\n{exe=application/octet-stream}\r\n{class=application/octet-stream}\r\n{psd=application/x-photoshop}\r\n{so=application/octet-stream}\r\n{sea=application/octet-stream}\r\n{dll=application/octet-stream}\r\n{oda=application/oda}\r\n{pdf=application/pdf}\r\n{ai=application/postscript}\r\n{eps=application/postscript}\r\n{ps=application/postscript}\r\n{smi=application/smil}\r\n{smil=application/smil}\r\n{mif=application/vnd.mif}\r\n{xls=application/vnd.ms-excel}\r\n{ppt=application/powerpoint}\r\n{wbxml=application/wbxml}\r\n{wmlc=application/wmlc}\r\n{dcr=application/x-director}\r\n{dir=application/x-director}\r\n{dxr=application/x-director}\r\n{dvi=application/x-dvi}\r\n{gtar=application/x-gtar}\r\n{gz=application/x-gzip}\r\n{php=application/x-httpd-php}\r\n{php4=application/x-httpd-php}\r\n{php3=application/x-httpd-php}\r\n{phtml=application/x-httpd-php}\r\n{phps=application/x-httpd-php-source}\r\n{js=application/x-javascript}\r\n{swf=application/x-shockwave-flash}\r\n{sit=application/x-stuffit}\r\n{tar=application/x-tar}\r\n{tgz=application/x-tar}\r\n{xhtml=application/xhtml+xml}\r\n{xht=application/xhtml+xml}\r\n{zip=application/x-zip}\r\n{mid=audio/midi}\r\n{midi=audio/midi}\r\n{mpga=audio/mpeg}\r\n{mp2=audio/mpeg}\r\n{mp3=audio/mpeg}\r\n{aif=audio/x-aiff}\r\n{aiff=audio/x-aiff}\r\n{aifc=audio/x-aiff}\r\n{ram=audio/x-pn-realaudio}\r\n{rm=audio/x-pn-realaudio}\r\n{rpm=audio/x-pn-realaudio-plugin}\r\n{ra=audio/x-realaudio}\r\n{rv=video/vnd.rn-realvideo}\r\n{wav=audio/x-wav}\r\n{bmp=image/bmp}\r\n{gif=image/gif}\r\n{jpeg=image/jpeg}\r\n{jpg=image/jpeg}\r\n{jpe=image/jpeg}\r\n{png=image/png}\r\n{tiff=image/tiff}\r\n{tif=image/tiff}\r\n{css=text/css}\r\n{html=text/html}\r\n{htm=text/html}\r\n{shtml=text/html}\r\n{txt=text/plain}\r\n{text=text/plain}\r\n{log=text/plain}\r\n{rtx=text/richtext}\r\n{rtf=text/rtf}\r\n{xml=text/xml}\r\n{xsl=text/xml}\r\n{mpeg=video/mpeg}\r\n{mpg=video/mpeg}\r\n{mpe=video/mpeg}\r\n{qt=video/quicktime}\r\n{mov=video/quicktime}\r\n{avi=video/x-msvideo}\r\n{movie=video/x-sgi-movie}\r\n{doc=application/msword}\r\n{xl=application/excel}\r\n{eml=message/rfc822}', '', 'textarea'),
(3, 'disallowed_file_types', '', '', 'textarea'),
(4, 'upload_maxsize', '3000000', '', 'text'),
(5, 'enable_flash', '0', '{0=No}{1=Yes}', 'select'),
(6, 'enable_user_statistics', '1', '{0=No}{1=Yes}', 'select'),
(7, 'absolute_path', '', '', 'text');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_phocadownload_user_stat`
--

CREATE TABLE IF NOT EXISTS `jos_phocadownload_user_stat` (
  `id` int(11) NOT NULL auto_increment,
  `fileid` int(11) NOT NULL default '0',
  `userid` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `jos_phocadownload_user_stat`
--

INSERT INTO `jos_phocadownload_user_stat` (`id`, `fileid`, `userid`, `count`, `date`, `published`, `ordering`) VALUES
(1, 1, 0, 11, '2017-01-11 02:53:38', 0, 0),
(2, 2, 0, 4, '2017-01-11 02:53:39', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Extraindo dados da tabela `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 6, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=xhtml\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(37, 'yvcomment', 'yvcomment', 'content', 0, 0, 1, 0, 0, 62, '2008-11-11 13:18:00', 'usecontenttable=1\nsectionid=8\ncategoryid=95\narticlesectionids=\narticlecategoryids=\narticleids=\narticlesectionids_exclude=0\nusecss=style003.css\nhide_title=0\ncomment_linkable=0\nauthor_mentioned_by=name\nauthor_linkable=0\nexecute_content_plugins=0\njoomla_version_warning=1\nallow_comments_on_comment=0\neditor_type=0\nuse_smiley_form=1\nuse_bbcode_form=1\nallow_html_edit_text=no\nmax_characters_fulltext=\nmin_post_period_user=60\nauto_close_days=\nnotify_addedit_usernames=\nallow_guest_add=1\nguest_username=guest\ncheck_guest_alias=1\nguest_email_required=0\nallow_guest_link=0\nguest_add_published=1\nmin_post_period_guest=30\nuse_captcha=1\ndelay_captcha_image=0\ncomments_position_article_view=AfterContent\ncomments_position_frontpage=AfterContent\ncomments_position=AfterContent\nnumcomments_linkable=article\nshow_please_register=0\naddform_position=below\norderby_pri=rdate\nshow_pagination=0\n\n'),
(38, 'System - BigoCaptcha', 'bigocaptcha', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'word_len=4\n\n'),
(43, 'Custom Properties Tags', 'cptags', 'content', 0, 0, 0, 0, 0, 62, '2008-11-20 14:12:19', 'tags_position=0\nlinked_tags=1\nshow_tag_name=0\ntag_in_meta=1\n\n'),
(42, 'System - JTags', 'jtags', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(44, 'Editor - JoomlaFCK', 'fckeditor', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'toolbar=Advanced\ntoolbar_ft=Advanced\nskin=office2007\ncontent_css=1\nimagePath=images/stories\nflashPath=images/stories/flash\nmediaPath=media\nfilePath=files\ntext_direction=ltr\nshiftentermode=1\nwwidth=750\nhheight=480\n'),
(45, 'Google Maps', 'plugin_googlemap2', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'publ=1\ndebug=0\nplugincode=mosmap\nGoogle_API_version=2.x\ntimeinterval=500\nGoogle_API_key=ABQIAAAAE0zoxoPSXJGHHTDV52gN5RSdvE0EXX34QkEXYxwI0puL1rmEKBTKiqpntZjcu6ZNpbDBGmrkgfoyUg\nGoogle_Multi_API_key=\nurlsetting=http_host\ngooglewebsite=maps.google.com\nwidth=500px\nheight=400px\nlat=52.075581\nlon=4.541513\ncenterlat=\ncenterlon=\naddress=Rua Dona Francisca, 4215 - Joinville - SC\nzoom=10\ncontrolType=user\nzoomType=3D-large\nzoomNew=0\nzoomWheel=0\nkeyboard=0\nmapType=Normal\nshowMaptype=1\nshowScale=0\noverview=0\nnavlabel=0\ndragging=1\nmarker=1\nicon=\niconwidth=\niconheight=\niconshadow=\niconshadowwidth=\niconshadowheight=\niconshadowanchorx=\niconshadowanchory=\niconanchorx=\niconanchory=\niconinfoanchorx=\niconinfoanchory=\nicontransparent=\niconimagemap=\ndir=0\ndirtype=D\navoidhighways=0\nshowdir=1\ntraffic=0\npanoramio=none\nwiki=none\nadsmanager=0\nmaxads=3\nlocalsearch=0\nadsense=\nchannel=\ngooglebar=0\nsearchlist=inline\nsearchtarget=_blank\nsearchzoompan=1\ntxtdir=Directions:\ntxtgetdir=Get Directions\ntxtfrom=From here\ntxtto=To here\ntxtdiraddr=Address:\ntxt_driving=\ntxt_avhighways=\ntxt_walking=\ndirdefault=0\ngotoaddr=0\ntxtaddr=Address: ##\nerraddr=Address ## not found!\nalign=center\nlangtype=site\nlang=\nlightbox=0\ntxtlightbox=Open lightbox\nlbxwidth=500px\nlbxheight=700px\neffect=none\nkmlrenderer=google\nkmlsidebar=none\nkmlsbwidth=200\nkmlsbsort=none\nkmllightbox=0\nkmlmessshow=0\nproxy=1\nsv=none\nsvwidth=100%\nsvheight=300\nsvyaw=0\nsvpitch=0\nsvzoom=\n\n'),
(46, 'Editor - JCE 1.5.3', 'jce', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(47, 'Virtuemart Extended Search Plugin', 'vmxsearch.plugin', 'search', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'density_flag=1\nname_flag=1\nsku_flag=1\ndesc_flag=1\nsdesc_flag=1\nurl_flag=1\nreview_flag=1\nmanufacturer_flag=1\ncategory_flag=1\nparent_filter=both\n'),
(48, 'Acajoom Content Bot', 'acajoombot', 'acajoom', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 7, 0, '0000-00-00 00:00:00', 0, 0, 86400),
(15, 'I will sign up to the IceTheme Club  to get', 'i-will-sign-up-to-the-icetheme-club-to-get', 5, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Extraindo dados da tabela `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 3),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 2),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 2),
(6, 14, 'All of the Above!', 6),
(7, 14, '', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0),
(13, 15, 'IT Veranda', 2),
(14, 15, 'IT HeadLine', 0),
(15, 15, 'IT SpotLight', 0),
(16, 15, 'IT Habitat', 1),
(17, 15, 'IT Breeze', 1),
(18, 15, 'Other Templates', 0),
(19, 15, 'All Templates', 1),
(20, 15, '', 0),
(21, 15, '', 0),
(22, 15, '', 0),
(23, 15, '', 0),
(24, 15, '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Extraindo dados da tabela `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14),
(12, '2008-03-23 18:33:39', 6, 14),
(13, '2008-04-27 10:43:20', 5, 14),
(14, '2008-04-28 18:35:04', 5, 14),
(15, '2008-05-02 19:01:28', 6, 14),
(16, '2008-05-02 19:04:18', 6, 14),
(17, '2008-07-07 17:59:52', 6, 14),
(18, '2008-07-12 04:35:12', 1, 14),
(19, '2008-08-10 15:52:03', 3, 14),
(20, '2008-09-19 17:03:19', 17, 15),
(21, '2008-11-19 11:42:18', 13, 15),
(22, '2008-12-18 15:45:52', 19, 15),
(23, '2009-03-16 11:20:43', 13, 15),
(24, '2009-04-13 16:21:17', 16, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_sections`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1484103153', 'b1038593c3ed93c705e8da2657a64074', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:52;s:19:"session.timer.start";i:1484101287;s:18:"session.timer.last";i:1484103150;s:17:"session.timer.now";i:1484103153;s:22:"session.client.browser";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:58:"C:\\ServidorWEB\\www\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"e038c6750a00aab81dff2559b25d9b44";}userstate|a:1:{s:10:"product_id";s:2:"20";}VMCHECK|s:2:"OK";auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:2:{s:3:"idx";i:1;i:0;a:2:{s:10:"product_id";i:20;s:11:"category_id";s:1:"6";}}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"BRL";last_page|s:20:"shop.product_details";vmUseGreyBox|s:1:"0";vmCartDirection|s:1:"0";last_browse_parameters|a:7:{s:11:"category_id";s:1:"6";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}product_sess|a:4:{i:19;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103047;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:36;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103047;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:20;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103047;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}i:17;a:4:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103047;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;s:7:"flypage";s:11:"flypage.tpl";}}taxrate|a:1:{i:1;i:0;}'),
('admin', '1484102899', '856df255f0382fd6d71c3b221144aa06', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:74;s:19:"session.timer.start";i:1484101325;s:18:"session.timer.last";i:1484102899;s:17:"session.timer.now";i:1484102899;s:22:"session.client.browser";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:5:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":7:{s:23:"com_modulesfilter_order";s:11:"m.published";s:27:"com_modulesfilter_order_Dir";s:4:"desc";s:23:"com_modulesfilter_state";s:0:"";s:26:"com_modulesfilter_position";s:5:"right";s:22:"com_modulesfilter_type";s:1:"0";s:26:"com_modulesfilter_assigned";s:1:"0";s:17:"com_modulessearch";s:0:"";}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:6:"global";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";s:2:"20";}}}s:11:"com_modules";a:1:{s:4:"data";O:8:"stdClass":1:{s:10:"limitstart";i:0;}}s:9:"com_menus";a:1:{s:4:"data";O:8:"stdClass":1:{s:8:"menutype";s:8:"mainmenu";}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:25:"contato@alfaeletro.com.br";s:8:"password";s:65:"7a7e34286e5f08551e54ea7a5ed47207:lA8l4h6D2ios32uBvYHvtaQNRFrQLJFb";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2017-01-11 00:20:47";s:13:"lastvisitDate";s:19:"2017-01-11 02:22:12";s:10:"activation";s:0:"";s:6:"params";s:0:"";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:58:"C:\\ServidorWEB\\www\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"da31b04418da60382ba19aab850057c1";}userstate|a:1:{s:10:"product_id";i:0;}auth|a:13:{s:11:"show_prices";i:1;s:7:"user_id";s:2:"62";s:8:"username";s:5:"admin";s:5:"perms";s:5:"admin";s:10:"first_name";N;s:9:"last_name";N;s:7:"country";s:2:"US";s:3:"zip";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";s:1:"1";s:22:"is_registered_customer";b:1;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|s:1:"1";minimum_pov|s:4:"0.00";vendor_currency|s:3:"BRL";last_page|s:11:"store.index";'),
('', '1484103230', '7c7c65498a5a60b5d2de11df00776172', 1, 0, '', 0, 0, '__default|a:10:{s:15:"session.counter";i:533;s:19:"session.timer.start";i:1484103004;s:18:"session.timer.last";i:1484103230;s:17:"session.timer.now";i:1484103230;s:22:"session.client.browser";s:19:"Wget/1.18 (mingw32)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";s:15:"Public Frontend";s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:58:"C:\\ServidorWEB\\www\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"c42d1df617ba73b8b67e80126242a365";s:17:"headline-FontSize";s:10:"font-large";s:19:"com_mailto.formtime";i:1484103144;}userstate|a:1:{s:10:"product_id";i:0;}VMCHECK|s:2:"OK";auth|a:11:{s:11:"show_prices";i:1;s:7:"user_id";i:0;s:8:"username";s:4:"demo";s:5:"perms";s:0:"";s:10:"first_name";s:5:"guest";s:9:"last_name";s:0:"";s:16:"shopper_group_id";s:1:"5";s:22:"shopper_group_discount";s:4:"0.00";s:24:"show_price_including_tax";s:1:"1";s:21:"default_shopper_group";i:1;s:22:"is_registered_customer";b:0;}cart|a:1:{s:3:"idx";i:0;}recent|a:1:{s:3:"idx";i:0;}ps_vendor_id|i:1;minimum_pov|s:4:"0.00";vendor_currency|s:3:"BRL";last_page|s:11:"shop.browse";vmUseGreyBox|s:1:"0";vmCartDirection|s:1:"0";last_browse_parameters|a:7:{s:11:"category_id";s:2:"29";s:15:"manufacturer_id";i:0;s:7:"keyword";b:0;s:8:"keyword1";s:0:"";s:8:"keyword2";s:0:"";s:8:"featured";s:1:"N";s:10:"discounted";s:1:"N";}product_sess|a:16:{i:19;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103154;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:36;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103154;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:20;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103154;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:17;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103154;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:21;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:22;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:23;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:25;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:24;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:26;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:28;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:30;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:32;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:33;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:34;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103167;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}i:18;a:3:{s:13:"discount_info";a:3:{s:6:"amount";i:0;s:10:"is_percent";i:0;s:11:"create_time";i:1484103156;}s:9:"vendor_id";s:1:"1";s:8:"tax_rate";i:0;}}taxrate|a:1:{i:1;i:0;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('it_veranda', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Extraindo dados da tabela `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'contato@alfaeletro.com.br', '7a7e34286e5f08551e54ea7a5ed47207:lA8l4h6D2ios32uBvYHvtaQNRFrQLJFb', 'Super Administrator', 0, 1, 25, '2017-01-11 00:20:47', '2017-01-11 02:22:12', '', ''),
(77, 'Leonardo Vasconcellos', 'leonardo', 'contato@devhouse.com.br', 'd5cb91546d54b0254ee4f78650120548:uvsRuhPCoW7aL7pDXMlbSkKguxwzzkBA', 'Registered', 0, 0, 18, '2009-06-25 14:13:42', '2009-06-25 20:57:22', '', 'language=\ntimezone=0\n\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_auth_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_group` (
  `group_id` int(11) NOT NULL auto_increment,
  `group_name` varchar(128) default NULL,
  `group_level` int(11) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `jos_vm_auth_group`
--

INSERT INTO `jos_vm_auth_group` (`group_id`, `group_name`, `group_level`) VALUES
(1, 'admin', 0),
(2, 'storeadmin', 250),
(3, 'shopper', 500),
(4, 'demo', 750);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_auth_user_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_group` (
  `user_id` int(11) NOT NULL default '0',
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_auth_user_group`
--

INSERT INTO `jos_vm_auth_user_group` (`user_id`, `group_id`) VALUES
(62, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_auth_user_vendor` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_auth_user_vendor`
--

INSERT INTO `jos_vm_auth_user_vendor` (`user_id`, `vendor_id`) VALUES
(62, 1),
(77, 1),
(61, 1),
(60, 1),
(59, 1),
(80, 1),
(58, 1),
(57, 1),
(56, 1),
(55, 1),
(54, 1),
(53, 1),
(52, 1),
(51, 1),
(50, 1),
(49, 1),
(48, 1),
(47, 1),
(46, 1),
(45, 1),
(44, 1),
(43, 1),
(42, 1),
(41, 1),
(40, 1),
(39, 1),
(38, 1),
(37, 1),
(36, 1),
(35, 1),
(34, 1),
(33, 1),
(32, 1),
(31, 1),
(30, 1),
(29, 1),
(28, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_cart`
--

CREATE TABLE IF NOT EXISTS `jos_vm_cart` (
  `user_id` int(11) NOT NULL,
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_cart`
--

INSERT INTO `jos_vm_cart` (`user_id`, `cart_content`, `last_updated`) VALUES
(77, 'a:3:{s:3:"idx";i:2;i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"19";s:9:"parent_id";i:19;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"36";s:9:"parent_id";i:36;s:11:"category_id";i:6;s:11:"description";s:0:"";}}', '2009-06-25 17:37:18'),
(61, 'a:4:{s:3:"idx";i:3;i:0;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"19";s:9:"parent_id";i:19;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:3;s:10:"product_id";s:2:"36";s:9:"parent_id";i:36;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:2;s:10:"product_id";s:2:"20";s:9:"parent_id";i:20;s:11:"category_id";i:6;s:11:"description";s:0:"";}}', '2009-06-29 16:47:50'),
(60, 'a:1:{s:3:"idx";i:0;}', '2009-06-29 18:27:55'),
(38, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 09:07:59'),
(37, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 09:27:06'),
(36, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 09:39:36'),
(35, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 09:46:16'),
(34, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 09:56:30'),
(30, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 10:56:59'),
(33, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 10:16:26'),
(32, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 10:25:03'),
(31, 'a:1:{s:3:"idx";i:0;}', '2009-06-30 10:32:13'),
(29, 'a:4:{s:3:"idx";i:3;i:0;a:5:{s:8:"quantity";i:5;s:10:"product_id";s:2:"36";s:9:"parent_id";i:36;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"17";s:9:"parent_id";i:17;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:4;s:10:"product_id";s:2:"20";s:9:"parent_id";i:20;s:11:"category_id";i:6;s:11:"description";s:0:"";}}', '2009-06-30 22:39:38'),
(28, 'a:4:{s:3:"idx";i:3;i:0;a:5:{s:8:"quantity";i:2;s:10:"product_id";s:2:"20";s:9:"parent_id";i:20;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:1;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"19";s:9:"parent_id";i:19;s:11:"category_id";i:6;s:11:"description";s:0:"";}i:2;a:5:{s:8:"quantity";i:1;s:10:"product_id";s:2:"36";s:9:"parent_id";i:36;s:11:"category_id";i:6;s:11:"description";s:0:"";}}', '2009-06-30 22:39:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `category_name` varchar(128) NOT NULL default '',
  `category_description` text,
  `category_thumb_image` varchar(255) default NULL,
  `category_full_image` varchar(255) default NULL,
  `category_publish` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `category_browsepage` varchar(255) NOT NULL default 'browse_1',
  `products_per_row` tinyint(2) NOT NULL default '1',
  `category_flypage` varchar(255) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`category_id`),
  KEY `idx_category_vendor_id` (`vendor_id`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Extraindo dados da tabela `jos_vm_category`
--

INSERT INTO `jos_vm_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`) VALUES
(12, 1, 'Controlador de Temperatura', '', 'resized/Controlador_de_T_4a462e6ec854e_90x90.jpg', 'Controlador_de_T_4a462e6ed86f0.jpg', 'Y', 1244807858, 1246113389, 'browse_1', 1, 'flypage.tpl', 5),
(10, 1, 'Capacitor SMD', '', '', '', 'Y', 1244807721, 1245870802, 'browse_1', 1, 'flypage.tpl', 3),
(11, 1, 'Conectores', '', 'resized/Conectores_4a462e0c5442d_90x90.jpg', 'Conectores_4a462e0c60c8f.jpg', 'Y', 1244807741, 1246113292, 'browse_1', 1, 'flypage.tpl', 4),
(6, 1, 'Cabos', '', 'resized/Cabos_4a462d77539ca_90x90.jpg', 'Cabos_4a462d776ebc8.jpg', 'Y', 1244807565, 1246113142, 'browse_1', 1, 'flypage.tpl', 1),
(7, 1, 'Capacitor Discreto', '', 'resized/Capacitor_Discre_4a462d8a24cd4_90x90.jpg', 'Capacitor_Discre_4a462d8a36a44.jpg', 'Y', 1244807610, 1246113161, 'browse_1', 1, 'flypage.tpl', 2),
(8, 1, 'Eletrolítico', '', '', '', 'Y', 1244807630, 1245519858, 'browse_1', 1, 'flypage.tpl', 1),
(9, 1, 'Cerâmico', '', '', '', 'Y', 1244807671, 1245870790, 'browse_1', 1, 'flypage.tpl', 2),
(13, 1, 'Controlador de Temperatura tipo J', '', '', '', 'Y', 1244807949, 1245870853, 'browse_1', 1, 'flypage.tpl', 1),
(14, 1, 'Controlador de Temperatura', '', '', '', 'Y', 1244807986, 1245870865, 'browse_1', 1, 'flypage.tpl', 2),
(15, 1, 'Conversor de Sinal', '', 'resized/Conversor_de_Sin_4a462e7eacf29_90x90.jpg', 'Conversor_de_Sin_4a462e7ec1231.jpg', 'Y', 1244808035, 1246113405, 'browse_1', 1, 'flypage.tpl', 6),
(20, 1, 'Diodo Discreto', '', 'resized/Diodo_Discreto_4a462faf9340b_90x90.jpg', 'Diodo_Discreto_4a462fafa5c7f.jpg', 'Y', 1244953848, 1246113711, 'browse_1', 1, 'flypage.tpl', 7),
(21, 1, 'Diodo SMD', '', '', '', 'Y', 1244953863, 1245870919, 'browse_1', 1, 'flypage.tpl', 8),
(22, 1, 'Ferro / Pasta / Solda', '', '', '', 'Y', 1244953881, 1245870934, 'browse_1', 1, 'flypage.tpl', 9),
(23, 1, 'Fonte de Alimentação', '', 'resized/Fonte_de_Aliment_4a462fe1ca69f_90x90.jpg', 'Fonte_de_Aliment_4a462fe1e8723.jpg', 'Y', 1244953903, 1246113760, 'browse_1', 1, 'flypage.tpl', 10),
(24, 1, 'Potenciômetro', '', 'resized/Potenci__metro_4a4633aebad82_90x90.jpg', 'Potenci__metro_4a4633af470e5.jpg', 'Y', 1244953925, 1246114733, 'browse_1', 1, 'flypage.tpl', 11),
(25, 1, 'Resistência Aquecimento', '', 'resized/Resist__ncia_Aqu_4a4633e252cef_90x90.jpg', 'Resist__ncia_Aqu_4a4633e26995b.jpg', 'Y', 1244953952, 1246114785, 'browse_1', 1, 'flypage.tpl', 12),
(26, 1, 'Circular', '', '', '', 'Y', 1244953972, 1244953972, 'managed', 1, 'flypage.tpl', 1),
(27, 1, 'Retangular', '', '', '', 'Y', 1244954019, 1245871013, 'browse_1', 1, 'flypage.tpl', 2),
(28, 1, 'Abraçadeira', '', '', '', 'Y', 1244954048, 1245871038, 'browse_1', 1, 'flypage.tpl', 3),
(29, 1, 'Resistor Discreto', '', 'resized/Resistor_Discret_4a4633f7057bf_90x90.jpg', 'Resistor_Discret_4a4633f722c58.jpg', 'Y', 1244954082, 1246114806, 'browse_1', 1, 'flypage.tpl', 13),
(30, 1, '1/4w', '', '', '', 'Y', 1244954112, 1245871069, 'browse_1', 1, 'flypage.tpl', 1),
(31, 1, '1/2W', '', '', '', 'Y', 1244954129, 1245871084, 'browse_1', 1, 'flypage.tpl', 2),
(32, 1, '1W', '', '', '', 'Y', 1244954149, 1245871106, 'browse_1', 1, 'flypage.tpl', 3),
(33, 1, '2W', '', '', '', 'Y', 1244954166, 1245871118, 'browse_1', 1, 'flypage.tpl', 4),
(34, 1, '5W', '', '', '', 'Y', 1244954187, 1245871130, 'browse_1', 1, 'flypage.tpl', 5),
(35, 1, 'Resistor SMD', '', '', '', 'Y', 1244954210, 1245871154, 'browse_1', 1, 'flypage.tpl', 14),
(36, 1, 'Sensor de Temperatura', '', 'resized/Sensor_de_Temper_4a463419427d0_90x90.jpg', 'Sensor_de_Temper_4a46341959f9f.jpg', 'Y', 1244954228, 1246114840, 'browse_1', 1, 'flypage.tpl', 15),
(37, 1, 'Temporizadores', '', 'resized/Temporizadores_4a46342eefd8f_90x90.jpg', 'Temporizadores_4a46342f14f6c.jpg', 'Y', 1244954258, 1246114862, 'browse_1', 1, 'flypage.tpl', 16),
(38, 1, 'Transistores', '', '', '', 'Y', 1244954272, 1245871194, 'browse_1', 1, 'flypage.tpl', 17),
(39, 1, 'Trimpot', '', '', '', 'Y', 1244954296, 1245871207, 'browse_1', 1, 'flypage.tpl', 18),
(40, 1, 'Ventuinhas', '', 'resized/Ventuinhas_4a463446b5266_90x90.jpg', 'Ventuinhas_4a463446d36c9.jpg', 'Y', 1244954308, 1246114886, 'browse_1', 1, 'flypage.tpl', 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL default '0',
  `category_child_id` int(11) NOT NULL default '0',
  `category_list` int(11) default NULL,
  PRIMARY KEY  (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_category_xref`
--

INSERT INTO `jos_vm_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
(0, 10, NULL),
(0, 7, NULL),
(0, 6, NULL),
(7, 9, NULL),
(7, 8, NULL),
(0, 11, NULL),
(0, 12, NULL),
(12, 13, NULL),
(12, 14, NULL),
(0, 15, NULL),
(0, 20, NULL),
(0, 21, NULL),
(0, 22, NULL),
(0, 23, NULL),
(0, 24, NULL),
(0, 25, NULL),
(25, 26, NULL),
(25, 27, NULL),
(25, 28, NULL),
(0, 29, NULL),
(29, 30, NULL),
(29, 31, NULL),
(29, 32, NULL),
(29, 33, NULL),
(29, 34, NULL),
(0, 35, NULL),
(0, 36, NULL),
(0, 37, NULL),
(0, 38, NULL),
(0, 39, NULL),
(0, 40, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_country`
--

CREATE TABLE IF NOT EXISTS `jos_vm_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL default '1',
  `country_name` varchar(64) default NULL,
  `country_3_code` char(3) default NULL,
  `country_2_code` char(2) default NULL,
  PRIMARY KEY  (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Extraindo dados da tabela `jos_vm_country`
--

INSERT INTO `jos_vm_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW'),
(240, 1, 'East Timor', 'XET', 'XE'),
(241, 1, 'Jersey', 'XJE', 'XJ'),
(242, 1, 'St. Barthelemy', 'XSB', 'XB'),
(243, 1, 'St. Eustatius', 'XSE', 'XU'),
(244, 1, 'Canary Islands', 'XCA', 'XC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_coupons`
--

CREATE TABLE IF NOT EXISTS `jos_vm_coupons` (
  `coupon_id` int(16) NOT NULL auto_increment,
  `coupon_code` varchar(32) NOT NULL default '',
  `percent_or_total` enum('percent','total') NOT NULL default 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL default 'gift',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_coupons`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_creditcard`
--

CREATE TABLE IF NOT EXISTS `jos_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `creditcard_name` varchar(70) NOT NULL default '',
  `creditcard_code` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`creditcard_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `jos_vm_creditcard`
--

INSERT INTO `jos_vm_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_csv`
--

CREATE TABLE IF NOT EXISTS `jos_vm_csv` (
  `field_id` int(11) NOT NULL auto_increment,
  `field_name` varchar(128) NOT NULL default '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL default '0',
  `field_required` char(1) default 'N',
  PRIMARY KEY  (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Extraindo dados da tabela `jos_vm_csv`
--

INSERT INTO `jos_vm_csv` (`field_id`, `field_name`, `field_default_value`, `field_ordering`, `field_required`) VALUES
(1, 'product_sku', '', 1, 'Y'),
(2, 'product_s_desc', '', 5, 'N'),
(3, 'product_desc', '', 6, 'N'),
(4, 'product_thumb_image', '', 7, 'N'),
(5, 'product_full_image', '', 8, 'N'),
(6, 'product_weight', '', 9, 'N'),
(7, 'product_weight_uom', 'KG', 10, 'N'),
(8, 'product_length', '', 11, 'N'),
(9, 'product_width', '', 12, 'N'),
(10, 'product_height', '', 13, 'N'),
(11, 'product_lwh_uom', '', 14, 'N'),
(12, 'product_in_stock', '0', 15, 'N'),
(13, 'product_available_date', '', 16, 'N'),
(14, 'product_discount_id', '', 17, 'N'),
(15, 'product_name', '', 2, 'Y'),
(16, 'product_price', '', 4, 'N'),
(17, 'category_path', '', 3, 'Y'),
(18, 'manufacturer_id', '', 18, 'N'),
(19, 'product_tax_id', '', 19, 'N'),
(20, 'product_sales', '', 20, 'N'),
(21, 'product_parent_id', '0', 21, 'N'),
(22, 'attribute', '', 22, 'N'),
(23, 'custom_attribute', '', 23, 'N'),
(24, 'attributes', '', 24, 'N'),
(25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_currency`
--

CREATE TABLE IF NOT EXISTS `jos_vm_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) default NULL,
  `currency_code` char(3) default NULL,
  PRIMARY KEY  (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Extraindo dados da tabela `jos_vm_currency`
--

INSERT INTO `jos_vm_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentine Peso', 'ARS'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Real', 'BRL'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CZK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Nuevo Sol', 'PEN'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Złoty', 'PLN'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'RON'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'Russian Ruble', 'RUB'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bath', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRY'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD'),
(157, 'Slovak Koruna', 'SKK'),
(158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_export`
--

CREATE TABLE IF NOT EXISTS `jos_vm_export` (
  `export_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `export_name` varchar(255) default NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL,
  `export_enabled` char(1) NOT NULL default 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`export_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_export`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_function`
--

CREATE TABLE IF NOT EXISTS `jos_vm_function` (
  `function_id` int(11) NOT NULL auto_increment,
  `module_id` int(11) default NULL,
  `function_name` varchar(32) default NULL,
  `function_class` varchar(32) default NULL,
  `function_method` varchar(32) default NULL,
  `function_description` text,
  `function_perms` varchar(255) default NULL,
  PRIMARY KEY  (`function_id`),
  KEY `idx_function_module_id` (`module_id`),
  KEY `idx_function_name` (`function_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- Extraindo dados da tabela `jos_vm_function`
--

INSERT INTO `jos_vm_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to virtuemart.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'none'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'none'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin'),
(146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin'),
(147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin'),
(148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin'),
(149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo'),
(153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin'),
(154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin'),
(155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin'),
(156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin'),
(157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin'),
(158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin'),
(159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin'),
(160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin'),
(161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin'),
(162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin'),
(163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin'),
(164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin'),
(165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin'),
(166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin'),
(167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin'),
(168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin'),
(169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin'),
(170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin'),
(171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin'),
(172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin'),
(173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none'),
(174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none'),
(175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin'),
(176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin'),
(177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin'),
(178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin'),
(179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin'),
(180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin'),
(181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin'),
(182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin'),
(183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin'),
(184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin'),
(185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin'),
(186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin'),
(187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none'),
(188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none'),
(189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none'),
(190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none'),
(191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none'),
(192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin'),
(193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin'),
(194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_manufacturer`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `mf_name` varchar(64) default NULL,
  `mf_email` varchar(255) default NULL,
  `mf_desc` text,
  `mf_category_id` int(11) default NULL,
  `mf_url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_vm_manufacturer`
--

INSERT INTO `jos_vm_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Alfa Eletro', 'alfa@alfaeletro.com.br', '', 1, 'http://www.alfaeletro.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_manufacturer_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL auto_increment,
  `mf_category_name` varchar(64) default NULL,
  `mf_category_desc` text,
  PRIMARY KEY  (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_vm_manufacturer_category`
--

INSERT INTO `jos_vm_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_module`
--

CREATE TABLE IF NOT EXISTS `jos_vm_module` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_name` varchar(255) default NULL,
  `module_description` text,
  `module_perms` varchar(255) default NULL,
  `module_publish` char(1) default NULL,
  `list_order` int(11) default NULL,
  PRIMARY KEY  (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12844 ;

--
-- Extraindo dados da tabela `jos_vm_module`
--

INSERT INTO `jos_vm_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_publish`, `list_order`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99),
(8, 'store', '', 'storeadmin,admin', 'Y', 2),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99),
(10, 'checkout', '', 'none', 'N', 99),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12),
(12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_orders`
--

CREATE TABLE IF NOT EXISTS `jos_vm_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `vendor_id` int(11) NOT NULL default '0',
  `order_number` varchar(32) default NULL,
  `user_info_id` varchar(32) default NULL,
  `order_total` decimal(15,5) NOT NULL default '0.00000',
  `order_subtotal` decimal(15,5) default NULL,
  `order_tax` decimal(10,2) default NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) default NULL,
  `order_shipping_tax` decimal(10,2) default NULL,
  `coupon_discount` decimal(12,2) NOT NULL default '0.00',
  `coupon_code` varchar(32) default NULL,
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `order_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `ship_method_id` varchar(255) default NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_vendor_id` (`vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `jos_vm_orders`
--

INSERT INTO `jos_vm_orders` (`order_id`, `user_id`, `vendor_id`, `order_number`, `user_info_id`, `order_total`, `order_subtotal`, `order_tax`, `order_tax_details`, `order_shipping`, `order_shipping_tax`, `coupon_discount`, `coupon_code`, `order_discount`, `order_currency`, `order_status`, `cdate`, `mdate`, `ship_method_id`, `customer_note`, `ip_address`) VALUES
(3, 38, 1, '38_db17e87167bf969305fe093535f39', 'f1f9f4af9c69f5d44cc31e5f0eca83cc', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246363678, 1246363678, 'flex|STD|Standard Shipping under 25.00|12', '', '200.146.45.123'),
(4, 37, 1, '37_352a2c8fb69546e41e80a91c7b374', '466182a8fff3d78b33ee6d00b4e72b41', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246364824, 1246364824, 'flex|STD|Standard Shipping under 25.00|12', '', '200.146.45.123'),
(5, 36, 1, '36_9009b113a9ff9b53462cac101032c', '080eb8943b2f76732ad89ec8de6c873b', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246365576, 1246365576, 'flex|STD|Standard Shipping under 25.00|12', '', '200.146.45.123'),
(6, 35, 1, '35_01d30fe3fed020585e02cde40d4bf', '86b342449be33d6e63023b7539a6a5c3', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246365975, 1246365975, 'flex|STD|Standard Shipping under 25.00|12', 'Por favor deixe uma nota para nós com seu pedido se assim desejar:Por favor deixe uma nota para nós com seu pedido se assim desejar:Por favor deixe uma nota para nós com seu pedido se assim desejar:', '200.146.45.123'),
(7, 34, 1, '34_7c0f19c63a8fbf7255aa8ff0bd6bf', '44d161c45ecbd6021474e10ebac44d4d', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246366589, 1246366589, 'flex|STD|Standard Shipping under 25.00|12', 'bla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla blabla bla bla', '189.26.155.135'),
(8, 33, 1, '33_c0417ed4f48ffe048cc238859a516', '803bf38b51915cfbd87106af1f149b93', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246366902, 1246366902, 'flex|STD|Standard Shipping under 25.00|12', 'fadsj fldeaj flah fldskahf kdasghf dskjagfkadsfh adkj fh dskajfhdakjfh dsakfhdakj fhadkjfh akhf dasklfh dosafaf', '189.26.155.135'),
(9, 33, 1, '33_88aad6d726577eadddb59fc0af508', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246367776, 1246367776, 'flex|STD|Standard Shipping under 25.00|12', 'fdsjalfjdsalfj adslfj dsklafj dslafj adsk fhkdashfk dahkjfd ah', '189.26.155.135'),
(10, 32, 1, '32_8f6833999887adae6c37b3abc3245', '400fb6fc190c74b03ac8957fda4248ea', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246368293, 1246368293, 'flex|STD|Standard Shipping under 25.00|12', 'fdjas fladskjf ldkasjfh dsak', '189.26.155.135'),
(11, 31, 1, '31_74a4506923a89d909c6deae946b59', '72d3f08119bb8acb39920dfebd1b1c91', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246368719, 1246368719, 'flex|STD|Standard Shipping under 25.00|12', 'a fkdsja fhdsa fkdhas fkjdgs akfdh sa', '189.26.155.135'),
(12, 30, 1, '30_e692b51995f6daae0063c4c5557d0', '112d08db50298d227da85d498d2fc426', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246369201, 1246369201, 'flex|STD|Standard Shipping under 25.00|12', 'afj adslkfh dsakfhadskl fhdkasjf hdsai', '189.26.155.135'),
(13, 30, 1, '30_023ac47f249b0c25e6c8e5c9462d9', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246369760, 1246369760, 'flex|STD|Standard Shipping under 25.00|12', 'fjdas fdashklfh dasklfh daslfhdasl kfhdslafjdsa fhds afhdkas fha', '189.26.155.135'),
(14, 30, 1, '30_7472d2c14605345e1b37c99e1219e', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246370047, 1246370047, 'flex|STD|Standard Shipping under 25.00|12', 'fdsafdas', '189.26.155.135'),
(15, 30, 1, '30_d82b80d41956905af1c975c672f0a', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246370132, 1246370132, 'flex|STD|Standard Shipping under 25.00|12', 'fda lfhads klfhds afh ads', '189.26.155.135'),
(16, 30, 1, '30_ddc67dec865d4201c16dca468e2b8', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246370218, 1246370218, 'flex|STD|Standard Shipping under 25.00|12', 'fdasfdasfads', '189.26.155.135'),
(17, 29, 1, '29_276b4fd34c63e227b3a64d294cc34', '6cb6d8de85972bac5c125eeff344fc5f', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246409949, 1246409949, 'flex|STD|Standard Shipping under 25.00|12', 'Teste de pedido!', '200.146.45.186'),
(18, 28, 1, '28_040a7c2240c3e37a8ffc2cbccf84c', 'f02f2fb1942de54ce2dea72fc34a6923', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246410055, 1246410055, 'flex|STD|Standard Shipping under 25.00|12', 'bla bla bla', '200.146.45.186'),
(19, 29, 1, '29_ec429a681a30a2eeeb0e5a15580f7', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246410662, 1246410662, 'flex|STD|Standard Shipping under 25.00|12', 'f dasjlfd aslfjd asfjldas fjdas lfjdsl', '200.146.45.186'),
(20, 29, 1, '29_1d03537eed8de901d93be9e59c34a', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246410811, 1246410811, 'flex|STD|Standard Shipping under 25.00|12', 'fjdsalfj dsalfj daslf ldsjaj', '200.146.45.186'),
(21, 29, 1, '29_ab6358affd460b78cc6369446a53a', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246410912, 1246410912, 'flex|STD|Standard Shipping under 25.00|12', 'fdjasfdjasfld', '200.146.45.186'),
(22, 29, 1, '29_bbf5eb4275f5dd6426ac8195a6302', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411030, 1246411030, 'flex|STD|Standard Shipping under 25.00|12', 'fjadslfjadslfj', '200.146.45.186'),
(23, 29, 1, '29_06774feec445f2d132b04078a90e5', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411273, 1246411273, 'flex|STD|Standard Shipping under 25.00|12', 'fdsjdsklajf', '200.146.45.186'),
(24, 28, 1, '28_c47b583ef131b80f442e1f287e566', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411301, 1246411301, 'flex|STD|Standard Shipping under 25.00|12', 'fdasfdsa', '200.146.45.186'),
(25, 29, 1, '29_257a3178b30c716ba28f5898bff84', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411424, 1246411424, 'flex|STD|Standard Shipping under 25.00|12', 'fdasfdas', '200.146.45.186'),
(26, 29, 1, '29_a8b3d1e06d88a659394124e1637f9', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411514, 1246411514, 'flex|STD|Standard Shipping under 25.00|12', 'fdasjflkdsajl', '200.146.45.186'),
(27, 29, 1, '29_b8bf78ed4f9ac3468efa04f4bef4d', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411772, 1246411772, 'flex|STD|Standard Shipping under 25.00|12', 't fldsaj fladsjfl djsa fdsjla', '200.146.45.186'),
(28, 28, 1, '28_0e99eb68cc9685cdfcb7b7dd6b50a', 'undefined', '14.00000', '0.00000', '0.00', 'a:0:{}', '12.00', '0.00', '0.00', '', '-2.00', 'BRL', 'P', 1246411816, 1246411816, 'flex|STD|Standard Shipping under 25.00|12', 'fjadsl fdjasf dlasjf ldsa', '200.146.45.186');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_order_history`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_code` char(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_status_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `jos_vm_order_history`
--

INSERT INTO `jos_vm_order_history` (`order_status_history_id`, `order_id`, `order_status_code`, `date_added`, `customer_notified`, `comments`) VALUES
(3, 3, 'P', '2009-06-30 09:07:58', 1, ''),
(4, 4, 'P', '2009-06-30 09:27:04', 1, ''),
(5, 5, 'P', '2009-06-30 09:39:36', 1, ''),
(6, 6, 'P', '2009-06-30 09:46:15', 1, ''),
(7, 7, 'P', '2009-06-30 09:56:29', 1, ''),
(8, 8, 'P', '2009-06-30 10:01:42', 1, ''),
(9, 9, 'P', '2009-06-30 10:16:16', 1, ''),
(10, 10, 'P', '2009-06-30 10:24:53', 1, ''),
(11, 11, 'P', '2009-06-30 10:31:59', 1, ''),
(12, 12, 'P', '2009-06-30 10:40:01', 1, ''),
(13, 13, 'P', '2009-06-30 10:49:20', 1, ''),
(14, 14, 'P', '2009-06-30 10:54:07', 1, ''),
(15, 15, 'P', '2009-06-30 10:55:32', 1, ''),
(16, 16, 'P', '2009-06-30 10:56:58', 1, ''),
(17, 17, 'P', '2009-06-30 21:59:09', 1, ''),
(18, 18, 'P', '2009-06-30 22:00:55', 1, ''),
(19, 19, 'P', '2009-06-30 22:11:02', 1, ''),
(20, 20, 'P', '2009-06-30 22:13:31', 1, ''),
(21, 21, 'P', '2009-06-30 22:15:12', 1, ''),
(22, 22, 'P', '2009-06-30 22:17:10', 1, ''),
(23, 23, 'P', '2009-06-30 22:21:13', 1, ''),
(24, 24, 'P', '2009-06-30 22:21:41', 1, ''),
(25, 25, 'P', '2009-06-30 22:23:44', 1, ''),
(26, 26, 'P', '2009-06-30 22:25:14', 1, ''),
(27, 27, 'P', '2009-06-30 22:29:32', 1, ''),
(28, 28, 'P', '2009-06-30 22:30:16', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_order_item`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `user_info_id` varchar(32) default NULL,
  `vendor_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `order_item_sku` varchar(64) NOT NULL default '',
  `order_item_name` varchar(64) NOT NULL default '',
  `product_quantity` int(11) default NULL,
  `product_item_price` decimal(15,5) default NULL,
  `product_final_price` decimal(12,2) NOT NULL default '0.00',
  `order_item_currency` varchar(16) default NULL,
  `order_status` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_attribute` text,
  PRIMARY KEY  (`order_item_id`),
  KEY `idx_order_item_order_id` (`order_id`),
  KEY `idx_order_item_user_info_id` (`user_info_id`),
  KEY `idx_order_item_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Extraindo dados da tabela `jos_vm_order_item`
--

INSERT INTO `jos_vm_order_item` (`order_item_id`, `order_id`, `user_info_id`, `vendor_id`, `product_id`, `order_item_sku`, `order_item_name`, `product_quantity`, `product_item_price`, `product_final_price`, `order_item_currency`, `order_status`, `cdate`, `mdate`, `product_attribute`) VALUES
(10, 7, '44d161c45ecbd6021474e10ebac44d4d', 1, 20, '62543', 'Novo Produto', 54, '0.00000', '0.00', 'BRL', 'P', 1246366589, 1246366589, ''),
(6, 3, 'f1f9f4af9c69f5d44cc31e5f0eca83cc', 1, 19, '232323', 'Lixo de Produto', 56, '0.00000', '0.00', 'BRL', 'P', 1246363678, 1246363678, ''),
(7, 4, '466182a8fff3d78b33ee6d00b4e72b41', 1, 36, '9999', 'Mais Um Teste', 56, '0.00000', '0.00', 'BRL', 'P', 1246364824, 1246364824, ''),
(8, 5, '080eb8943b2f76732ad89ec8de6c873b', 1, 19, '232323', 'Lixo de Produto', 78, '0.00000', '0.00', 'BRL', 'P', 1246365576, 1246365576, ''),
(9, 6, '86b342449be33d6e63023b7539a6a5c3', 1, 36, '9999', 'Mais Um Teste', 47, '0.00000', '0.00', 'BRL', 'P', 1246365975, 1246365975, ''),
(11, 8, '803bf38b51915cfbd87106af1f149b93', 1, 32, '2480', 'TCA 2000 - TRANSDUTOR PARA TERMOPAR 0/700° - 0/5V', 33, '0.00000', '0.00', 'BRL', 'P', 1246366902, 1246366902, ''),
(12, 8, '803bf38b51915cfbd87106af1f149b93', 1, 26, '263', 'TCA 1100 - TRANSDUTOR ---MV-MA-V PARA MV-MA-V', 28, '0.00000', '0.00', 'BRL', 'P', 1246366902, 1246366902, ''),
(13, 8, '803bf38b51915cfbd87106af1f149b93', 1, 23, '2406', 'TCA 1100 - TRANSDUTOR - 0/20V - +/-10V', 53, '0.00000', '0.00', 'BRL', 'P', 1246366902, 1246366902, ''),
(14, 9, 'undefined', 1, 19, '232323', 'Lixo de Produto', 1, '0.00000', '0.00', 'BRL', 'P', 1246367776, 1246367776, ''),
(15, 10, '400fb6fc190c74b03ac8957fda4248ea', 1, 19, '232323', 'Lixo de Produto', 345, '0.00000', '0.00', 'BRL', 'P', 1246368293, 1246368293, ''),
(16, 11, '72d3f08119bb8acb39920dfebd1b1c91', 1, 36, '9999', 'Mais Um Teste', 23, '0.00000', '0.00', 'BRL', 'P', 1246368719, 1246368719, ''),
(17, 12, '112d08db50298d227da85d498d2fc426', 1, 36, '9999', 'Mais Um Teste', 43, '0.00000', '0.00', 'BRL', 'P', 1246369201, 1246369201, ''),
(18, 13, 'undefined', 1, 36, '9999', 'Mais Um Teste', 534, '0.00000', '0.00', 'BRL', 'P', 1246369760, 1246369760, ''),
(19, 14, 'undefined', 1, 20, '62543', 'Novo Produto', 23, '0.00000', '0.00', 'BRL', 'P', 1246370047, 1246370047, ''),
(20, 15, 'undefined', 1, 36, '9999', 'Mais Um Teste', 534, '0.00000', '0.00', 'BRL', 'P', 1246370132, 1246370132, ''),
(21, 16, 'undefined', 1, 17, '0001', 'Produto Teste', 1, '0.00000', '0.00', 'BRL', 'P', 1246370218, 1246370218, ''),
(22, 17, '6cb6d8de85972bac5c125eeff344fc5f', 1, 20, '62543', 'Novo Produto', 3, '0.00000', '0.00', 'BRL', 'P', 1246409949, 1246409949, ''),
(23, 17, '6cb6d8de85972bac5c125eeff344fc5f', 1, 17, '0001', 'Produto Teste', 3, '0.00000', '0.00', 'BRL', 'P', 1246409949, 1246409949, ''),
(24, 18, 'f02f2fb1942de54ce2dea72fc34a6923', 1, 36, '9999', 'Mais Um Teste', 2, '0.00000', '0.00', 'BRL', 'P', 1246410055, 1246410055, ''),
(25, 18, 'f02f2fb1942de54ce2dea72fc34a6923', 1, 20, '62543', 'Novo Produto', 2, '0.00000', '0.00', 'BRL', 'P', 1246410055, 1246410055, ''),
(26, 19, 'undefined', 1, 36, '9999', 'Mais Um Teste', 7676, '0.00000', '0.00', 'BRL', 'P', 1246410662, 1246410662, ''),
(27, 20, 'undefined', 1, 36, '9999', 'Mais Um Teste', 1, '0.00000', '0.00', 'BRL', 'P', 1246410811, 1246410811, ''),
(28, 21, 'undefined', 1, 20, '62543', 'Novo Produto', 1, '0.00000', '0.00', 'BRL', 'P', 1246410912, 1246410912, ''),
(29, 22, 'undefined', 1, 36, '9999', 'Mais Um Teste', 1, '0.00000', '0.00', 'BRL', 'P', 1246411030, 1246411030, ''),
(30, 23, 'undefined', 1, 20, '62543', 'Novo Produto', 2, '0.00000', '0.00', 'BRL', 'P', 1246411273, 1246411273, ''),
(31, 24, 'undefined', 1, 20, '62543', 'Novo Produto', 2, '0.00000', '0.00', 'BRL', 'P', 1246411301, 1246411301, ''),
(32, 24, 'undefined', 1, 17, '0001', 'Produto Teste', 2, '0.00000', '0.00', 'BRL', 'P', 1246411301, 1246411301, ''),
(33, 24, 'undefined', 1, 19, '232323', 'Lixo de Produto', 1, '0.00000', '0.00', 'BRL', 'P', 1246411301, 1246411301, ''),
(34, 25, 'undefined', 1, 36, '9999', 'Mais Um Teste', 1, '0.00000', '0.00', 'BRL', 'P', 1246411424, 1246411424, ''),
(35, 26, 'undefined', 1, 19, '232323', 'Lixo de Produto', 1, '0.00000', '0.00', 'BRL', 'P', 1246411514, 1246411514, ''),
(36, 27, 'undefined', 1, 36, '9999', 'Mais Um Teste', 1, '0.00000', '0.00', 'BRL', 'P', 1246411772, 1246411772, ''),
(37, 27, 'undefined', 1, 20, '62543', 'Novo Produto', 1, '0.00000', '0.00', 'BRL', 'P', 1246411772, 1246411772, ''),
(38, 28, 'undefined', 1, 36, '9999', 'Mais Um Teste', 1, '0.00000', '0.00', 'BRL', 'P', 1246411816, 1246411816, ''),
(39, 28, 'undefined', 1, 20, '62543', 'Novo Produto', 1, '0.00000', '0.00', 'BRL', 'P', 1246411816, 1246411816, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_order_payment`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_payment` (
  `order_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) default NULL,
  `order_payment_code` varchar(30) NOT NULL default '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) default NULL,
  `order_payment_name` varchar(255) default NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL,
  KEY `idx_order_payment_order_id` (`order_id`),
  KEY `idx_order_payment_method_id` (`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_order_payment`
--

INSERT INTO `jos_vm_order_payment` (`order_id`, `payment_method_id`, `order_payment_code`, `order_payment_number`, `order_payment_expire`, `order_payment_name`, `order_payment_log`, `order_payment_trans_id`) VALUES
(3, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(4, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(5, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(6, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(7, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(8, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(9, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(10, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(11, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(12, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(13, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(14, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(15, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(16, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(17, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(18, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(19, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(20, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(21, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(22, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(23, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(24, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(25, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(26, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(27, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', ''),
(28, 2, '', NULL, NULL, NULL, 'Informação de Pagamento capturada para processamento posterior.<br/>', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_order_status`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `order_status_code` char(1) NOT NULL default '',
  `order_status_name` varchar(64) default NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  PRIMARY KEY  (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `jos_vm_order_status`
--

INSERT INTO `jos_vm_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `order_status_description`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pendendo', '', 1, 1),
(2, 'C', 'Confirmado', '', 2, 1),
(3, 'X', 'Cancelado', '', 3, 1),
(4, 'R', 'Restituido', '', 4, 1),
(5, 'S', 'Enviado', '', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_order_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_order_user_info` (
  `order_info_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`order_info_id`),
  KEY `idx_order_info_order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Extraindo dados da tabela `jos_vm_order_user_info`
--

INSERT INTO `jos_vm_order_user_info` (`order_info_id`, `order_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
(3, 3, 38, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '54735487', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(4, 4, 37, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(5, 5, 36, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(6, 6, 35, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 304777777', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(7, 7, 34, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 3026-6908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(8, 8, 33, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '23432424', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(9, 9, 33, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '2143214', '', '', 'Endereco', '', 'Abaetetuba', 'PA', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
(10, 10, 32, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '5443577', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(11, 11, 31, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '545325432', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(12, 12, 30, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '432432', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(13, 13, 30, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '43424', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
(14, 14, 30, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '12343', '', '', 'Endereco', '', 'Salete', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
(15, 15, 30, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '432432', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
(16, 16, 30, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '54325', '', '', 'Endereco', '', 'Flor do Sertão', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
(17, 17, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(18, 18, 28, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'Santa Catarina', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(19, 19, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(20, 20, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(21, 21, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(22, 22, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(23, 23, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(24, 24, 28, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'Santa Catarina', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(25, 25, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(26, 26, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(27, 27, 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking'),
(28, 28, 28, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'Santa Catarina', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_payment_method`
--

CREATE TABLE IF NOT EXISTS `jos_vm_payment_method` (
  `payment_method_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `payment_method_name` varchar(255) default NULL,
  `payment_class` varchar(50) NOT NULL default '',
  `shopper_group_id` int(11) default NULL,
  `payment_method_discount` decimal(12,2) default NULL,
  `payment_method_discount_is_percent` tinyint(1) NOT NULL,
  `payment_method_discount_max_amount` decimal(10,2) NOT NULL,
  `payment_method_discount_min_amount` decimal(10,2) NOT NULL,
  `list_order` int(11) default NULL,
  `payment_method_code` varchar(8) default NULL,
  `enable_processor` char(1) default NULL,
  `is_creditcard` tinyint(1) NOT NULL default '0',
  `payment_enabled` char(1) NOT NULL default 'N',
  `accepted_creditcards` varchar(128) NOT NULL default '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  PRIMARY KEY  (`payment_method_id`),
  KEY `idx_payment_method_vendor_id` (`vendor_id`),
  KEY `idx_payment_method_name` (`payment_method_name`),
  KEY `idx_payment_method_list_order` (`list_order`),
  KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `jos_vm_payment_method`
--

INSERT INTO `jos_vm_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `payment_method_discount_is_percent`, `payment_method_discount_max_amount`, `payment_method_discount_min_amount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 0, '0.00', '0.00', 5, 'COD', 'N', 0, 'Y', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, '0.00', '0.00', 0, 'AN', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(4, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, '0.00', '0.00', 0, 'PP', 'P', 0, 'Y', '', '<?php\r\n$db1 = new ps_DB();\r\n$q = "SELECT country_2_code FROM #__vm_country WHERE country_3_code=''".$user->country."'' ORDER BY country_2_code ASC";\r\n$db1->query($q);\r\n\r\n$url = "https://www.paypal.com/cgi-bin/webscr";\r\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\r\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\r\n$post_variables = Array(\r\n"cmd" => "_ext-enter",\r\n"redirect_cmd" => "_xclick",\r\n"upload" => "1",\r\n"business" => PAYPAL_EMAIL,\r\n"receiver_email" => PAYPAL_EMAIL,\r\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\r\n"order_id" => $db->f("order_id"),\r\n"invoice" => $db->f("order_number"),\r\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\r\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\r\n"currency_code" => $_SESSION[''vendor_currency''],\r\n\r\n"address_override" => "1",\r\n"first_name" => $dbbt->f(''first_name''),\r\n"last_name" => $dbbt->f(''last_name''),\r\n"address1" => $dbbt->f(''address_1''),\r\n"address2" => $dbbt->f(''address_2''),\r\n"zip" => $dbbt->f(''zip''),\r\n"city" => $dbbt->f(''city''),\r\n"state" => $dbbt->f(''state''),\r\n"country" => $db1->f(''country_2_code''),\r\n"email" => $dbbt->f(''user_email''),\r\n"night_phone_b" => $dbbt->f(''phone_1''),\r\n"cpp_header_image" => $vendor_image_url,\r\n\r\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\r\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\r\n"cancel_return" => SECUREURL ."index.php",\r\n"undefined_quantity" => "0",\r\n\r\n"test_ipn" => PAYPAL_DEBUG,\r\n"pal" => "NRUBJXESJTY24",\r\n"no_shipping" => "1",\r\n"no_note" => "1"\r\n);\r\nif( $page == "checkout.thankyou" ) {\r\n$query_string = "?";\r\nforeach( $post_variables as $name => $value ) {\r\n$query_string .= $name. "=" . urlencode($value) ."&";\r\n}\r\nvmRedirect( $url . $query_string );\r\n} else {\r\necho ''<form action="''.$url.''" method="post" target="_blank">'';\r\necho ''<input type="image" name="submit" src="https://www.paypal.com/en_US/i/btn/x-click-but6.gif" alt="Click to pay with PayPal - it is fast, free and secure!" />'';\r\n\r\nforeach( $post_variables as $name => $value ) {\r\necho ''<input type="hidden" name="''.$name.''" value="''.htmlspecialchars($value).''" />'';\r\n}\r\necho ''</form>'';\r\n\r\n}\r\n?>', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, '0.00', '0.00', 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, '0.00', '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', ''),
(7, 1, '2Checkout', 'ps_twocheckout', 5, '0.00', 0, '0.00', '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, '0.00', '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, '0.00', '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, '0.00', '0.00', 0, 'EWAY', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, '0.00', '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, '0.00', '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, '0.00', '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, '0.00', '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', ''),
(15, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, '0.00', 0, '0.00', '0.00', 0, 'PFP', 'Y', 0, 'Y', '1,2,6,7,', '', ''),
(16, 1, 'Dankort/PBS via ePay', 'ps_epay', 5, '0.00', 0, '0.00', '0.00', 0, 'EPAY', 'P', 0, 'Y', '', '<?php\r\nrequire_once(CLASSPATH ."payment/ps_epay.cfg.php");\r\n$url=basename($mosConfig_live_site);\r\nfunction get_iso_code($code) {\r\nswitch ($code) {\r\ncase "ADP": return "020"; break;\r\ncase "AED": return "784"; break;\r\ncase "AFA": return "004"; break;\r\ncase "ALL": return "008"; break;\r\ncase "AMD": return "051"; break;\r\ncase "ANG": return "532"; break;\r\ncase "AOA": return "973"; break;\r\ncase "ARS": return "032"; break;\r\ncase "AUD": return "036"; break;\r\ncase "AWG": return "533"; break;\r\ncase "AZM": return "031"; break;\r\ncase "BAM": return "977"; break;\r\ncase "BBD": return "052"; break;\r\ncase "BDT": return "050"; break;\r\ncase "BGL": return "100"; break;\r\ncase "BGN": return "975"; break;\r\ncase "BHD": return "048"; break;\r\ncase "BIF": return "108"; break;\r\ncase "BMD": return "060"; break;\r\ncase "BND": return "096"; break;\r\ncase "BOB": return "068"; break;\r\ncase "BOV": return "984"; break;\r\ncase "BRL": return "986"; break;\r\ncase "BSD": return "044"; break;\r\ncase "BTN": return "064"; break;\r\ncase "BWP": return "072"; break;\r\ncase "BYR": return "974"; break;\r\ncase "BZD": return "084"; break;\r\ncase "CAD": return "124"; break;\r\ncase "CDF": return "976"; break;\r\ncase "CHF": return "756"; break;\r\ncase "CLF": return "990"; break;\r\ncase "CLP": return "152"; break;\r\ncase "CNY": return "156"; break;\r\ncase "COP": return "170"; break;\r\ncase "CRC": return "188"; break;\r\ncase "CUP": return "192"; break;\r\ncase "CVE": return "132"; break;\r\ncase "CYP": return "196"; break;\r\ncase "CZK": return "203"; break;\r\ncase "DJF": return "262"; break;\r\ncase "DKK": return "208"; break;\r\ncase "DOP": return "214"; break;\r\ncase "DZD": return "012"; break;\r\ncase "ECS": return "218"; break;\r\ncase "ECV": return "983"; break;\r\ncase "EEK": return "233"; break;\r\ncase "EGP": return "818"; break;\r\ncase "ERN": return "232"; break;\r\ncase "ETB": return "230"; break;\r\ncase "EUR": return "978"; break;\r\ncase "FJD": return "242"; break;\r\ncase "FKP": return "238"; break;\r\ncase "GBP": return "826"; break;\r\ncase "GEL": return "981"; break;\r\ncase "GHC": return "288"; break;\r\ncase "GIP": return "292"; break;\r\ncase "GMD": return "270"; break;\r\ncase "GNF": return "324"; break;\r\ncase "GTQ": return "320"; break;\r\ncase "GWP": return "624"; break;\r\ncase "GYD": return "328"; break;\r\ncase "HKD": return "344"; break;\r\ncase "HNL": return "340"; break;\r\ncase "HRK": return "191"; break;\r\ncase "HTG": return "332"; break;\r\ncase "HUF": return "348"; break;\r\ncase "IDR": return "360"; break;\r\ncase "ILS": return "376"; break;\r\ncase "INR": return "356"; break;\r\ncase "IQD": return "368"; break;\r\ncase "IRR": return "364"; break;\r\ncase "ISK": return "352"; break;\r\ncase "JMD": return "388"; break;\r\ncase "JOD": return "400"; break;\r\ncase "JPY": return "392"; break;\r\ncase "KES": return "404"; break;\r\ncase "KGS": return "417"; break;\r\ncase "KHR": return "116"; break;\r\ncase "KMF": return "174"; break;\r\ncase "KPW": return "408"; break;\r\ncase "KRW": return "410"; break;\r\ncase "KWD": return "414"; break;\r\ncase "KYD": return "136"; break;\r\ncase "KZT": return "398"; break;\r\ncase "LAK": return "418"; break;\r\ncase "LBP": return "422"; break;\r\ncase "LKR": return "144"; break;\r\ncase "LRD": return "430"; break;\r\ncase "LSL": return "426"; break;\r\ncase "LTL": return "440"; break;\r\ncase "LVL": return "428"; break;\r\ncase "LYD": return "434"; break;\r\ncase "MAD": return "504"; break;\r\ncase "MDL": return "498"; break;\r\ncase "MGF": return "450"; break;\r\ncase "MKD": return "807"; break;\r\ncase "MMK": return "104"; break;\r\ncase "MNT": return "496"; break;\r\ncase "MOP": return "446"; break;\r\ncase "MRO": return "478"; break;\r\ncase "MTL": return "470"; break;\r\ncase "MUR": return "480"; break;\r\ncase "MVR": return "462"; break;\r\ncase "MWK": return "454"; break;\r\ncase "MXN": return "484"; break;\r\ncase "MXV": return "979"; break;\r\ncase "MYR": return "458"; break;\r\ncase "MZM": return "508"; break;\r\ncase "NAD": return "516"; break;\r\ncase "NGN": return "566"; break;\r\ncase "NIO": return "558"; break;\r\ncase "NOK": return "578"; break;\r\ncase "NPR": return "524"; break;\r\ncase "NZD": return "554"; break;\r\ncase "OMR": return "512"; break;\r\ncase "PAB": return "590"; break;\r\ncase "PEN": return "604"; break;\r\ncase "PGK": return "598"; break;\r\ncase "PHP": return "608"; break;\r\ncase "PKR": return "586"; break;\r\ncase "PLN": return "985"; break;\r\ncase "PYG": return "600"; break;\r\ncase "QAR": return "634"; break;\r\ncase "ROL": return "642"; break;\r\ncase "RUB": return "643"; break;\r\ncase "RUR": return "810"; break;\r\ncase "RWF": return "646"; break;\r\ncase "SAR": return "682"; break;\r\ncase "SBD": return "090"; break;\r\ncase "SCR": return "690"; break;\r\ncase "SDD": return "736"; break;\r\ncase "SEK": return "752"; break;\r\ncase "SGD": return "702"; break;\r\ncase "SHP": return "654"; break;\r\ncase "SIT": return "705"; break;\r\ncase "SKK": return "703"; break;\r\ncase "SLL": return "694"; break;\r\ncase "SOS": return "706"; break;\r\ncase "SRG": return "740"; break;\r\ncase "STD": return "678"; break;\r\ncase "SVC": return "222"; break;\r\ncase "SYP": return "760"; break;\r\ncase "SZL": return "748"; break;\r\ncase "THB": return "764"; break;\r\ncase "TJS": return "972"; break;\r\ncase "TMM": return "795"; break;\r\ncase "TND": return "788"; break;\r\ncase "TOP": return "776"; break;\r\ncase "TPE": return "626"; break;\r\ncase "TRL": return "792"; break;\r\ncase "TRY": return "949"; break;\r\ncase "TTD": return "780"; break;\r\ncase "TWD": return "901"; break;\r\ncase "TZS": return "834"; break;\r\ncase "UAH": return "980"; break;\r\ncase "UGX": return "800"; break;\r\ncase "USD": return "840"; break;\r\ncase "UYU": return "858"; break;\r\ncase "UZS": return "860"; break;\r\ncase "VEB": return "862"; break;\r\ncase "VND": return "704"; break;\r\ncase "VUV": return "548"; break;\r\ncase "XAF": return "950"; break;\r\ncase "XCD": return "951"; break;\r\ncase "XOF": return "952"; break;\r\ncase "XPF": return "953"; break;\r\ncase "YER": return "886"; break;\r\ncase "YUM": return "891"; break;\r\ncase "ZAR": return "710"; break;\r\ncase "ZMK": return "894"; break;\r\ncase "ZWD": return "716"; break;\r\n}\r\nreturn "XXX"; // return invalid code if the currency is not found \r\n}\r\n\r\nfunction calculateePayCurrency($order_id)\r\n{\r\n$db =& new ps_DB;\r\n$currency_code = "208";\r\n$q = "SELECT order_currency FROM #__vm_orders where order_id = " . $order_id;\r\n$db->query($q);\r\nif ($db->next_record()) {\r\n	$currency_code = get_iso_code($db->f("order_currency"));\r\n}\r\nreturn $currency_code;\r\n}\r\n echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_HEADER'');\r\n?>\r\n<script type="text/javascript" src="http://www.epay.dk/js/standardwindow.js"></script>\r\n<script type="text/javascript">\r\nfunction printCard(cardId)\r\n{\r\ndocument.write ("<table border=0 cellspacing=10 cellpadding=10>");\r\nswitch (cardId) {\r\ncase 1: document.write ("<input type=hidden name=cardtype value=1>"); break;\r\ncase 2: document.write ("<input type=hidden name=cardtype value=2>"); break;\r\ncase 3: document.write ("<input type=hidden name=cardtype value=3>"); break;\r\ncase 4: document.write ("<input type=hidden name=cardtype value=4>"); break;\r\ncase 5: document.write ("<input type=hidden name=cardtype value=5>"); break;\r\ncase 6: document.write ("<input type=hidden name=cardtype value=6>"); break;\r\ncase 7: document.write ("<input type=hidden name=cardtype value=7>"); break;\r\ncase 8: document.write ("<input type=hidden name=cardtype value=8>"); break;\r\ncase 9: document.write ("<input type=hidden name=cardtype value=9>"); break;\r\ncase 10: document.write ("<input type=hidden name=cardtype value=10>"); break;\r\ncase 12: document.write ("<input type=hidden name=cardtype value=12>"); break;\r\ncase 13: document.write ("<input type=hidden name=cardtype value=13>"); break;\r\ncase 14: document.write ("<input type=hidden name=cardtype value=14>"); break;\r\ncase 15: document.write ("<input type=hidden name=cardtype value=15>"); break;\r\ncase 16: document.write ("<input type=hidden name=cardtype value=16>"); break;\r\ncase 17: document.write ("<input type=hidden name=cardtype value=17>"); break;\r\ncase 18: document.write ("<input type=hidden name=cardtype value=18>"); break;\r\ncase 19: document.write ("<input type=hidden name=cardtype value=19>"); break;\r\ncase 21: document.write ("<input type=hidden name=cardtype value=21>"); break;\r\ncase 22: document.write ("<input type=hidden name=cardtype value=22>"); break;\r\n}\r\ndocument.write ("</table>");\r\n}\r\n</script>\r\n<form action="https://ssl.ditonlinebetalingssystem.dk/popup/default.asp" method="post" name="ePay" target="ePay_window" id="ePay">\r\n<input type="hidden" name="merchantnumber" value="<?php echo EPAY_MERCHANTNUMBER ?>">\r\n<input type="hidden" name="amount" value="<?php echo round($db->f("order_total")*100, 2 ) ?>">\r\n<input type="hidden" name="currency" value="<?php echo calculateePayCurrency($order_id)?>">\r\n<input type="hidden" name="orderid" value="<?php echo $order_id ?>">\r\n<input type="hidden" name="ordretext" value="">\r\n<?php \r\nif (EPAY_CALLBACK == "1")\r\n{\r\n	echo ''<input type="hidden" name="callbackurl" value="'' . $mosConfig_live_site . ''/index.php?page=checkout.epay_result&accept=1&sessionid='' . $sessionid . ''&option=com_virtuemart&Itemid=1">'';\r\n}\r\n?>\r\n<input type="hidden" name="accepturl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=1&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="declineurl" value="<?php echo $mosConfig_live_site ?>/index.php?page=checkout.epay_result&accept=0&sessionid=<?php echo $sessionid ?>&option=com_virtuemart&Itemid=1">\r\n<input type="hidden" name="group" value="<?php echo EPAY_GROUP ?>">\r\n<input type="hidden" name="instant" value="<?php echo EPAY_INSTANT_CAPTURE ?>">\r\n<input type="hidden" name="language" value="<?php echo EPAY_LANGUAGE ?>">\r\n<input type="hidden" name="authsms" value="<?php echo EPAY_AUTH_SMS ?>">\r\n<input type="hidden" name="authmail" value="<?php echo EPAY_AUTH_MAIL . (strlen(EPAY_AUTH_MAIL) > 0 && EPAY_AUTHEMAILCUSTOMER == 1 ? ";" : "") . (EPAY_AUTHEMAILCUSTOMER == 1 ? $user->user_email : ""); ?>">\r\n<input type="hidden" name="windowstate" value="<?php echo EPAY_WINDOW_STATE ?>">\r\n<input type="hidden" name="use3D" value="<?php echo EPAY_3DSECURE ?>">\r\n<input type="hidden" name="addfee" value="<?php echo EPAY_ADDFEE ?>">\r\n<input type="hidden" name="subscription" value="<?php echo EPAY_SUBSCRIPTION ?>">\r\n<input type="hidden" name="MD5Key" value="<?php if (EPAY_MD5_TYPE == 2) echo md5( calculateePayCurrency($order_id) . round($db->f("order_total")*100, 2 ) . $order_id  . EPAY_MD5_KEY)?>">\r\n<?php\r\nif (EPAY_CARDTYPES_1 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(1)</script>";\r\nif (EPAY_CARDTYPES_2 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(2)</script>";\r\nif (EPAY_CARDTYPES_3 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(3)</script>";\r\nif (EPAY_CARDTYPES_4 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(4)</script>";\r\nif (EPAY_CARDTYPES_5 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(5)</script>";\r\nif (EPAY_CARDTYPES_6 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(6)</script>";\r\nif (EPAY_CARDTYPES_7 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(7)</script>";\r\nif (EPAY_CARDTYPES_8 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(8)</script>";\r\nif (EPAY_CARDTYPES_9 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(9)</script>";\r\nif (EPAY_CARDTYPES_10 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(10)</script>";\r\nif (EPAY_CARDTYPES_11 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(11)</script>";\r\nif (EPAY_CARDTYPES_12 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(12)</script>";\r\nif (EPAY_CARDTYPES_14 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(14)</script>";\r\nif (EPAY_CARDTYPES_15 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(15)</script>";\r\nif (EPAY_CARDTYPES_16 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(16)</script>";\r\nif (EPAY_CARDTYPES_17 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(17)</script>";\r\nif (EPAY_CARDTYPES_18 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(18)</script>";\r\nif (EPAY_CARDTYPES_19 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(19)</script>";\r\nif (EPAY_CARDTYPES_21 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(21)</script>";\r\nif (EPAY_CARDTYPES_22 == "1" && EPAY_CARDTYPES_0 != "1") echo "<script>printCard(22)</script>";;\r\n?>\r\n</form>\r\n<script>open_ePay_window();</script>\r\n<br>\r\n<table border="0" width="100%"><tr><td><input type="button" onClick="open_ePay_window()" value="<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_BUTTON_OPEN_WINDOW'') ?>"></td><td width="100%" id="flashLoader"></td></tr></table><br><br><br>\r\n<?php echo $VM_LANG->_(''VM_CHECKOUT_EPAY_PAYMENT_CHECKOUT_FOOTER'') ?>\r\n<br><br>\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/epay_logo.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/mastercard_securecode.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/pci.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/verisign_secure.gif" border="0">&nbsp;&nbsp;&nbsp;\r\n<img src="components/com_virtuemart/shop_image/ps_image/epay_images/visa_secure.gif" border="0">&nbsp;&nbsp;&nbsp;;', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) NOT NULL default '0',
  `product_parent_id` int(11) NOT NULL default '0',
  `product_sku` varchar(64) NOT NULL default '',
  `product_s_desc` varchar(255) default NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) default NULL,
  `product_full_image` varchar(255) default NULL,
  `product_publish` char(1) default NULL,
  `product_weight` decimal(10,4) default NULL,
  `product_weight_uom` varchar(32) default 'pounds.',
  `product_length` decimal(10,4) default NULL,
  `product_width` decimal(10,4) default NULL,
  `product_height` decimal(10,4) default NULL,
  `product_lwh_uom` varchar(32) default 'inches',
  `product_url` varchar(255) default NULL,
  `product_in_stock` int(11) NOT NULL default '0',
  `product_available_date` int(11) default NULL,
  `product_availability` varchar(56) NOT NULL default '',
  `product_special` char(1) default NULL,
  `product_discount_id` int(11) default NULL,
  `ship_code_id` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `product_name` varchar(64) default NULL,
  `product_sales` int(11) NOT NULL default '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` tinyint(2) NOT NULL default '0',
  `product_unit` varchar(32) default NULL,
  `product_packaging` int(11) default NULL,
  `child_options` varchar(45) default NULL,
  `quantity_options` varchar(45) default NULL,
  `child_option_ids` varchar(45) default NULL,
  `product_order_levels` varchar(45) default NULL,
  PRIMARY KEY  (`product_id`),
  KEY `idx_product_vendor_id` (`vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`),
  KEY `idx_product_ship_code_id` (`ship_code_id`),
  KEY `idx_product_name` (`product_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Extraindo dados da tabela `jos_vm_product`
--

INSERT INTO `jos_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`) VALUES
(17, 1, 0, '0001', 'Descrição do produto de teste.', '', 'resized/Produto_Teste_4a3bbf611cf87_90x90.jpg', 'Produto_Teste_4a3bbf612b91f.jpg', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', 'Teste', -6, 1244948400, '', 'N', 0, NULL, 1244954687, 1245949080, 'Produto Teste', 6, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(18, 1, 0, '2332', '', '', 'resized/Capacitor_Eletro_4a3d1f2155843_90x90.jpg', 'Capacitor_Eletro_4a3d1f2160867.jpg', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245519281, 1245520172, 'Capacitor Eletrolítico 10uF/10V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(19, 1, 0, '232323', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis ultrices sodales. Pellentesque placerat nunc velit, quis placerat est. Donec non lacus sapien. Fusce fermentum pellentesque ante et ullamcorper. Curabitur rhoncus orci sit amet magna luc', '<div id="lipsum">TESTE TESTES</div>', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', 'Lixo', -482, 1245466800, '', 'N', 0, NULL, 1245521685, 1246048684, 'Lixo de Produto', 482, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(20, 1, 0, '62543', 'fdsafdsa', 'fdasfdas', 'resized/Novo_Produto_4a3d2aad0cd9a_90x90.jpg', 'Novo_Produto_4a3d2aad4e7d5.jpg', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', 'Novo', -89, 1245466800, '', 'N', 0, NULL, 1245522605, 1245861351, 'Novo Produto', 89, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(21, 1, 0, '2424', '', '', 'resized/manual_ldi_tca1100_x.pdf', 'manual_ldi_tca1100.pdf', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245527694, 1245528962, 'TCA 1100 - TRANSDUTOR - +/- 10V - +/- 10V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(22, 1, 0, '2345', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245527924, 1245527924, 'TCA 1100 - TRANSDUTOR - 0/10V-4/20MA', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(23, 1, 0, '2406', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', -53, 1245466800, '', 'N', 0, NULL, 1245528003, 1245528003, 'TCA 1100 - TRANSDUTOR - 0/20V - +/-10V', 53, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(24, 1, 0, '2323', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528039, 1245528156, 'TCA 1100 - TRANSDUTOR - 4/20MA-0/5V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(25, 1, 0, '2333', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528088, 1245528165, 'TCA 1100 - TRANSDUTOR - 4/20MA-0/5V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(26, 1, 0, '263', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', -28, 1245466800, '', 'N', 0, NULL, 1245528112, 1245528173, 'TCA 1100 - TRANSDUTOR ---MV-MA-V PARA MV-MA-V', 28, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(27, 1, 0, '2401', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528283, 1245528283, 'TCA 1100 - TRANSDUTOR 4/20MA - 0/10V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(28, 1, 0, '264', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528484, 1245528484, 'TCA 1200 - TRANSDUTOR DE TENSÃO VCC', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(29, 1, 0, '2404', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528502, 1245528502, 'TCA 2000 - TRANSDUTOR - TERMOPAR 0/10VCC 0-300º', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(30, 1, 0, '2405', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528668, 1245528668, 'TCA 2000 - TRANSDUTOR - TERMOPAR 4/20MA 0-300º', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(31, 1, 0, '265', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528685, 1245528685, 'TCA 2000 - TRANSDUTOR --TERMOPAR PARA MV-MA-V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(32, 1, 0, '2480', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', -33, 1245466800, '', 'N', 0, NULL, 1245528704, 1245528704, 'TCA 2000 - TRANSDUTOR PARA TERMOPAR 0/700° - 0/5V', 33, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(33, 1, 0, '2403', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528724, 1245528724, 'TCA 3000 - TRANSDUTOR - PT-100 0/10VCC 0-100º', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(34, 1, 0, '2402', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528741, 1245528850, 'TCA 3000 - TRANSDUTOR - PT-100 4/20MA 0-100º', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0'),
(35, 1, 0, '266', '', '', '', '', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', '', 0, 1245466800, '', 'N', 0, NULL, 1245528760, 1245528760, 'TCA 3000 - TRANSDUTOR --PT-100 PARA MV-MA-V', 0, '', '', 0, 'Un', 0, 'N,N,N,N,N,N,20%,10%,', 'none,0,0,1', '', '0,0'),
(36, 1, 0, '9999', 'Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta Descricao curta', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis ultrices sodales. Pellentesque placerat nunc velit, quis placerat est. Donec non lacus sapien. Fusce fermentum pellentesque ante et ullamcorper. Curabitur rhoncus orci sit amet magna luctus tempor. Sed pharetra, nulla ut commodo ullamcorper, leo purus gravida orci, a porttitor felis enim a mauris. Vestibulum scelerisque vulputate sodales. Vestibulum laoreet laoreet auctor. Curabitur bibendum justo in enim mollis pharetra. In et elit est, ut molestie arcu. Sed sed velit eget nulla molestie rhoncus eget ut risus. Fusce sollicitudin arcu nec massa viverra vitae interdum magna lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus adipiscing eleifend pharetra. Suspendisse leo orci, mattis ut hendrerit euismod, venenatis quis magna. Quisque posuere scelerisque egestas. Etiam sed leo est. Vestibulum ut orci pulvinar odio tincidunt congue. Curabitur id elit magna, eget iaculis quam.</p>\r\n<p>In viverra lacinia gravida. Maecenas sit amet ligula ac ipsum ornare sagittis a sit amet nibh. Donec rutrum ultrices pulvinar. Nam sed leo turpis. Duis nec lorem eros. Nulla quis urna velit, non volutpat tortor. Vivamus eu lacus nunc, quis dapibus dolor. Vestibulum dapibus lacus at ante pretium semper. Donec ac nibh non turpis tempor aliquet. Maecenas in nisl ut dolor sodales venenatis at ac mi. Cras est est, rutrum feugiat tempus eget, adipiscing a justo. Ut auctor arcu nisl. Suspendisse potenti. Etiam lacinia ultrices dictum. Integer quis dolor nulla. Vivamus iaculis mollis felis, nec volutpat erat rutrum sed. In hac habitasse platea dictumst. Nullam ultricies tincidunt dui, ut imperdiet orci fringilla at.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris egestas, erat quis commodo egestas, nunc purus pellentesque tellus, non fermentum magna lacus et dolor. Phasellus pretium velit augue, sit amet accumsan leo. Morbi massa urna, ullamcorper eget viverra imperdiet, dictum id nulla. Etiam rhoncus, est vel tempor ultricies, metus libero sagittis arcu, non rhoncus urna dui sed diam. Cras mattis lobortis nulla non fringilla. Vivamus sit amet blandit erat. Ut elit eros, scelerisque sit amet varius accumsan, varius ac sapien. Integer sit amet fringilla risus. Duis in enim eget dolor congue feugiat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam ac dolor at sem convallis blandit. Sed id est vitae urna commodo dapibus. Ut vehicula mauris non ante ultrices a euismod mauris auctor. Sed et erat risus, id cursus dui. Praesent vestibulum sapien non sem gravida faucibus.</p>', 'resized/Mais_Um_Teste_4a432ba235ca8_90x90.jpg', 'Mais_Um_Teste_4a432ba24c5bd.jpg', 'Y', '0.0000', 'Kg', '0.0000', '0.0000', '0.0000', 'Cm', 'Mais', -8920, 1245898800, '', 'N', 0, NULL, 1245914466, 1245923752, 'Mais Um Teste', 8920, '', '', 0, 'Un', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_attribute`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_value` char(255) NOT NULL default '',
  PRIMARY KEY  (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_product_attribute`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL default '0',
  `attribute_name` char(255) NOT NULL default '',
  `attribute_list` int(11) NOT NULL default '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_attribute_sku`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_category_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_category_xref` (
  `category_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_list` int(11) default NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_category_xref`
--

INSERT INTO `jos_vm_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
(15, 22, 1),
(15, 21, 1),
(8, 18, 1),
(6, 17, 1),
(6, 20, 1),
(15, 23, 1),
(0, 27, 1),
(15, 26, 1),
(15, 25, 1),
(6, 19, 1),
(15, 24, 1),
(15, 28, 1),
(0, 29, 1),
(15, 30, 1),
(0, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(0, 35, 1),
(6, 36, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_discount`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `amount` decimal(12,2) NOT NULL default '0.00',
  `is_percent` tinyint(1) NOT NULL default '0',
  `start_date` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  PRIMARY KEY  (`discount_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `jos_vm_product_discount`
--

INSERT INTO `jos_vm_product_discount` (`discount_id`, `amount`, `is_percent`, `start_date`, `end_date`) VALUES
(1, '20.00', 1, 1097704800, 1194390000),
(2, '2.00', 0, 1098655200, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_download`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_download` (
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `end_date` int(11) NOT NULL default '0',
  `download_max` int(11) NOT NULL default '0',
  `download_id` varchar(32) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_download`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_files`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_files` (
  `file_id` int(19) NOT NULL auto_increment,
  `file_product_id` int(11) NOT NULL default '0',
  `file_name` varchar(128) NOT NULL default '',
  `file_title` varchar(128) NOT NULL default '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL default '',
  `file_mimetype` varchar(64) NOT NULL default '',
  `file_url` varchar(254) NOT NULL default '',
  `file_published` tinyint(1) NOT NULL default '0',
  `file_is_image` tinyint(1) NOT NULL default '0',
  `file_image_height` int(11) NOT NULL default '0',
  `file_image_width` int(11) NOT NULL default '0',
  `file_image_thumb_height` int(11) NOT NULL default '50',
  `file_image_thumb_width` int(11) NOT NULL default '0',
  PRIMARY KEY  (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `jos_vm_product_files`
--

INSERT INTO `jos_vm_product_files` (`file_id`, `file_product_id`, `file_name`, `file_title`, `file_description`, `file_extension`, `file_mimetype`, `file_url`, `file_published`, `file_is_image`, `file_image_height`, `file_image_width`, `file_image_thumb_height`, `file_image_thumb_width`) VALUES
(1, 19, '/components/com_virtuemart/shop_image/product/Creek.jpg', 'Lixo de Produto', '', 'jpg', 'image/jpeg', 'http://www.alfaeletro.com.br/components/com_virtuemart/shop_image/product/Creek.jpg', 1, 1, 450, 600, 67, 90),
(2, 19, '/components/com_virtuemart/shop_image/product/Garden.jpg', 'Lixo de Produto', '', 'jpg', 'image/jpeg', 'http://www.alfaeletro.com.br/components/com_virtuemart/shop_image/product/Garden.jpg', 1, 1, 450, 600, 67, 90),
(3, 19, '/media/manual BITEC-TCA700.pdf', 'Lixo de Produto', '', 'pdf', 'application/pdf', '', 1, 0, 0, 0, 0, 0),
(4, 19, '/components/com_virtuemart/shop_image/product/Winter Leaves.jpg', 'Lixo de Produto', '', 'jpg', 'image/jpeg', 'http://www.alfaeletro.com.br/components/com_virtuemart/shop_image/product/Winter Leaves.jpg', 1, 1, 450, 600, 67, 90),
(5, 36, '/components/com_virtuemart/shop_image/product/Tree.jpg', 'Mais Um Teste', '', 'jpg', 'image/jpeg', 'http://www.alfaeletro.com.br/components/com_virtuemart/shop_image/product/Tree.jpg', 1, 1, 450, 600, 67, 90),
(6, 20, '/components/com_virtuemart/shop_image/product/48x48.jpg', 'Novo Produto', '', 'jpg', 'image/jpeg', 'http://www.alfaeletro.com.br/components/com_virtuemart/shop_image/product/48x48.jpg', 1, 1, 533, 600, 80, 90);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_mf_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_mf_xref` (
  `product_id` int(11) default NULL,
  `manufacturer_id` int(11) default NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_mf_xref`
--

INSERT INTO `jos_vm_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
(25, 1),
(21, 1),
(18, 1),
(17, 1),
(20, 1),
(29, 1),
(32, 1),
(31, 1),
(30, 1),
(19, 1),
(28, 1),
(27, 1),
(26, 1),
(24, 1),
(23, 1),
(22, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_price`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_price` (
  `product_price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `product_price` decimal(12,5) default NULL,
  `product_currency` char(16) default NULL,
  `product_price_vdate` int(11) default NULL,
  `product_price_edate` int(11) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `price_quantity_start` int(11) unsigned NOT NULL default '0',
  `price_quantity_end` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`product_price_id`),
  KEY `idx_product_price_product_id` (`product_id`),
  KEY `idx_product_price_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_product_price`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_product_type_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL default '0',
  `product_type_id` int(11) NOT NULL default '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_product_type_xref`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_relations`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_relations` (
  `product_id` int(11) NOT NULL default '0',
  `related_products` text,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_relations`
--

INSERT INTO `jos_vm_product_relations` (`product_id`, `related_products`) VALUES
(19, '36|20|17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_reviews`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL default '0',
  `time` int(11) NOT NULL default '0',
  `user_rating` tinyint(1) NOT NULL default '0',
  `review_ok` int(11) NOT NULL default '0',
  `review_votes` int(11) NOT NULL default '0',
  `published` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`review_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_product_reviews`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_type`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type` (
  `product_type_id` int(11) NOT NULL auto_increment,
  `product_type_name` varchar(255) NOT NULL default '',
  `product_type_description` text,
  `product_type_publish` char(1) default NULL,
  `product_type_browsepage` varchar(255) default NULL,
  `product_type_flypage` varchar(255) default NULL,
  `product_type_list_order` int(11) default NULL,
  PRIMARY KEY  (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_product_type`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_type_parameter`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL default '0',
  `parameter_name` varchar(255) NOT NULL default '',
  `parameter_label` varchar(255) NOT NULL default '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL default '0',
  `parameter_type` char(1) NOT NULL default 'T',
  `parameter_values` varchar(255) default NULL,
  `parameter_multiselect` char(1) default NULL,
  `parameter_default` varchar(255) default NULL,
  `parameter_unit` varchar(32) default NULL,
  PRIMARY KEY  (`product_type_id`,`parameter_name`),
  KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_type_parameter`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_product_votes`
--

CREATE TABLE IF NOT EXISTS `jos_vm_product_votes` (
  `product_id` int(255) NOT NULL default '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL default '0',
  `rating` tinyint(1) NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_product_votes`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL auto_increment,
  `shipping_carrier_name` char(80) NOT NULL default '',
  `shipping_carrier_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_carrier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_shipping_carrier`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_shipping_label`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_label` (
  `order_id` int(11) NOT NULL default '0',
  `shipper_class` varchar(32) default NULL,
  `ship_date` varchar(32) default NULL,
  `service_code` varchar(32) default NULL,
  `special_service` varchar(32) default NULL,
  `package_type` varchar(16) default NULL,
  `order_weight` decimal(10,2) default NULL,
  `is_international` tinyint(1) default NULL,
  `additional_protection_type` varchar(16) default NULL,
  `additional_protection_value` decimal(10,2) default NULL,
  `duty_value` decimal(10,2) default NULL,
  `content_desc` varchar(255) default NULL,
  `label_is_generated` tinyint(1) NOT NULL default '0',
  `tracking_number` varchar(32) default NULL,
  `label_image` blob,
  `have_signature` tinyint(1) NOT NULL default '0',
  `signature_image` blob,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_shipping_label`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL auto_increment,
  `shipping_rate_name` varchar(255) NOT NULL default '',
  `shipping_rate_carrier_id` int(11) NOT NULL default '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL default '',
  `shipping_rate_zip_end` varchar(32) NOT NULL default '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL default '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL default '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL default '0',
  `shipping_rate_vat_id` int(11) NOT NULL default '0',
  `shipping_rate_list_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`shipping_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_shipping_rate`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_shopper_group`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `shopper_group_name` varchar(32) default NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL default '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL default '1',
  `default` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`shopper_group_id`),
  KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `jos_vm_shopper_group`
--

INSERT INTO `jos_vm_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `show_price_including_tax`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1, 1),
(8, 0, '-default-', 'Default shopper group for Alfa Eletro', '0.00', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_shopper_vendor_xref`
--

CREATE TABLE IF NOT EXISTS `jos_vm_shopper_vendor_xref` (
  `user_id` int(11) default NULL,
  `vendor_id` int(11) default NULL,
  `shopper_group_id` int(11) default NULL,
  `customer_number` varchar(32) default NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_shopper_vendor_xref`
--

INSERT INTO `jos_vm_shopper_vendor_xref` (`user_id`, `vendor_id`, `shopper_group_id`, `customer_number`) VALUES
(62, 1, 5, ''),
(77, 1, 5, '232694a43b04787fc1'),
(61, 1, 5, '163924a48ecd005f04'),
(60, 1, 5, '165754a49311b4003b'),
(59, 1, 5, '44124a49e5cb8f285'),
(80, 1, 5, '182574a49dd13e0f1b'),
(58, 1, 5, '173194a49ea3e44d3b'),
(57, 1, 5, '59344a49efe219b81'),
(56, 1, 5, '118754a49f09618d06'),
(55, 1, 5, '207724a49f1b33ac5f'),
(54, 1, 5, '173454a49f209aa900'),
(53, 1, 5, '80104a49f30b2d53c'),
(52, 1, 5, '98714a49f381a23ee'),
(51, 1, 5, '84114a49f4faebc9e'),
(50, 1, 5, '47964a49f5804f17c'),
(49, 1, 5, '51134a49f6300c4d0'),
(48, 1, 5, '161474a49f7a429197'),
(47, 1, 5, '64204a49f82b31a49'),
(46, 1, 5, '158574a49f8d77cec2'),
(45, 1, 5, '314184a49f94047940'),
(44, 1, 5, '302714a49f9ec33d83'),
(43, 1, 5, '210084a49fa9a98246'),
(42, 1, 5, '101094a49fb3eca4b5'),
(41, 1, 5, '165344a49fd1513890'),
(40, 1, 5, '156594a49fd66c42f7'),
(39, 1, 5, '91644a49ff0b7333c'),
(38, 1, 5, '283614a4a001c6ec4d'),
(37, 1, 5, '56264a4a04957572f'),
(36, 1, 5, '325344a4a07865c25b'),
(35, 1, 5, '265304a4a0911213cc'),
(34, 1, 5, '313934a4a0b7ac7820'),
(33, 1, 5, '160424a4a0cb416c61'),
(32, 1, 5, '51764a4a1223912f2'),
(31, 1, 5, '81204a4a13ca7b6f5'),
(30, 1, 5, '3894a4a15af58981'),
(29, 1, 5, '299504a4ab4dab684e'),
(28, 1, 5, '256954a4ab5448e603');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_state`
--

CREATE TABLE IF NOT EXISTS `jos_vm_state` (
  `state_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL default '1',
  `state_name` varchar(64) default NULL,
  `state_3_code` char(3) default NULL,
  `state_2_code` char(2) default NULL,
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=449 ;

--
-- Extraindo dados da tabela `jos_vm_state`
--

INSERT INTO `jos_vm_state` (`state_id`, `country_id`, `state_name`, `state_3_code`, `state_2_code`) VALUES
(1, 223, 'Alabama', 'ALA', 'AL'),
(2, 223, 'Alaska', 'ALK', 'AK'),
(3, 223, 'Arizona', 'ARZ', 'AZ'),
(4, 223, 'Arkansas', 'ARK', 'AR'),
(5, 223, 'California', 'CAL', 'CA'),
(6, 223, 'Colorado', 'COL', 'CO'),
(7, 223, 'Connecticut', 'CCT', 'CT'),
(8, 223, 'Delaware', 'DEL', 'DE'),
(9, 223, 'District Of Columbia', 'DOC', 'DC'),
(10, 223, 'Florida', 'FLO', 'FL'),
(11, 223, 'Georgia', 'GEA', 'GA'),
(12, 223, 'Hawaii', 'HWI', 'HI'),
(13, 223, 'Idaho', 'IDA', 'ID'),
(14, 223, 'Illinois', 'ILL', 'IL'),
(15, 223, 'Indiana', 'IND', 'IN'),
(16, 223, 'Iowa', 'IOA', 'IA'),
(17, 223, 'Kansas', 'KAS', 'KS'),
(18, 223, 'Kentucky', 'KTY', 'KY'),
(19, 223, 'Louisiana', 'LOA', 'LA'),
(20, 223, 'Maine', 'MAI', 'ME'),
(21, 223, 'Maryland', 'MLD', 'MD'),
(22, 223, 'Massachusetts', 'MSA', 'MA'),
(23, 223, 'Michigan', 'MIC', 'MI'),
(24, 223, 'Minnesota', 'MIN', 'MN'),
(25, 223, 'Mississippi', 'MIS', 'MS'),
(26, 223, 'Missouri', 'MIO', 'MO'),
(27, 223, 'Montana', 'MOT', 'MT'),
(28, 223, 'Nebraska', 'NEB', 'NE'),
(29, 223, 'Nevada', 'NEV', 'NV'),
(30, 223, 'New Hampshire', 'NEH', 'NH'),
(31, 223, 'New Jersey', 'NEJ', 'NJ'),
(32, 223, 'New Mexico', 'NEM', 'NM'),
(33, 223, 'New York', 'NEY', 'NY'),
(34, 223, 'North Carolina', 'NOC', 'NC'),
(35, 223, 'North Dakota', 'NOD', 'ND'),
(36, 223, 'Ohio', 'OHI', 'OH'),
(37, 223, 'Oklahoma', 'OKL', 'OK'),
(38, 223, 'Oregon', 'ORN', 'OR'),
(39, 223, 'Pennsylvania', 'PEA', 'PA'),
(40, 223, 'Rhode Island', 'RHI', 'RI'),
(41, 223, 'South Carolina', 'SOC', 'SC'),
(42, 223, 'South Dakota', 'SOD', 'SD'),
(43, 223, 'Tennessee', 'TEN', 'TN'),
(44, 223, 'Texas', 'TXS', 'TX'),
(45, 223, 'Utah', 'UTA', 'UT'),
(46, 223, 'Vermont', 'VMT', 'VT'),
(47, 223, 'Virginia', 'VIA', 'VA'),
(48, 223, 'Washington', 'WAS', 'WA'),
(49, 223, 'West Virginia', 'WEV', 'WV'),
(50, 223, 'Wisconsin', 'WIS', 'WI'),
(51, 223, 'Wyoming', 'WYO', 'WY'),
(52, 38, 'Alberta', 'ALB', 'AB'),
(53, 38, 'British Columbia', 'BRC', 'BC'),
(54, 38, 'Manitoba', 'MAB', 'MB'),
(55, 38, 'New Brunswick', 'NEB', 'NB'),
(56, 38, 'Newfoundland and Labrador', 'NFL', 'NL'),
(57, 38, 'Northwest Territories', 'NWT', 'NT'),
(58, 38, 'Nova Scotia', 'NOS', 'NS'),
(59, 38, 'Nunavut', 'NUT', 'NU'),
(60, 38, 'Ontario', 'ONT', 'ON'),
(61, 38, 'Prince Edward Island', 'PEI', 'PE'),
(62, 38, 'Quebec', 'QEC', 'QC'),
(63, 38, 'Saskatchewan', 'SAK', 'SK'),
(64, 38, 'Yukon', 'YUT', 'YT'),
(65, 222, 'England', 'ENG', 'EN'),
(66, 222, 'Northern Ireland', 'NOI', 'NI'),
(67, 222, 'Scotland', 'SCO', 'SD'),
(68, 222, 'Wales', 'WLS', 'WS'),
(69, 13, 'Australian Capital Territory', 'ACT', 'AT'),
(70, 13, 'New South Wales', 'NSW', 'NW'),
(71, 13, 'Northern Territory', 'NOT', 'NT'),
(72, 13, 'Queensland', 'QLD', 'QL'),
(73, 13, 'South Australia', 'SOA', 'SA'),
(74, 13, 'Tasmania', 'TAS', 'TA'),
(75, 13, 'Victoria', 'VIC', 'VI'),
(76, 13, 'Western Australia', 'WEA', 'WA'),
(77, 138, 'Aguascalientes', 'AGS', 'AG'),
(78, 138, 'Baja California Norte', 'BCN', 'BN'),
(79, 138, 'Baja California Sur', 'BCS', 'BS'),
(80, 138, 'Campeche', 'CAM', 'CA'),
(81, 138, 'Chiapas', 'CHI', 'CS'),
(82, 138, 'Chihuahua', 'CHA', 'CH'),
(83, 138, 'Coahuila', 'COA', 'CO'),
(84, 138, 'Colima', 'COL', 'CM'),
(85, 138, 'Distrito Federal', 'DFM', 'DF'),
(86, 138, 'Durango', 'DGO', 'DO'),
(87, 138, 'Guanajuato', 'GTO', 'GO'),
(88, 138, 'Guerrero', 'GRO', 'GU'),
(89, 138, 'Hidalgo', 'HGO', 'HI'),
(90, 138, 'Jalisco', 'JAL', 'JA'),
(91, 138, 'México (Estado de)', 'EDM', 'EM'),
(92, 138, 'Michoacán', 'MCN', 'MI'),
(93, 138, 'Morelos', 'MOR', 'MO'),
(94, 138, 'Nayarit', 'NAY', 'NY'),
(95, 138, 'Nuevo León', 'NUL', 'NL'),
(96, 138, 'Oaxaca', 'OAX', 'OA'),
(97, 138, 'Puebla', 'PUE', 'PU'),
(98, 138, 'Querétaro', 'QRO', 'QU'),
(99, 138, 'Quintana Roo', 'QUR', 'QR'),
(100, 138, 'San Luis Potosí', 'SLP', 'SP'),
(101, 138, 'Sinaloa', 'SIN', 'SI'),
(102, 138, 'Sonora', 'SON', 'SO'),
(103, 138, 'Tabasco', 'TAB', 'TA'),
(104, 138, 'Tamaulipas', 'TAM', 'TM'),
(105, 138, 'Tlaxcala', 'TLX', 'TX'),
(106, 138, 'Veracruz', 'VER', 'VZ'),
(107, 138, 'Yucatán', 'YUC', 'YU'),
(108, 138, 'Zacatecas', 'ZAC', 'ZA'),
(109, 30, 'Acre', 'ACR', 'AC'),
(110, 30, 'Alagoas', 'ALG', 'AL'),
(111, 30, 'Amapá', 'AMP', 'AP'),
(112, 30, 'Amazonas', 'AMZ', 'AM'),
(113, 30, 'Bahía', 'BAH', 'BA'),
(114, 30, 'Ceará', 'CEA', 'CE'),
(115, 30, 'Distrito Federal', 'DFB', 'DF'),
(116, 30, 'Espirito Santo', 'ESS', 'ES'),
(117, 30, 'Goiás', 'GOI', 'GO'),
(118, 30, 'Maranhão', 'MAR', 'MA'),
(119, 30, 'Mato Grosso', 'MAT', 'MT'),
(120, 30, 'Mato Grosso do Sul', 'MGS', 'MS'),
(121, 30, 'Minas Geraís', 'MIG', 'MG'),
(122, 30, 'Paraná', 'PAR', 'PR'),
(123, 30, 'Paraíba', 'PRB', 'PB'),
(124, 30, 'Pará', 'PAB', 'PA'),
(125, 30, 'Pernambuco', 'PER', 'PE'),
(126, 30, 'Piauí', 'PIA', 'PI'),
(127, 30, 'Rio Grande do Norte', 'RGN', 'RN'),
(128, 30, 'Rio Grande do Sul', 'RGS', 'RS'),
(129, 30, 'Rio de Janeiro', 'RDJ', 'RJ'),
(130, 30, 'Rondônia', 'RON', 'RO'),
(131, 30, 'Roraima', 'ROR', 'RR'),
(132, 30, 'Santa Catarina', 'SAC', 'SC'),
(133, 30, 'Sergipe', 'SER', 'SE'),
(134, 30, 'São Paulo', 'SAP', 'SP'),
(135, 30, 'Tocantins', 'TOC', 'TO'),
(136, 44, 'Anhui', 'ANH', '34'),
(137, 44, 'Beijing', 'BEI', '11'),
(138, 44, 'Chongqing', 'CHO', '50'),
(139, 44, 'Fujian', 'FUJ', '35'),
(140, 44, 'Gansu', 'GAN', '62'),
(141, 44, 'Guangdong', 'GUA', '44'),
(142, 44, 'Guangxi Zhuang', 'GUZ', '45'),
(143, 44, 'Guizhou', 'GUI', '52'),
(144, 44, 'Hainan', 'HAI', '46'),
(145, 44, 'Hebei', 'HEB', '13'),
(146, 44, 'Heilongjiang', 'HEI', '23'),
(147, 44, 'Henan', 'HEN', '41'),
(148, 44, 'Hubei', 'HUB', '42'),
(149, 44, 'Hunan', 'HUN', '43'),
(150, 44, 'Jiangsu', 'JIA', '32'),
(151, 44, 'Jiangxi', 'JIX', '36'),
(152, 44, 'Jilin', 'JIL', '22'),
(153, 44, 'Liaoning', 'LIA', '21'),
(154, 44, 'Nei Mongol', 'NML', '15'),
(155, 44, 'Ningxia Hui', 'NIH', '64'),
(156, 44, 'Qinghai', 'QIN', '63'),
(157, 44, 'Shandong', 'SNG', '37'),
(158, 44, 'Shanghai', 'SHH', '31'),
(159, 44, 'Shaanxi', 'SHX', '61'),
(160, 44, 'Sichuan', 'SIC', '51'),
(161, 44, 'Tianjin', 'TIA', '12'),
(162, 44, 'Xinjiang Uygur', 'XIU', '65'),
(163, 44, 'Xizang', 'XIZ', '54'),
(164, 44, 'Yunnan', 'YUN', '53'),
(165, 44, 'Zhejiang', 'ZHE', '33'),
(166, 104, 'Gaza Strip', 'GZS', 'GZ'),
(167, 104, 'West Bank', 'WBK', 'WB'),
(168, 104, 'Other', 'OTH', 'OT'),
(169, 151, 'St. Maarten', 'STM', 'SM'),
(170, 151, 'Bonaire', 'BNR', 'BN'),
(171, 151, 'Curacao', 'CUR', 'CR'),
(172, 175, 'Alba', 'ABA', 'AB'),
(173, 175, 'Arad', 'ARD', 'AR'),
(174, 175, 'Arges', 'ARG', 'AG'),
(175, 175, 'Bacau', 'BAC', 'BC'),
(176, 175, 'Bihor', 'BIH', 'BH'),
(177, 175, 'Bistrita-Nasaud', 'BIS', 'BN'),
(178, 175, 'Botosani', 'BOT', 'BT'),
(179, 175, 'Braila', 'BRL', 'BR'),
(180, 175, 'Brasov', 'BRA', 'BV'),
(181, 175, 'Bucuresti', 'BUC', 'B'),
(182, 175, 'Buzau', 'BUZ', 'BZ'),
(183, 175, 'Calarasi', 'CAL', 'CL'),
(184, 175, 'Caras Severin', 'CRS', 'CS'),
(185, 175, 'Cluj', 'CLJ', 'CJ'),
(186, 175, 'Constanta', 'CST', 'CT'),
(187, 175, 'Covasna', 'COV', 'CV'),
(188, 175, 'Dambovita', 'DAM', 'DB'),
(189, 175, 'Dolj', 'DLJ', 'DJ'),
(190, 175, 'Galati', 'GAL', 'GL'),
(191, 175, 'Giurgiu', 'GIU', 'GR'),
(192, 175, 'Gorj', 'GOR', 'GJ'),
(193, 175, 'Hargita', 'HRG', 'HR'),
(194, 175, 'Hunedoara', 'HUN', 'HD'),
(195, 175, 'Ialomita', 'IAL', 'IL'),
(196, 175, 'Iasi', 'IAS', 'IS'),
(197, 175, 'Ilfov', 'ILF', 'IF'),
(198, 175, 'Maramures', 'MAR', 'MM'),
(199, 175, 'Mehedinti', 'MEH', 'MH'),
(200, 175, 'Mures', 'MUR', 'MS'),
(201, 175, 'Neamt', 'NEM', 'NT'),
(202, 175, 'Olt', 'OLT', 'OT'),
(203, 175, 'Prahova', 'PRA', 'PH'),
(204, 175, 'Salaj', 'SAL', 'SJ'),
(205, 175, 'Satu Mare', 'SAT', 'SM'),
(206, 175, 'Sibiu', 'SIB', 'SB'),
(207, 175, 'Suceava', 'SUC', 'SV'),
(208, 175, 'Teleorman', 'TEL', 'TR'),
(209, 175, 'Timis', 'TIM', 'TM'),
(210, 175, 'Tulcea', 'TUL', 'TL'),
(211, 175, 'Valcea', 'VAL', 'VL'),
(212, 175, 'Vaslui', 'VAS', 'VS'),
(213, 175, 'Vrancea', 'VRA', 'VN'),
(214, 105, 'Agrigento', 'AGR', 'AG'),
(215, 105, 'Alessandria', 'ALE', 'AL'),
(216, 105, 'Ancona', 'ANC', 'AN'),
(217, 105, 'Aosta', 'AOS', 'AO'),
(218, 105, 'Arezzo', 'ARE', 'AR'),
(219, 105, 'Ascoli Piceno', 'API', 'AP'),
(220, 105, 'Asti', 'AST', 'AT'),
(221, 105, 'Avellino', 'AVE', 'AV'),
(222, 105, 'Bari', 'BAR', 'BA'),
(223, 105, 'Belluno', 'BEL', 'BL'),
(224, 105, 'Benevento', 'BEN', 'BN'),
(225, 105, 'Bergamo', 'BEG', 'BG'),
(226, 105, 'Biella', 'BIE', 'BI'),
(227, 105, 'Bologna', 'BOL', 'BO'),
(228, 105, 'Bolzano', 'BOZ', 'BZ'),
(229, 105, 'Brescia', 'BRE', 'BS'),
(230, 105, 'Brindisi', 'BRI', 'BR'),
(231, 105, 'Cagliari', 'CAG', 'CA'),
(232, 105, 'Caltanissetta', 'CAL', 'CL'),
(233, 105, 'Campobasso', 'CBO', 'CB'),
(234, 105, 'Carbonia-Iglesias', 'CAR', 'CI'),
(235, 105, 'Caserta', 'CAS', 'CE'),
(236, 105, 'Catania', 'CAT', 'CT'),
(237, 105, 'Catanzaro', 'CTZ', 'CZ'),
(238, 105, 'Chieti', 'CHI', 'CH'),
(239, 105, 'Como', 'COM', 'CO'),
(240, 105, 'Cosenza', 'COS', 'CS'),
(241, 105, 'Cremona', 'CRE', 'CR'),
(242, 105, 'Crotone', 'CRO', 'KR'),
(243, 105, 'Cuneo', 'CUN', 'CN'),
(244, 105, 'Enna', 'ENN', 'EN'),
(245, 105, 'Ferrara', 'FER', 'FE'),
(246, 105, 'Firenze', 'FIR', 'FI'),
(247, 105, 'Foggia', 'FOG', 'FG'),
(248, 105, 'Forli-Cesena', 'FOC', 'FC'),
(249, 105, 'Frosinone', 'FRO', 'FR'),
(250, 105, 'Genova', 'GEN', 'GE'),
(251, 105, 'Gorizia', 'GOR', 'GO'),
(252, 105, 'Grosseto', 'GRO', 'GR'),
(253, 105, 'Imperia', 'IMP', 'IM'),
(254, 105, 'Isernia', 'ISE', 'IS'),
(255, 105, 'L''Aquila', 'AQU', 'AQ'),
(256, 105, 'La Spezia', 'LAS', 'SP'),
(257, 105, 'Latina', 'LAT', 'LT'),
(258, 105, 'Lecce', 'LEC', 'LE'),
(259, 105, 'Lecco', 'LCC', 'LC'),
(260, 105, 'Livorno', 'LIV', 'LI'),
(261, 105, 'Lodi', 'LOD', 'LO'),
(262, 105, 'Lucca', 'LUC', 'LU'),
(263, 105, 'Macerata', 'MAC', 'MC'),
(264, 105, 'Mantova', 'MAN', 'MN'),
(265, 105, 'Massa-Carrara', 'MAS', 'MS'),
(266, 105, 'Matera', 'MAA', 'MT'),
(267, 105, 'Medio Campidano', 'MED', 'VS'),
(268, 105, 'Messina', 'MES', 'ME'),
(269, 105, 'Milano', 'MIL', 'MI'),
(270, 105, 'Modena', 'MOD', 'MO'),
(271, 105, 'Napoli', 'NAP', 'NA'),
(272, 105, 'Novara', 'NOV', 'NO'),
(273, 105, 'Nuoro', 'NUR', 'NU'),
(274, 105, 'Ogliastra', 'OGL', 'OG'),
(275, 105, 'Olbia-Tempio', 'OLB', 'OT'),
(276, 105, 'Oristano', 'ORI', 'OR'),
(277, 105, 'Padova', 'PDA', 'PD'),
(278, 105, 'Palermo', 'PAL', 'PA'),
(279, 105, 'Parma', 'PAA', 'PR'),
(280, 105, 'Pavia', 'PAV', 'PV'),
(281, 105, 'Perugia', 'PER', 'PG'),
(282, 105, 'Pesaro e Urbino', 'PES', 'PU'),
(283, 105, 'Pescara', 'PSC', 'PE'),
(284, 105, 'Piacenza', 'PIA', 'PC'),
(285, 105, 'Pisa', 'PIS', 'PI'),
(286, 105, 'Pistoia', 'PIT', 'PT'),
(287, 105, 'Pordenone', 'POR', 'PN'),
(288, 105, 'Potenza', 'PTZ', 'PZ'),
(289, 105, 'Prato', 'PRA', 'PO'),
(290, 105, 'Ragusa', 'RAG', 'RG'),
(291, 105, 'Ravenna', 'RAV', 'RA'),
(292, 105, 'Reggio Calabria', 'REG', 'RC'),
(293, 105, 'Reggio Emilia', 'REE', 'RE'),
(294, 105, 'Rieti', 'RIE', 'RI'),
(295, 105, 'Rimini', 'RIM', 'RN'),
(296, 105, 'Roma', 'ROM', 'RM'),
(297, 105, 'Rovigo', 'ROV', 'RO'),
(298, 105, 'Salerno', 'SAL', 'SA'),
(299, 105, 'Sassari', 'SAS', 'SS'),
(300, 105, 'Savona', 'SAV', 'SV'),
(301, 105, 'Siena', 'SIE', 'SI'),
(302, 105, 'Siracusa', 'SIR', 'SR'),
(303, 105, 'Sondrio', 'SOO', 'SO'),
(304, 105, 'Taranto', 'TAR', 'TA'),
(305, 105, 'Teramo', 'TER', 'TE'),
(306, 105, 'Terni', 'TRN', 'TR'),
(307, 105, 'Torino', 'TOR', 'TO'),
(308, 105, 'Trapani', 'TRA', 'TP'),
(309, 105, 'Trento', 'TRE', 'TN'),
(310, 105, 'Treviso', 'TRV', 'TV'),
(311, 105, 'Trieste', 'TRI', 'TS'),
(312, 105, 'Udine', 'UDI', 'UD'),
(313, 105, 'Varese', 'VAR', 'VA'),
(314, 105, 'Venezia', 'VEN', 'VE'),
(315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB'),
(316, 105, 'Vercelli', 'VER', 'VC'),
(317, 105, 'Verona', 'VRN', 'VR'),
(318, 105, 'Vibo Valenzia', 'VIV', 'VV'),
(319, 105, 'Vicenza', 'VII', 'VI'),
(320, 105, 'Viterbo', 'VIT', 'VT'),
(321, 195, 'A Coruña', 'ACO', '15'),
(322, 195, 'Alava', 'ALA', '01'),
(323, 195, 'Albacete', 'ALB', '02'),
(324, 195, 'Alicante', 'ALI', '03'),
(325, 195, 'Almeria', 'ALM', '04'),
(326, 195, 'Asturias', 'AST', '33'),
(327, 195, 'Avila', 'AVI', '05'),
(328, 195, 'Badajoz', 'BAD', '06'),
(329, 195, 'Baleares', 'BAL', '07'),
(330, 195, 'Barcelona', 'BAR', '08'),
(331, 195, 'Burgos', 'BUR', '09'),
(332, 195, 'Caceres', 'CAC', '10'),
(333, 195, 'Cadiz', 'CAD', '11'),
(334, 195, 'Cantabria', 'CAN', '39'),
(335, 195, 'Castellon', 'CAS', '12'),
(336, 195, 'Ceuta', 'CEU', '51'),
(337, 195, 'Ciudad Real', 'CIU', '13'),
(338, 195, 'Cordoba', 'COR', '14'),
(339, 195, 'Cuenca', 'CUE', '16'),
(340, 195, 'Girona', 'GIR', '17'),
(341, 195, 'Granada', 'GRA', '18'),
(342, 195, 'Guadalajara', 'GUA', '19'),
(343, 195, 'Guipuzcoa', 'GUI', '20'),
(344, 195, 'Huelva', 'HUL', '21'),
(345, 195, 'Huesca', 'HUS', '22'),
(346, 195, 'Jaen', 'JAE', '23'),
(347, 195, 'La Rioja', 'LRI', '26'),
(348, 195, 'Las Palmas', 'LPA', '35'),
(349, 195, 'Leon', 'LEO', '24'),
(350, 195, 'Lleida', 'LLE', '25'),
(351, 195, 'Lugo', 'LUG', '27'),
(352, 195, 'Madrid', 'MAD', '28'),
(353, 195, 'Malaga', 'MAL', '29'),
(354, 195, 'Melilla', 'MEL', '52'),
(355, 195, 'Murcia', 'MUR', '30'),
(356, 195, 'Navarra', 'NAV', '31'),
(357, 195, 'Ourense', 'OUR', '32'),
(358, 195, 'Palencia', 'PAL', '34'),
(359, 195, 'Pontevedra', 'PON', '36'),
(360, 195, 'Salamanca', 'SAL', '37'),
(361, 195, 'Santa Cruz de Tenerife', 'SCT', '38'),
(362, 195, 'Segovia', 'SEG', '40'),
(363, 195, 'Sevilla', 'SEV', '41'),
(364, 195, 'Soria', 'SOR', '42'),
(365, 195, 'Tarragona', 'TAR', '43'),
(366, 195, 'Teruel', 'TER', '44'),
(367, 195, 'Toledo', 'TOL', '45'),
(368, 195, 'Valencia', 'VAL', '46'),
(369, 195, 'Valladolid', 'VLL', '47'),
(370, 195, 'Vizcaya', 'VIZ', '48'),
(371, 195, 'Zamora', 'ZAM', '49'),
(372, 195, 'Zaragoza', 'ZAR', '50'),
(373, 11, 'Aragatsotn', 'ARG', 'AG'),
(374, 11, 'Ararat', 'ARR', 'AR'),
(375, 11, 'Armavir', 'ARM', 'AV'),
(376, 11, 'Gegharkunik', 'GEG', 'GR'),
(377, 11, 'Kotayk', 'KOT', 'KT'),
(378, 11, 'Lori', 'LOR', 'LO'),
(379, 11, 'Shirak', 'SHI', 'SH'),
(380, 11, 'Syunik', 'SYU', 'SU'),
(381, 11, 'Tavush', 'TAV', 'TV'),
(382, 11, 'Vayots-Dzor', 'VAD', 'VD'),
(383, 11, 'Yerevan', 'YER', 'ER'),
(384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI'),
(385, 99, 'Andhra Pradesh', 'AND', 'AN'),
(386, 99, 'Arunachal Pradesh', 'ARU', 'AR'),
(387, 99, 'Assam', 'ASS', 'AS'),
(388, 99, 'Bihar', 'BIH', 'BI'),
(389, 99, 'Chandigarh', 'CHA', 'CA'),
(390, 99, 'Chhatisgarh', 'CHH', 'CH'),
(391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD'),
(392, 99, 'Daman & Diu', 'DAM', 'DA'),
(393, 99, 'Delhi', 'DEL', 'DE'),
(394, 99, 'Goa', 'GOA', 'GO'),
(395, 99, 'Gujarat', 'GUJ', 'GU'),
(396, 99, 'Haryana', 'HAR', 'HA'),
(397, 99, 'Himachal Pradesh', 'HIM', 'HI'),
(398, 99, 'Jammu & Kashmir', 'JAM', 'JA'),
(399, 99, 'Jharkhand', 'JHA', 'JH'),
(400, 99, 'Karnataka', 'KAR', 'KA'),
(401, 99, 'Kerala', 'KER', 'KE'),
(402, 99, 'Lakshadweep', 'LAK', 'LA'),
(403, 99, 'Madhya Pradesh', 'MAD', 'MD'),
(404, 99, 'Maharashtra', 'MAH', 'MH'),
(405, 99, 'Manipur', 'MAN', 'MN'),
(406, 99, 'Meghalaya', 'MEG', 'ME'),
(407, 99, 'Mizoram', 'MIZ', 'MI'),
(408, 99, 'Nagaland', 'NAG', 'NA'),
(409, 99, 'Orissa', 'ORI', 'OR'),
(410, 99, 'Pondicherry', 'PON', 'PO'),
(411, 99, 'Punjab', 'PUN', 'PU'),
(412, 99, 'Rajasthan', 'RAJ', 'RA'),
(413, 99, 'Sikkim', 'SIK', 'SI'),
(414, 99, 'Tamil Nadu', 'TAM', 'TA'),
(415, 99, 'Tripura', 'TRI', 'TR'),
(416, 99, 'Uttaranchal', 'UAR', 'UA'),
(417, 99, 'Uttar Pradesh', 'UTT', 'UT'),
(418, 99, 'West Bengal', 'WES', 'WE'),
(419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO'),
(420, 101, 'Ardabil', 'ARD', 'AR'),
(421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG'),
(422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS'),
(423, 101, 'Bushehr', 'BUS', 'BU'),
(424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM'),
(425, 101, 'Esfahan', 'ESF', 'ES'),
(426, 101, 'Fars', 'FAR', 'FA'),
(427, 101, 'Gilan', 'GIL', 'GI'),
(428, 101, 'Gorgan', 'GOR', 'GO'),
(429, 101, 'Hamadan', 'HAM', 'HA'),
(430, 101, 'Hormozgan', 'HOR', 'HO'),
(431, 101, 'Ilam', 'ILA', 'IL'),
(432, 101, 'Kerman', 'KER', 'KE'),
(433, 101, 'Kermanshah', 'BAK', 'BA'),
(434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ'),
(435, 101, 'Khorasan-e Razavi', 'KHR', 'KR'),
(436, 101, 'Khorasan-e Shomali', 'KHS', 'KS'),
(437, 101, 'Khuzestan', 'KHU', 'KH'),
(438, 101, 'Kordestan', 'KOR', 'KO'),
(439, 101, 'Lorestan', 'LOR', 'LO'),
(440, 101, 'Markazi', 'MAR', 'MR'),
(441, 101, 'Mazandaran', 'MAZ', 'MZ'),
(442, 101, 'Qazvin', 'QAS', 'QA'),
(443, 101, 'Qom', 'QOM', 'QO'),
(444, 101, 'Semnan', 'SEM', 'SE'),
(445, 101, 'Sistan va Baluchestan', 'SBA', 'SB'),
(446, 101, 'Tehran', 'TEH', 'TE'),
(447, 101, 'Yazd', 'YAZ', 'YA'),
(448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_tax_rate`
--

CREATE TABLE IF NOT EXISTS `jos_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `vendor_id` int(11) default NULL,
  `tax_state` varchar(64) default NULL,
  `tax_country` varchar(64) default NULL,
  `mdate` int(11) default NULL,
  `tax_rate` decimal(10,4) default NULL,
  PRIMARY KEY  (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_tax_rate`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_userfield`
--

CREATE TABLE IF NOT EXISTS `jos_vm_userfield` (
  `fieldid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL default '',
  `maxlength` int(11) default NULL,
  `size` int(11) default NULL,
  `required` tinyint(4) default '0',
  `ordering` int(11) default NULL,
  `cols` int(11) default NULL,
  `rows` int(11) default NULL,
  `value` varchar(50) default NULL,
  `default` int(11) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `registration` tinyint(1) NOT NULL default '0',
  `shipping` tinyint(1) NOT NULL default '0',
  `account` tinyint(1) NOT NULL default '1',
  `readonly` tinyint(1) NOT NULL default '0',
  `calculated` tinyint(1) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  `vendor_id` int(11) default NULL,
  `params` mediumtext,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Extraindo dados da tabela `jos_vm_userfield`
--

INSERT INTO `jos_vm_userfield` (`fieldid`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `shipping`, `account`, `readonly`, `calculated`, `sys`, `vendor_id`, `params`) VALUES
(1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, ''),
(35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL),
(8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL),
(21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, ''),
(26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL),
(28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL),
(29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_userfield_values`
--

CREATE TABLE IF NOT EXISTS `jos_vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL auto_increment,
  `fieldid` int(11) NOT NULL default '0',
  `fieldtitle` varchar(255) NOT NULL default '',
  `fieldvalue` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `sys` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fieldvalueid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `jos_vm_userfield_values`
--

INSERT INTO `jos_vm_userfield_values` (`fieldvalueid`, `fieldid`, `fieldtitle`, `fieldvalue`, `ordering`, `sys`) VALUES
(1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1),
(2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1),
(3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_user_info`
--

CREATE TABLE IF NOT EXISTS `jos_vm_user_info` (
  `user_info_id` varchar(32) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `address_type` char(2) default NULL,
  `address_type_name` varchar(32) default NULL,
  `company` varchar(64) default NULL,
  `title` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `first_name` varchar(32) default NULL,
  `middle_name` varchar(32) default NULL,
  `phone_1` varchar(32) default NULL,
  `phone_2` varchar(32) default NULL,
  `fax` varchar(32) default NULL,
  `address_1` varchar(64) NOT NULL default '',
  `address_2` varchar(64) default NULL,
  `city` varchar(32) NOT NULL default '',
  `state` varchar(32) NOT NULL default '',
  `country` varchar(32) NOT NULL default 'US',
  `zip` varchar(32) NOT NULL default '',
  `user_email` varchar(255) default NULL,
  `extra_field_1` varchar(255) default NULL,
  `extra_field_2` varchar(255) default NULL,
  `extra_field_3` varchar(255) default NULL,
  `extra_field_4` char(1) default NULL,
  `extra_field_5` char(1) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `perms` varchar(40) NOT NULL default 'shopper',
  `bank_account_nr` varchar(32) NOT NULL default '',
  `bank_name` varchar(32) NOT NULL default '',
  `bank_sort_code` varchar(16) NOT NULL default '',
  `bank_iban` varchar(64) NOT NULL default '',
  `bank_account_holder` varchar(48) NOT NULL default '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL default 'Checking',
  PRIMARY KEY  (`user_info_id`),
  KEY `idx_user_info_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jos_vm_user_info`
--

INSERT INTO `jos_vm_user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`, `perms`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
('3930760fef876374277699a71a9e32b5', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'webmaster@jsharing.com', NULL, NULL, NULL, NULL, NULL, 1212093511, 1244675900, 'shopper', '', '', '', '', '', 'Checking'),
('63c21062a434eafa790f6413064e899c', 77, 'BT', '-default-', '', '', 'Vasconcellos', 'Leonardo', '', '7367456754', '', '', 'Rua Sem nome', '', 'Jville', 'SC', 'BRA', '89000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1245950022, 1245950022, 'shopper', '', '', '', '', '', 'Checking'),
('ddb744883c18e8470130d6ec6b6ffa48', 61, 'BT', '-default-', 'COMPANY', 'TITLE', 'Sobrenome', 'Leonardo', 'MIDDLE_NAME', '5432534', 'PHONE_2', 'FAX', 'Endere�o', 'ADDRESS_2', 'Acrelândia', 'AC', 'BRA', '89000000', 'alfa@alfaeletro.com.br', NULL, NULL, NULL, NULL, NULL, 1246293199, 1246310442, 'shopper', 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
('e2b248da58d282a025309abac13fa4f0', 60, 'BT', '-default-', 'COMPANY', 'TITLE', 'Sobrenome', 'Rafael', 'MIDDLE_NAME', '57215429', 'PHONE_2', 'FAX', 'Endere�o', 'ADDRESS_2', 'Acrelândia', 'AC', 'BRA', '89000000', 'rafael.lima@datasul.com.br', NULL, NULL, NULL, NULL, NULL, 1246310683, 1246310683, 'shopper', '', '', '', '', '', 'Checking'),
('6018feda7c66aa46b183e94094e1dba1', 59, 'BT', '-default-', '', '', 'Lima', 'Denise', '', '428947329', '', '', 'fdasjfldaj', '', 'fdjsaklfj', 'SC', 'BRA', '7298739', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246356939, 1246356939, 'shopper', '', '', '', '', '', 'Checking'),
('56ffeb3c2ce0fa9d8da1e7d3639a8329', 80, 'BT', '-default-', 'COMPANY', 'TITLE', 'Sobrenome', 'vlad dracula', 'MIDDLE_NAME', '7574329', 'PHONE_2', 'FAX', 'Endere�o', 'ADDRESS_2', 'Feijó', 'AC', 'BRA', '89000000', 'janjao@janjao.com.br', NULL, NULL, NULL, NULL, NULL, 1246354707, 1246354707, 'shopper', '', '', '', '', '', 'Checking'),
('14a5c15cb1a3ae40615b384425a4ad57', 58, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '4324324', '', '', 'Endereco', '', 'Salete', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246358078, 1246358078, 'shopper', '', '', '', '', '', 'Checking'),
('0bc44ee1f2acbee8c8e83e7726162e9a', 57, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'denise', '', '42347389', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246359518, 1246359518, 'shopper', '', '', '', '', '', 'Checking'),
('fcc1e263acf8ebfc0ba05bce1da8e3fc', 56, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'denise', '', '5432543', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246359702, 1246359702, 'shopper', '', '', '', '', '', 'Checking'),
('d7f96d154da9e07849186622c92648c9', 55, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '543895743897', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246359987, 1246359987, 'shopper', '', '', '', '', '', 'Checking'),
('98aa4d4435d5ac53e3c287a609cbaf23', 54, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '5435', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246360073, 1246360073, 'shopper', '', '', '', '', '', 'Checking'),
('138874169e083ac0c1d7b9e621d917e7', 53, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '543534', '', '', 'Endereco', '', 'Anadia', 'AL', 'BRA', '89000000', 'leo@leeo.com', NULL, NULL, NULL, NULL, NULL, 1246360331, 1246360331, 'shopper', '', '', '', '', '', 'Checking'),
('c03a7771652e6b626f144b026a4f35be', 52, 'BT', '-default-', '', '', 'Vasconcellos', 'Leonardo', '', '7329847329', '', '', 'Rua sem novme', '', 'Joinville', 'SC', 'BRA', '732877', 'leo@leo.com', NULL, NULL, NULL, NULL, NULL, 1246360449, 1246360449, 'shopper', '', '', '', '', '', 'Checking'),
('b123c28256b23ad412b2a6409e697e3a', 51, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leo', '', '342432', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'leo@leo.com', NULL, NULL, NULL, NULL, NULL, 1246360826, 1246360826, 'shopper', '', '', '', '', '', 'Checking'),
('20d2055aa14a4c4232c1e00e389d6164', 50, 'BT', '-default-', '', '', 'fdjsk', 'Leo', '', '54354', '', '', 'fdjskl', 'f', 'fds', 'AC', 'BRA', '234', 'fdsf@fjdls.com', NULL, NULL, NULL, NULL, NULL, 1246360960, 1246360960, 'shopper', '', '', '', '', '', 'Checking'),
('35a579ecb716baf47440d3126fa73a24', 49, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'fdsfdsa', '', '3432', '', '', 'Endereco', '', 'Cajueiro', 'AL', 'BRA', '89000000', 'dfs@fd.com', NULL, NULL, NULL, NULL, NULL, 1246361136, 1246361136, 'shopper', '', '', '', '', '', 'Checking'),
('cac052da6ded7d83cf7c1a34d5d3f8b1', 48, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'dfdsafdsa', '', '54888', '', '', 'Endereco', '', 'Brasília', 'DF', 'BRA', '89000000', 'fadas@fdsds.com', NULL, NULL, NULL, NULL, NULL, 1246361508, 1246361508, 'shopper', '', '', '', '', '', 'Checking'),
('1072c1c2c3e8f972b57024e87a7940f4', 47, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leo', '', '5473957', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'dld@dlfdl.com', NULL, NULL, NULL, NULL, NULL, 1246361643, 1246361643, 'shopper', '', '', '', '', '', 'Checking'),
('b14a54f595c5e4f191b46e43909a4770', 46, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'fdsafda', '', '3432432', '', '', 'Endereco', '', 'Abadia dos Dourados', 'MG', 'BRA', '89000000', 'afd@fdsa.com', NULL, NULL, NULL, NULL, NULL, 1246361815, 1246361815, 'shopper', '', '', '', '', '', 'Checking'),
('87dcb705c13f40217a61780bfdf643a8', 45, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '43243', '', '', 'Endereco', '', 'Abdon Batista', 'SC', 'BRA', '89000000', 'leo@leo.com', NULL, NULL, NULL, NULL, NULL, 1246361920, 1246361920, 'shopper', '', '', '', '', '', 'Checking'),
('e5b000e5f6e0a835d8a4a9a8828ca4ec', 44, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '43243', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'leo@leo.com', NULL, NULL, NULL, NULL, NULL, 1246362092, 1246362092, 'shopper', '', '', '', '', '', 'Checking'),
('3c6c17c54e1169f7eb260a539acef5f3', 43, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '43209', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'leo@leo.com', NULL, NULL, NULL, NULL, NULL, 1246362266, 1246362266, 'shopper', '', '', '', '', '', 'Checking'),
('107b2ef2c44739c55805f5b39ee1118a', 42, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '54354353', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246362430, 1246362430, 'shopper', '', '', '', '', '', 'Checking'),
('5b42e98fc5b5bc599a1862209fab9602', 41, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'fdafd', '', '24324', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'fda@fdsa.com', NULL, NULL, NULL, NULL, NULL, 1246362901, 1246362901, 'shopper', '', '', '', '', '', 'Checking'),
('4b83efdc1bea4a598fb8f9f381f8f517', 40, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '4324324', '', '', 'Endereco', '', 'Acrelândia', 'AC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246362982, 1246362982, 'shopper', '', '', '', '', '', 'Checking'),
('9d3c999526e8e9242ac31461ef80ffc1', 39, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '432432432', '', '', 'Endereco', '', 'Jacinto Machado', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246363403, 1246363403, 'shopper', '', '', '', '', '', 'Checking'),
('f1f9f4af9c69f5d44cc31e5f0eca83cc', 38, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '54735487', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246363676, 1246363676, 'shopper', '', '', '', '', '', 'Checking'),
('466182a8fff3d78b33ee6d00b4e72b41', 37, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246364821, 1246364821, 'shopper', '', '', '', '', '', 'Checking'),
('080eb8943b2f76732ad89ec8de6c873b', 36, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246365574, 1246365574, 'shopper', '', '', '', '', '', 'Checking'),
('86b342449be33d6e63023b7539a6a5c3', 35, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 304777777', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246365969, 1246365969, 'shopper', '', '', '', '', '', 'Checking'),
('44d161c45ecbd6021474e10ebac44d4d', 34, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '(47) 3026-6908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246366586, 1246366586, 'shopper', '', '', '', '', '', 'Checking'),
('803bf38b51915cfbd87106af1f149b93', 33, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise', '', '2143214', '', '', 'Endereco', '', 'Abaetetuba', 'PA', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246366900, 1246367775, 'shopper', 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
('400fb6fc190c74b03ac8957fda4248ea', 32, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '5443577', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246368291, 1246368291, 'shopper', '', '', '', '', '', 'Checking'),
('72d3f08119bb8acb39920dfebd1b1c91', 31, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '545325432', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246368712, 1246368712, 'shopper', '', '', '', '', '', 'Checking'),
('112d08db50298d227da85d498d2fc426', 30, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo', '', '54325', '', '', 'Endereco', '', 'Flor do Sertão', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246369199, 1246370217, 'shopper', 'BANK_ACCOUNT_NR', 'BANK_NAME', 'BANK_SORT_CODE', 'BANK_IBAN', 'BANK_ACCOUNT_HOLDER', ''),
('6cb6d8de85972bac5c125eeff344fc5f', 29, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Leonardo Lima de Vasconcellos', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'SC', 'BRA', '89000000', 'leo.lima.web@gmail.com', NULL, NULL, NULL, NULL, NULL, 1246409946, 1246409946, 'shopper', '', '', '', '', '', 'Checking'),
('f02f2fb1942de54ce2dea72fc34a6923', 28, 'BT', '-default-', '', 'TITLE', 'Sobrenome', 'Denise Lima', '', '(47) 30266908', '', '', 'Endereco', '', 'Joinville', 'Santa Catarina', 'BRA', '89000000', 'denisejlle@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1246410052, 1246410052, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_vendor`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor` (
  `vendor_id` int(11) NOT NULL auto_increment,
  `vendor_name` varchar(64) default NULL,
  `contact_last_name` varchar(32) NOT NULL default '',
  `contact_first_name` varchar(32) NOT NULL default '',
  `contact_middle_name` varchar(32) default NULL,
  `contact_title` varchar(32) default NULL,
  `contact_phone_1` varchar(32) NOT NULL default '',
  `contact_phone_2` varchar(32) default NULL,
  `contact_fax` varchar(32) default NULL,
  `contact_email` varchar(255) default NULL,
  `vendor_phone` varchar(32) default NULL,
  `vendor_address_1` varchar(64) NOT NULL default '',
  `vendor_address_2` varchar(64) default NULL,
  `vendor_city` varchar(32) NOT NULL default '',
  `vendor_state` varchar(32) NOT NULL default '',
  `vendor_country` varchar(32) NOT NULL default 'US',
  `vendor_zip` varchar(32) NOT NULL default '',
  `vendor_store_name` varchar(128) NOT NULL default '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) default NULL,
  `vendor_thumb_image` varchar(255) default NULL,
  `vendor_full_image` varchar(255) default NULL,
  `vendor_currency` varchar(16) default NULL,
  `cdate` int(11) default NULL,
  `mdate` int(11) default NULL,
  `vendor_image_path` varchar(255) default NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL default '',
  `vendor_min_pov` decimal(10,2) default NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL default '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL default '',
  `vendor_accepted_currencies` text NOT NULL,
  `vendor_address_format` text NOT NULL,
  `vendor_date_format` varchar(255) NOT NULL,
  PRIMARY KEY  (`vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`),
  KEY `idx_vendor_category_id` (`vendor_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `jos_vm_vendor`
--

INSERT INTO `jos_vm_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`, `vendor_accepted_currencies`, `vendor_address_format`, `vendor_date_format`) VALUES
(1, 'Alfa Eletro', 'AlfaEletro', '', '', '', '(47) 3029-1500', '', '', 'alfa@alfaeletro.com.br', '(47) 3029-1500', 'Rua Dona Francisca, 4215', 'Bairro Santo Antônio', 'Joinville', 'SC', 'BRA', '89218111', 'Alfa Eletro', '', 0, '', 'Alfa_Eletro_4a3cf5aecfcb0.png', 'BRL', 950302468, 1246109356, 'shop_image/', 'Estes são nossos termos de serviço.', 'http://www.alfaeletro.com.br', '0.00', '0.00', '1|R$|2|,| .|2|1', 'BRL', '{storename}\r\n{address_1}\r\n{address_2}\r\n{city} - {state} - {country}, {zip}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_vendor_category`
--

CREATE TABLE IF NOT EXISTS `jos_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL auto_increment,
  `vendor_category_name` varchar(64) default NULL,
  `vendor_category_desc` text,
  PRIMARY KEY  (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `jos_vm_vendor_category`
--

INSERT INTO `jos_vm_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_waiting_list`
--

CREATE TABLE IF NOT EXISTS `jos_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `notify_email` varchar(150) NOT NULL default '',
  `notified` enum('0','1') default '0',
  `notify_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `jos_vm_waiting_list`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vm_zone_shipping`
--

CREATE TABLE IF NOT EXISTS `jos_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_name` varchar(255) default NULL,
  `zone_cost` decimal(10,2) default NULL,
  `zone_limit` decimal(10,2) default NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL default '0',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `jos_vm_zone_shipping`
--

INSERT INTO `jos_vm_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_vvisitcounter`
--

CREATE TABLE IF NOT EXISTS `jos_vvisitcounter` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `tm` int(11) NOT NULL,
  `ip` varchar(16) character set latin1 collate latin1_general_ci NOT NULL default '0.0.0.0',
  `userAgent` varchar(512) character set latin1 collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `userAgent` (`userAgent`),
  KEY `tmIP` (`tm`,`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Extraindo dados da tabela `jos_vvisitcounter`
--

INSERT INTO `jos_vvisitcounter` (`id`, `tm`, `ip`, `userAgent`) VALUES
(1, 1245960609, '200.146.45.191', NULL),
(2, 1245961537, '200.146.45.191', NULL),
(3, 1245962389, '201.47.58.37', NULL),
(4, 1245962528, '200.146.45.191', NULL),
(5, 1245963370, '201.47.58.37', NULL),
(6, 1245963393, '189.115.30.9', NULL),
(7, 1246018704, '201.47.58.37', NULL),
(8, 1246025756, '200.146.45.212', NULL),
(9, 1246027931, '200.146.45.212', NULL),
(10, 1246029219, '201.47.56.189', NULL),
(11, 1246030682, '201.47.56.189', NULL),
(12, 1246032679, '201.47.56.189', NULL),
(13, 1246033801, '201.47.56.189', NULL),
(14, 1246034721, '201.47.56.189', NULL),
(15, 1246035844, '201.47.56.189', NULL),
(16, 1246036056, '201.47.58.37', NULL),
(17, 1246036779, '201.47.56.189', NULL),
(18, 1246037126, '201.47.58.37', NULL),
(19, 1246038025, '201.47.56.189', NULL),
(20, 1246038042, '201.47.58.37', NULL),
(21, 1246038957, '201.47.56.189', NULL),
(22, 1246039932, '201.47.56.189', NULL),
(23, 1246040206, '201.47.58.37', NULL),
(24, 1246040869, '201.47.56.189', NULL),
(25, 1246042100, '201.47.56.189', NULL),
(26, 1246042637, '201.47.58.37', NULL),
(27, 1246044002, '201.47.56.189', NULL),
(28, 1246044994, '201.47.56.189', NULL),
(29, 1246045110, '201.47.58.37', NULL),
(30, 1246046029, '201.47.58.37', NULL),
(31, 1246046947, '201.47.58.37', NULL),
(32, 1246047922, '201.47.58.37', NULL),
(33, 1246058676, '189.115.31.159', NULL),
(34, 1246060570, '189.26.156.145', NULL),
(35, 1246060829, '189.115.31.159', NULL),
(36, 1246061781, '189.26.156.145', NULL),
(37, 1246068584, '189.115.31.159', NULL),
(38, 1246107856, '201.22.82.59', NULL),
(39, 1246108792, '201.22.82.59', NULL),
(40, 1246111050, '201.22.82.59', NULL),
(41, 1246113146, '201.22.82.59', NULL),
(42, 1246114736, '201.22.82.59', NULL),
(43, 1246115644, '201.22.82.59', NULL),
(44, 1246116648, '201.22.82.59', NULL),
(45, 1246117646, '201.22.82.59', NULL),
(46, 1246118779, '201.22.82.59', NULL),
(47, 1246119996, '201.22.82.59', NULL),
(48, 1246121554, '189.26.154.230', NULL),
(49, 1246135183, '189.26.154.230', NULL),
(50, 1246136355, '189.26.154.230', NULL),
(51, 1246137717, '189.26.154.230', NULL),
(52, 1246139187, '189.26.154.230', NULL),
(53, 1246150834, '189.26.157.186', NULL),
(54, 1246156613, '189.26.157.186', NULL),
(55, 1246208353, '200.146.43.192', NULL),
(56, 1246228576, '201.22.82.145', NULL),
(57, 1246229618, '201.22.82.145', NULL),
(58, 1246230560, '201.22.82.145', NULL),
(59, 1246231484, '201.22.82.145', NULL),
(60, 1246232445, '201.22.82.145', NULL),
(61, 1246279910, '201.22.82.145', NULL),
(62, 1246284061, '201.47.56.130', NULL),
(63, 1246292697, '201.47.56.130', NULL),
(64, 1246296770, '189.115.115.80', NULL),
(65, 1246297777, '189.115.115.80', NULL),
(66, 1246299410, '189.115.115.80', NULL),
(67, 1246300694, '189.115.115.80', NULL),
(68, 1246303796, '189.115.115.80', NULL),
(69, 1246304877, '189.115.115.80', NULL),
(70, 1246309420, '189.115.30.112', NULL),
(71, 1246310414, '189.115.30.112', NULL),
(72, 1246337215, '200.146.45.123', NULL),
(73, 1246338127, '200.146.45.123', NULL),
(74, 1246349767, '200.146.45.123', NULL),
(75, 1246350675, '200.146.45.123', NULL),
(76, 1246351956, '200.146.45.123', NULL),
(77, 1246353017, '200.146.45.123', NULL),
(78, 1246354272, '200.146.45.123', NULL),
(79, 1246355389, '200.146.45.123', NULL),
(80, 1246356631, '200.146.45.123', NULL),
(81, 1246357701, '200.146.45.123', NULL),
(82, 1246359489, '200.146.45.123', NULL),
(83, 1246360400, '200.146.45.123', NULL),
(84, 1246361471, '200.146.45.123', NULL),
(85, 1246362388, '200.146.45.123', NULL),
(86, 1246363375, '200.146.45.123', NULL),
(87, 1246364766, '200.146.45.123', NULL),
(88, 1246365912, '200.146.45.123', NULL),
(89, 1246366513, '189.26.155.135', NULL),
(90, 1246367741, '189.26.155.135', NULL),
(91, 1246368642, '189.26.155.135', NULL),
(92, 1246369685, '189.26.155.135', NULL),
(93, 1246388190, '189.26.155.135', NULL),
(94, 1246389093, '189.26.155.135', NULL),
(95, 1246390015, '189.26.155.135', NULL),
(96, 1246392790, '189.26.155.135', NULL),
(97, 1246394598, '189.26.155.135', NULL),
(98, 1246394599, '200.146.45.152', NULL),
(99, 1246395652, '189.26.155.135', NULL),
(100, 1246396902, '189.26.155.135', NULL),
(101, 1246399896, '189.26.155.135', NULL),
(102, 1246400872, '189.26.155.135', NULL),
(103, 1246401846, '189.26.155.135', NULL),
(104, 1246402758, '189.26.155.135', NULL),
(105, 1246403692, '189.26.155.135', NULL),
(106, 1246407200, '200.146.45.186', NULL),
(107, 1246408135, '200.146.45.186', NULL),
(108, 1246409101, '200.146.45.186', NULL),
(109, 1246410053, '200.146.45.186', NULL),
(110, 1246410999, '200.146.45.186', NULL),
(111, 1246412430, '200.146.45.186', NULL),
(112, 1246413117, '201.22.81.47', NULL),
(113, 1246414148, '189.205.61.14', NULL),
(114, 1246414328, '200.146.45.186', NULL),
(115, 1246414755, '200.175.47.137', NULL),
(116, 1246416728, '201.246.210.52', NULL),
(117, 1246420116, '201.246.210.52', NULL),
(118, 1246450264, '201.22.83.135', NULL),
(119, 1246451294, '201.47.94.28', NULL),
(120, 1484101289, '127.0.0.1', NULL),
(121, 1484102203, '127.0.0.1', NULL),
(122, 1484103103, '127.0.0.1', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
