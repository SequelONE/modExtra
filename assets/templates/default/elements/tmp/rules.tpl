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
            <div class="col-lg-12 col-12">
                <div class="block-content">
                    {$_modx->resource.content}
                </div>
            </div>
        </div>
    </div>
</section>
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>