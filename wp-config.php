<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'gamingmobileapp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '%|s2_?H=3i&/M(u{gT|H0,-&xyz)}4/MP$fW`4(Cs{}]|{ig5)BJ99j!hCnl_C{K');
define('SECURE_AUTH_KEY',  'Tr811dDV<mo-Sa*Pc|Gq*iF6CE$<o=@IrqkDp%Cs~Ictv64+Q3>Fkd5;^|Z? Mml');
define('LOGGED_IN_KEY',    'wPzK,BCa_e-U_-l>lmAT|5rB$+dPecNqUIhb83fZhwO:G}K#67]8V:Q#-$EZuY~k');
define('NONCE_KEY',        '(;Acpxv#ng+fM`#:A74|@<J~^dY7wgVxUyp|Vf$b-=!sbBA6,Iwscx~YRF:G_,8O');
define('AUTH_SALT',        'hz%r7|+Uwu:pD2)<uM%fx/?r=;Q~D+u3^X,=f_g2arxX;ntk|]n52}R u>/|;]Db');
define('SECURE_AUTH_SALT', 'd$GtV^L q6)MUEdm(?2dgD=Rd{[1Nu{}~uw=DP{q7/tF604.T[9&sAGHbKgEUAwd');
define('LOGGED_IN_SALT',   '5eYvYKPCq@:3W_/ $YTZl!_&tk|P-xcE{PVd<ks Vo?`[nc{pk&R}LP,ge,<b`>5');
define('NONCE_SALT',       '|d<.sj0eBA_x=P25?he~`SLe18%|l2g 8h^6v2B|2Qg4C 1X9o[sjzt2K<]oR0.u');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
