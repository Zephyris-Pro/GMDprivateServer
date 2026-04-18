ALTER TABLE `accounts` ADD `discord` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' AFTER `twitch`;
ALTER TABLE `accounts` ADD `instagram` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' AFTER `discord`;
ALTER TABLE `accounts` ADD `tiktok` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' AFTER `instagram`;
ALTER TABLE `accounts` ADD `custom` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' AFTER `tiktok`;
