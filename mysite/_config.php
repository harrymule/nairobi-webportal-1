<?php

global $project;
$project = 'Nairobi';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'silverstripe',
	"password" => 'root',
	"database" => 'silverstripe_ncc',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_US');
SSviewer::set_theme('fitiimage');
FulltextSearchable::enable();
// GoogleSitemap::enable_google_notification();

