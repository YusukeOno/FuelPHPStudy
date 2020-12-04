<?php

// maintenance flag
$custom = \Config::load('app/maintenance', 'maintenance');
$maintenance_active = \Config::get('maintenance.active');

// maintenance through or not
\Config::set('maintenance.through', false);

$current_url = getenv('HTTPS') ? 'https://' : 'http://'.getenv('SERVER_NAME').getenv('REQUEST_URI');
foreach (\Config::get('maintenance.through_path_list') as $path) {
    if (strpos($current_url, Uri::base().$path) !== false) {
        \Config::set('maintenance.through', true);
        break;
    }
}
foreach (\Config::get('maintenance.through_ip_list') as $ip) {
    if ($ip == getenv('REMOTE_ADDR')) {
        \Config::set('maintenance.through', true);
        break;
    }
}

return array(
    'fuelphp' => array(
        'app_created' => function () {
            // After FuelPHP initialised

            // Auth member 100: Admin group id
            if (\Auth::check() and \Auth::member(100)) {
                if (\Session::get('maintenance.force_through')) {
                    \Config::set('maintenance.through', true);
                }
            }
        },
        'request_created' => function () use ($maintenance_active) {
            // After Request forged
            if ($maintenance_active and ! \Config::get('maintenance.through')) {
                $data = array(
                    'title' => 'Maintenance 503 (メンテナンス 503)',
                    'content' => render('503'),
                );
                // Set a HTTP 503 output header
                return Response::forge(render('template', $data, false), 503)->send(true);
            }
        },
        'request_started' => function () use ($maintenance_active) {
            // Request is requested
            if ($maintenance_active and ! \Config::get('maintenance.through')) {
                exit;
            }
        },
        'controller_started' => function () use ($maintenance_active) {
            // Before controllers before() method called
        },
        'controller_finished' => function () use ($maintenance_active) {
            // After controllers after() method called
        },
        'response_created' => function () use ($maintenance_active) {
            // After Response forged
        },
        'request_finished' => function () use ($maintenance_active) {
            // Request is complete and Response received
        },
        'shutdown' => function () use ($maintenance_active) {
            // Output has been send out
        },
    ),
);
