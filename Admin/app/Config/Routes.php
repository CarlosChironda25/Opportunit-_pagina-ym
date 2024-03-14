<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->setAutoRoute(true);
$routes->get('dashboard', 'Home::dashboard');
$routes->get('logout', 'Home::logout');
$routes->match(['get', 'post'], 'profile', 'Home::profile');
$routes->match(['get', 'post'], 'support', 'Home::support');
