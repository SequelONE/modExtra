<?php

/**
 * The home manager controller for modExtra.
 *
 */
class modExtraHomeManagerController extends modExtraManagerController
{
    /** @var modExtra $modExtra */
    public $modExtra;


    /**
     *
     */
    public function initialize()
    {
        $this->modExtra = $this->modx->getService('modExtra', 'modExtra', MODX_CORE_PATH . 'components/modextra/model/');
        parent::initialize();
    }


    /**
     * @return array
     */
    public function getLanguageTopics()
    {
        return ['modextra:default'];
    }


    /**
     * @return bool
     */
    public function checkPermissions()
    {
        return true;
    }


    /**
     * @return null|string
     */
    public function getPageTitle()
    {
        return $this->modx->lexicon('modextra');
    }


    /**
     * @return void
     */
    public function loadCustomCssJs()
    {
        $this->addCss($this->modExtra->config['cssUrl'] . 'mgr/main.css');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/modextra.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/misc/utils.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/misc/combo.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/widgets/items.grid.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/widgets/items.windows.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/widgets/categories.grid.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/widgets/categories.windows.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/widgets/home.panel.js');
        $this->addJavascript($this->modExtra->config['jsUrl'] . 'mgr/sections/home.js');

        $this->addHtml('<script type="text/javascript">
        modExtra.config = ' . json_encode($this->modExtra->config) . ';
        modExtra.config.connector_url = "' . $this->modExtra->config['connectorUrl'] . '";
        Ext.onReady(function() {MODx.load({ xtype: "modextra-page-home"});});
        </script>');

        // RichText editors
        if ($this->modx->getOption('use_editor') == 1) {
            // TinyMCE
            if (strtolower($this->modx->getOption('which_editor')) == 'tinymce') {
                $this->modx->regClientStartupScript($this->modx->getOption('assets_url').'components/tinymce/jscripts/tiny_mce/tiny_mce.js');
                for ($i=1; $i<6; $i++)
                    ${'cb'.$i} = $this->modx->getOption('tiny.custom_buttons'.$i);

                $height     = $this->modx->getOption('tiny.height',null,200);
                $width      = $this->modx->getOption('tiny.width',null,400);
                $plugins    = $this->modx->getOption('tiny.custom_plugins');
                $theme      = $this->modx->getOption('tiny.editor_theme');
                $bfs        = $this->modx->getOption('tiny.theme_advanced_blockformats');
                $css        = $this->modx->getOption('tiny.css_selectors');

                $tinyProperties = array(
                    'height' => $height,
                    'width' => $width,
                    'tiny.custom_buttons1' => (!empty($cb1)) ? $cb1 : $this->modx->getOption('tiny.custom_buttons1'),
                    'tiny.custom_buttons2' => (!empty($cb2)) ? $cb2 : $this->modx->getOption('tiny.custom_buttons2'),
                    'tiny.custom_buttons3' => (!empty($cb3)) ? $cb3 : $this->modx->getOption('tiny.custom_buttons3'),
                    'tiny.custom_buttons4' => (!empty($cb4)) ? $cb4 : $this->modx->getOption('tiny.custom_buttons4'),
                    'tiny.custom_buttons5' => (!empty($cb5)) ? $cb5 : $this->modx->getOption('tiny.custom_buttons5'),
                    'tiny.custom_plugins' => (!empty($plugins)) ? $plugins : $this->modx->getOption('tiny.custom_plugins'),
                    'tiny.editor_theme' => (!empty($theme)) ? $theme : $this->modx->getOption('tiny.editor_theme'),
                    'tiny.theme_advanced_blockformats' => (!empty($bfs)) ? $bfs : $this->modx->getOption('tiny.theme_advanced_blockformats'),
                    'tiny.css_selectors' => (!empty($css)) ? $css : $this->modx->getOption('tiny.css_selectors')
                );
                $tinyCorePath = $this->modx->getOption('core_path').'components/tinymce/';
                require_once $tinyCorePath.'tinymce.class.php';
                $tiny = new TinyMCE($this->modx,$tinyProperties);
                $tiny->setProperties($tinyProperties);
                $html = $tiny->initialize();
                $this->modx->regClientHTMLBlock($html);
            }
        }
    }


    /**
     * @return string
     */
    public function getTemplateFile()
    {
        $this->content .= '<div id="modextra-panel-home-div"></div>';

        return '';
    }
}