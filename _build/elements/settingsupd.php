<?php

return [
    // Site
    'default_template' => [
        'xtype' => 'modx-combo-template',
        'value' => 2,
        'area' => 'site',
        'namespace' => 'core'
    ],
    'error_page' => [
        'xtype' => 'textfield',
        'value' => 10,
        'area' => 'site',
        'namespace' => 'core'
    ],
    'publish_default' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'site',
        'namespace' => 'core'
    ],
    'site_name' => [
        'xtype' => 'textfield',
        'value' => 'Demo',
        'area' => 'site',
        'namespace' => 'core'
    ],
    'unauthorized_page' => [
        'xtype' => 'textfield',
        'value' => 11,
        'area' => 'furls',
        'namespace' => 'core'
    ],
    // Friendly URLs
    'automatic_alias' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'furls',
        'namespace' => 'core'
    ],
    'friendly_alias_realtime' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'furls',
        'namespace' => 'core'
    ],
    'friendly_alias_restrict_chars' => [
        'xtype' => 'textfield',
        'value' => 'alphanumeric',
        'area' => 'furls',
        'namespace' => 'core'
    ],
    'friendly_alias_translit' => [
        'xtype' => 'textfield',
        'value' => 'russian',
        'area' => 'furls',
        'namespace' => 'core'
    ],
    'friendly_urls' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'furls',
        'namespace' => 'core'
    ],
    'use_alias_path' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'furls',
        'namespace' => 'core'
    ],
    // Cache
    'cache_db' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'caching',
        'namespace' => 'core'
    ],
    'cache_db_session' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'caching',
        'namespace' => 'core'
    ],
    'cache_disabled' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'caching',
        'namespace' => 'core'
    ],
    // pdoTools
    'pdotools_elements_path' => [
        'xtype' => 'textfield',
        'value' => '/assets/templates/default/elements/chunks/',
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
    'pdotools_fenom_default' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
    'pdotools_fenom_modx' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
    'pdotools_fenom_options' => [
        'value' => '{"auto_escape": false, "force_include": true}',
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
    'pdotools_fenom_parser' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
    'pdotools_fenom_php' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
    'pdotools_fenom_save_on_errors' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'pdotools_main',
        'namespace' => 'pdotools'
    ],
];