<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wpmultisite_dev');

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
define('AUTH_KEY',         'I^8A-F Q*#DK|tUcSnA1pvoT#jYAyJj]1-wN-Cr&3|St?Y2/h@>$%u`+)~E%aIz]');
define('SECURE_AUTH_KEY',  'dkHO:R:A2H]ea xa`S*2O.Gz@6?imj[05c5^w.$zz`A0cE](P0a_E8Q3lWu!OkCZ');
define('LOGGED_IN_KEY',    '+(%?EVGJz6eKSGB8=zgLq}hM2bz ^dy+r2ZAeI09abfc%)-wnH ^g_ F4r,U!qEP');
define('NONCE_KEY',        'VxshB$*85.K+~c%bdio,+j.rc<sTm@vlNm!Nth|HMo|E,[506=Ah]NL[Q!h2h>4L');
define('AUTH_SALT',        ',zTqSkV?Tkps}2nYN,{/R6-hs|U:tR+zFmi=Iq]@:+vBu.-sT-H`xg%8fq^u9QQ<');
define('SECURE_AUTH_SALT', 'n;+b.Yf4YX6B|3J$+s_Fx_LM$n[SGD4cWZ)x`x$R-ZrV6KZ=)-i|9iGM7ivRs@II');
define('LOGGED_IN_SALT',   '<ZgV3/EhgrLF}[9d(4U,>+Ck65KlZ}l:yrzqE:EpsM8=6-ZqZ[Mz}5-aJi%.<d2W');
define('NONCE_SALT',       '.4[-[I!A1-8+>ZC0I5_d/)QP]65hFc4d8W?k4$M|#t|Z|A AMKm)DG-f23K)~@UU');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wpms_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
/**
 * WordPress Multisite Configuration
 *
 * This environment runs on a sub-directory install.
 * See http://codex.wordpress.org/Create_A_Network for more details
 */
define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', false);
define('DOMAIN_CURRENT_SITE', 'wordpress.nba.com');
define('PATH_CURRENT_SITE', '/');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);

/**
 * Enable WordPress MU Domain Mapping Plugin
 */
define('SUNRISE', 'on');

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
