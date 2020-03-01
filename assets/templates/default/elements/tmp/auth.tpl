<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
{$_modx->getChunk('@FILE head.tpl')}
<body>
{$_modx->getChunk('@FILE header.tpl')}
{$_modx->getChunk('@FILE menu.tpl')}
{$_modx->getChunk('@FILE breadcrumbs.tpl')}
    <section class="login section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-xs-12">
                    {'!officeAuth' | snippet : [
                        'groups' => 'Users',
                        'HybridAuth' => 1,
                        'loginContext' => 'my',
                        'addContexts' => 'web,store,host,docs,my',
                        'providers' => 'Yandex,GitHub,Vkontakte,Facebook'
                    ]}
                </div>
            </div>
        </div>
    </section>
    <section class="cta-4 section-padding">
        <div class="container">
            <div class="row">
                <div class="col col-xs-12">
                    <div class="cta-text">
                        <h2>{$_modx->lexicon('support')}</h2>
                        <h3>admin@sequel.one</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>