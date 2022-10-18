
<?php
	define("DB_NAME",				getenv("MARIADB_DATABASE"));
	define("DB_USER",				getenv("MARIADB_USER"));
	define("DB_PASSWORD",			getenv("MARIADB_PASSWORD"));
	define("DB_HOST",				getenv("WORDPRESS_MARIADB_HOST") . ":3306");
	define("DB_CHARSET",			getenv("MARIADB_CHARSET"));
	define("DB_COLLATE",			getenv("MARIADB_COLLATE"));

define('AUTH_KEY',         's:IZmhl@7RevmY$d&U,$O6I#3wr+]2N/W1j^.<|#nI]LFy?#uaM|!]$k1#SQ;~h#');
define('SECURE_AUTH_KEY',  '{T=M7+MUQ;4/^Y$QiV9$3=qAj+L:[;Ngl/!ARDb:i*236~,^xZ%|%}@!D(29;Pi)');
define('LOGGED_IN_KEY',    '8y|jPsKoQMHKN_|2,W0r#.cR{3f>hA}2;v9eyk%sIx31vh];EqpaCuLo)+En8Ouh');
define('NONCE_KEY',        'Or,54E2+p-E:=8z$}`FAm-4axn/p?^rasQ:r!9N-5l&a8-_vZVb,F8b4)o(|PJ>#');
define('AUTH_SALT',        'X.t`:q|^lqxr-|]&anmt;*1}tV/ QYrVGqm e--%_5fC%||cN3EA||+%TFc~J ,9');
define('SECURE_AUTH_SALT', 'C>=J,izy=|Cm2=MYk-N&&7^~2W+2Ka%496_mdF+Ox3ZNJCUl$|R-.o4M!4]a&?jp');
define('LOGGED_IN_SALT',   '<W(HF=Bo&Ro|z]z?M}0w2kjy_zy|sajP&?NNvL[f=~v`^lAX*$=NBDX5Fc+,?_ZC');
define('NONCE_SALT',       'wXZbdOfp%6uN4;|zpaKfE5H)/f@Um(V5@s9cK1DwveKvVH=4wz[m$:$Q.&w:N9Zw');
define("CONCATENATE_SCRIPTS",	false);

$table_prefix =					getenv("MARIADB_PREFIX");

define("WP_DEBUG", true);
if (!defined("ABSPATH"))
    define("ABSPATH", __DIR__ . "/");

require_once ABSPATH . "wp-settings.php";