<?php

/**
 * @var Phalcon\DiInterface $di
 * @var Phalcon\Mvc\RouterInterface $router
 */

$router = $di->getRouter();

// Define your routes here
/*$router->add('/', [
    'namespace' => 'App\Controllers',
    'controller' => 'Index',
    'action' => 'index'
]);*/

$router->handle();
