<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
{$_modx->getChunk('@FILE head.tpl')}
<body>
{$_modx->getChunk('@FILE header.tpl')}
{$_modx->getChunk('@FILE menu.tpl')}
{$_modx->getChunk('@FILE breadcrumbs.tpl')}
<section class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-12">
                <div class="block-content">
                    {$_modx->resource.content}
                    {'!ms2Gallery' | snippet : [
                        'parents' => $_modx->resource.parent,
                        'resources' => $_modx->resource.id,
                        'tpl' => '@FILE components/ms2gallery/row.tpl'
                    ]}
                </div>
            </div>
            <div class="col-lg-3 col-12">
                <div class="block-content">
                    <div class="blocks">
                        <p><img class="img-fluid" src="[[*logo]]" alt="{$_modx->resource.pagetitle}" /></p>
                    </div>
                    <div class="blocks">
                        <div class="content">
                            <div class="news-block">
                                <p><strong>Тип сайта:</strong> [[*site-tip]]</p>
                                <p><strong>CMS:</strong> [[*cms]]</p>
                                <p><strong>Тематика:</strong> [[*tematic]]</p>
                                <p>
                                    <strong>Работы на сайте:</strong><br>
                                    [[*work]]
                                </p>
                                <p><strong>Сайт:</strong> [[*url]]</p>
                                <p><strong>Клиент:</strong> [[*client]]</p>
                                <p><strong>Год выпуска:</strong> [[*year]]</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>