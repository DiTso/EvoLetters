CREATE TABLE IF NOT EXISTS `{per}letters_categories` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
);
#sep#
CREATE TABLE IF NOT EXISTS `{per}letters_newsletter` (
  `id` int(10) NOT NULL auto_increment,
  `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `template` longtext,
  `subject` varchar(255) NOT NULL,
  `newsletter` longtext,
  `cat_id` varchar(255) NOT NULL,
  `log` longtext,
  PRIMARY KEY  (`id`)
);
#sep#
CREATE TABLE IF NOT EXISTS `{per}letters_subscribers` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '1',
  `blocked` int(11) NOT NULL DEFAULT '0',
  `lastnewsletter` varchar(255) NOT NULL,
  `created` timestamp NOT NULL,
  `cat_id` varchar(255) NOT NULL COMMENT 'поле json в котором перечисляются категории писем, закрепленным за подписчиками',
  PRIMARY KEY  (`id`)
);
#sep#
CREATE TABLE IF NOT EXISTS `{per}letters_templates` (
  `id` int(11) NOT NULL auto_increment,
  `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY  (`id`)
);
#sep#
ALTER TABLE `{per}letters_subscribers` ADD UNIQUE KEY `email` (`email`);
#sep# 
ALTER TABLE `{per}letters_subscribers` ADD UNIQUE KEY `id` (`id`);
