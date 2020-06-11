<?php
/** @var modX $modx */
/** @var array $scriptProperties */
/** @var modExtra $modExtra */
$modExtra = $modx->getService('modExtra', 'modExtra', MODX_CORE_PATH . 'components/modextra/model/', $scriptProperties);
if (!$modExtra) {
    return 'Could not load modExtra class!';
}

//
switch ($modx->event->name) {
    /**
     * Add a custom tab to the MODX create/edit resource pages
     */
    case 'OnDocFormRender':
        /** @var modManagerController $controller */
        $controller = $modx->controller;
        if (!(is_object($controller) && ($controller instanceof modManagerController))) {
            return false;
        }

        //
        if (isset($controller->resource) && is_object($controller->resource)) {
            $available_templates = $modx->getOption('modextra_resource_templates', null, '');
            if ($available_templates === '-') {
                // Не отображать нигде
                return true;
            } elseif ($available_templates !== '') {
                // Отображать на конкретных шаблонах
                if ($available_templates = array_map('trim', explode(',', $available_templates))) {
                    if (!in_array($controller->resource->get('template'), $available_templates)) {
                        return true;
                    }
                }
            }
        }

        // Lexicon
        $controller->addLexiconTopic('modextra:default');

        // CSS
        $controller->head['css'][] = $modExtra->config['cssUrl'] . 'mgr/main.css';

        // JS
        $controller->head['js'][] = $modExtra->config['jsUrl'] . 'mgr/modextra.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/misc/utils.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/misc/combo.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/widgets/items.grid.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/widgets/items.windows.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/widgets/categories.grid.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/widgets/categories.windows.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/widgets/home.panel.js';
        $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/sections/home.js';

        // Inject tab file
        if (isset($controller->resource) && is_object($controller->resource)) {
            $controller->head['lastjs'][] = $modExtra->config['jsUrl'] . 'mgr/itemstab.js';
        }

        // Config
        $controller->addHtml('
            <script>
                modExtra[\'config\'] = ' . $modExtra->config . ';
                modExtra.config[\'connector_url\'] = "' . $modExtra->config['connectorUrl'] . '";
            </script>
        ');
        break;

    /**
     * Remove attached files to resources
     */
    case 'OnEmptyTrash':
        //
        break;
}