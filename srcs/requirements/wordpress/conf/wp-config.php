<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'inception_db' );

/** Database username */
define( 'DB_USER', 'tstrassb' );

/** Database password */
define( 'DB_PASSWORD', '123' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '-$8jy<A8{0B~?}(YIq1n.l::P=lb.<hqauf$##[PtU|}(v/o;G?ykl5v!kB$G3^b' );
define( 'SECURE_AUTH_KEY',  'Kfc{!%e;YWby1;7 9P$85^dfXb}r:oE=CU2#agzR]2gI_E??]{K{]Z2Y9C,$YImp' );
define( 'LOGGED_IN_KEY',    '.i}W^0WL_H6*^l6;/rM7;5Y #1?=Ce$sk8Va@Q~ahS*;94WFCD#?O_@214`G1mky' );
define( 'NONCE_KEY',        'T}>q|.qzj{pJ]9x;E Ebc8g[F|F80s[>|W<!FEQ{3 RCL;4490Z_:Fu ZVO`n#.P' );
define( 'AUTH_SALT',        'ME|B=up+;|m`Gt5u 9Z:GE!^PH+Yv1|cTNFqy_q?#_cr%_hPjmS9e(M8r0`3njLs' );
define( 'SECURE_AUTH_SALT', '?AAUN8]a~_-(!X&m&-TRixry;V=@G,GnwqYP;oM{9`3%>PHAd%q2?R^v@8_r!W9D' );
define( 'LOGGED_IN_SALT',   '*holpM#XU4qO`u1q<k_`~8^9II$bYtC!NC<:1ul,ssI(;~Ht&k*;8(|xDf>tWz+.' );
define( 'NONCE_SALT',       '/7*YO?I?fG%x7VdHu49Zs.T2QCOz]>N4ju+;hmqH72L%^&|_L  qlt(9<37[)B{t' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';