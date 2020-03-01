<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
{$_modx->getChunk('@FILE head.tpl')}
<body>
{$_modx->getChunk('@FILE header.tpl')}
{$_modx->getChunk('@FILE menu.tpl')}
{$_modx->getChunk('@FILE breadcrumbs.tpl')}
{'!mFilter2' | snippet : [
    'parents' => $_modx->resource.id,
    'limit' => 15,
    'class' => 'msProduct',
    'element' => 'msProducts',
    'tpl' => '@FILE components/msearch2/mfilter/row.tpl',
    'tplOuter' => '@FILE components/msearch2/mfilter/outer.tpl'
]}
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>