<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
{$_modx->getChunk('@FILE head.tpl')}
<body>
{$_modx->getChunk('@FILE header.tpl')}
{$_modx->getChunk('@FILE menu.tpl')}
{$_modx->getChunk('@FILE breadcrumbs.tpl')}
{'!mFilter2' | snippet : [
    'parents' => $_modx->resource.id,
    'limit' => 5,
    'element' => 'pdoResources',
    'tpl' => '@FILE components/msearch2/mfilter/items.tpl',
    'tplOuter' => '@FILE components/msearch2/mfilter/outer.tpl',
    'tplPageWrapper' => '@INLINE <div class="pagination"><ul>[[+prev]][[+pages]][[+next]]</ul></div>',
    'tplPage' => '@INLINE <li class="num"><a href="[[+href]]">[[+pageNo]]</a><li>',
    'tplPageActive' => '@INLINE <li><a href="[[+href]]">[[+pageNo]]</a></li>',
    'tplPagePrev' => '@INLINE <li><a href="[[+href]]" aria-label="Previous"><i class="fa fa-angle-double-left"></i></a><li>',
    'tplPageNext' => '@INLINE <li><a href="[[+href]]" aria-label="Next"><i class="fa fa-angle-double-right"></i></a><li>',
    'tplPagePrevEmpty' => '@INLINE <li><a href="{$_modx->makeUrl($_modx->resource.id)}#" aria-label="Previous"><i class="fa fa-angle-double-left"></i></a><li>',
    'tplPageNextEmpty' => '@INLINE <li><a href="{$_modx->makeUrl($_modx->resource.id)}#" aria-label="Next"><i class="fa fa-angle-double-right"></i></a><li>',
    'tplPageSkip' => '@INLINE <li>...<li>',
    'includeTVs' => 'cms,site-tip,year,image,logo',
    'pageLimit' => 5,
    'suggestions' => 'false',
    'showEmptyFilters' => 'false',
    'cache' => 1,
    'cacheTime' => 3600,
    'filters' => '
        tv|cms:checkbox,
        tv|site-tip:checkbox,
        tv|tematic:checkbox,
        tv|work:checkbox,
        tv|year:checkbox
    ',
    'sort' => '
        tv|year:desc
    '
]}
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>