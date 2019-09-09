<?php
use Dotenv\Dotenv;

/*
 * Modified: prepend directory path of current file, because of this file own different ENV under between Apache and command line.
 * NOTE: please remove this comment.
 */
defined('BASE_PATH') || define('BASE_PATH', getenv('BASE_PATH') ?: realpath(dirname(__FILE__) . '/../..'));
defined('APP_PATH') || define('APP_PATH', BASE_PATH . '/app');

/**
 * require only DotEnv
 */
/*function require_recursively($path) {
    foreach (glob($path) as $f) {
        if(is_dir($f)) {
            require_recursively($f);
        }
        require_once $f;
    }
}
require_recursively(BASE_PATH . '/vendor/vlucas/phpdotenv/src/*.php');*/
$notRequired = true;
foreach(get_required_files() as $r) {
    if($r === BASE_PATH . '/vendor/autoload.php')
        $notRequired = false;
}
if($notRequired) {
    require_once BASE_PATH . '/vendor/autoload.php';
}

/**
 * Load dotenv variables for dev purposes only, they won't override existing ones
 */
$dotenv = Dotenv::create(__DIR__);
$dotenv->load();

return new \Phalcon\Config([
    'database' => [
        'adapter'     => getenv('DB_ADAPTER'),
        'host'        => getenv('DB_HOST'),
        'username'    => getenv('DB_USER'),
        'password'    => getenv('DB_PASSWORD'),
        'dbname'      => getenv('DB_NAME'),
        'charset'     => getenv('DB_CHARSET'),
    ],
    'application' => [
        'envDev'         => filter_var(getenv('ENV_DEV'), FILTER_VALIDATE_BOOLEAN),
        'appDir'         => APP_PATH . '/',
        'controllersDir' => APP_PATH . '/controllers/',
        'modelsDir'      => APP_PATH . '/models/',
        'migrationsDir'  => APP_PATH . '/migrations/',
        'viewsDir'       => APP_PATH . '/views/',
        'pluginsDir'     => APP_PATH . '/plugins/',
        'libraryDir'     => APP_PATH . '/library/',
        'cacheDir'       => BASE_PATH . '/cache/',

        // This allows the baseUri to be understand project paths that are not in the root directory
        // of the webpspace.  This will break if the public/index.php entry point is moved or
        // possibly if the web server rewrite rules are changed. This can also be set to a static path.
        'baseUri'        => preg_replace('/public([\/\\\\])index.php$/', '', $_SERVER["PHP_SELF"]),
        'domain'         => 'http://' . (in_array('HTTP_HOST', $_SERVER) ? $_SERVER['HTTP_HOST'] : '127.0.0.1')
    ]
]);
