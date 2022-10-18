
<?php
	define("DB_NAME",				getenv("MARIADB_DATABASE"));
	define("DB_USER",				getenv("MARIADB_USER"));
	define("DB_PASSWORD",			getenv("MARIADB_PASSWORD"));
	define("DB_HOST",				getenv("WORDPRESS_MARIADB_HOST") . ":3306");
	define( 'DB_CHARSET', 'utf8mb4' );
	define( 'DB_COLLATE', '' );

$table_prefix =					getenv("MARIADB_PREFIX");

define("WP_DEBUG", true);
if (!defined("ABSPATH"))
    define("ABSPATH", __DIR__ . "/");

require_once ABSPATH . "wp-settings.php";