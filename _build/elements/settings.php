<?php

return [
    // Список шаблонов ресурса, на которых отображать вкладку
    // Если пусто - отображается на всех шаблонах.
    // Символ "-" - не отображается нигде.
    // Число "0" - отображается на пустом шаблоне.
    // Любые id "1,2,3" - отображается на шаблонах с id 1,2,3.
    'resource_templates' => [
        'xtype' => 'textfield',
        'area' => 'modextra_main',
        'value' => '',
    ],
    'template' => [
        'xtype' => 'modx-combo-template',
        'value' => 1,
        'area' => 'modextra_main',
    ],
    'language' => [
        'xtype' => 'modx-combo-language',
        'value' => 'ru',
        'area' => 'modextra_main',
    ],
    'context' => [
        'xtype' => 'modx-combo-context',
        'value' => 'web',
        'area' => 'modextra_main',
    ],
    'user' => [
        'xtype' => 'modx-combo-user',
        'value' => 1,
        'area' => 'modextra_main',
    ],
    'source_images' => [
        'xtype' => 'modx-combo-source',
        'value' => 1,
        'area' => 'modextra_main',
    ],
    'type_boolean' => [
        'xtype' => 'combo-boolean',
        'value' => true,
        'area' => 'modextra_main',
    ],
    'type_number' => [
        'xtype' => 'numberfield',
        'value' => 1,
        'area' => 'modextra_main',
    ],
    'type_textfield' => [
        'xtype' => 'textfield',
        'value' => 'main',
        'area' => 'modextra_main',
    ],
    'type_textarea' => [
        'xtype' => 'textarea',
        'value' => '',
        'area' => 'modextra_main',
    ],
];