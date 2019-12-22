<?php
/**
 * Fuel is a fast, lightweight, community driven PHP 5.4+ framework.
 *
 * @package    Fuel
 * @version    1.8.2
 * @author     Fuel Development Team
 * @license    MIT License
 * @copyright  2010 - 2019 Fuel Development Team
 * @link       https://fuelphp.com
 */

/**
 * -----------------------------------------------------------------------------
 *  Global database settings
 * -----------------------------------------------------------------------------
 *
 *  Set database configurations here to override environment specific
 *  configurations
 *
 */

return array(
    'default' => array(
        'type'          => 'mysqli',
        'connection'    => array(
            'persistent'    => false,
        ),
        'identifier'    => '`',
        'table_prefix'  => 'cf_',
        'charset'       => 'utf8',
        'collation'     => false,
        'enable_cache'  => true,
        'profiling'     => false,
        'readonly'      => false,
    ),
);
