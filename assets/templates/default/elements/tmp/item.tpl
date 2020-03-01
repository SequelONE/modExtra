<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
{$_modx->getChunk('@FILE head.tpl')}
<body>
{$_modx->getChunk('@FILE header.tpl')}
{$_modx->getChunk('@FILE menu.tpl')}
{$_modx->getChunk('@FILE breadcrumbs.tpl')}
<section class="content mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-12">
                <div class="text-center text-md-left mb-2 mb-md-0">
                    [[+new:isnot=``:then=`<span class="badge badge-secondary badge-pill col-auto">[[%ms2_frontend_new]]</span>`]]
                    [[+popular:isnot=``:then=`<span class="badge badge-secondary badge-pill col-auto">[[%ms2_frontend_popular]]</span>`]]
                    [[+favorite:isnot=``:then=`<span class="badge badge-secondary badge-pill col-auto">[[%ms2_frontend_favorite]]</span>`]]
                </div>
                <div id="msProduct" class="row align-items-center">
                    <div class="col-12 col-md-6">
                        [[!msGallery]]
                    </div>
                    <div class="col-12 col-md-6">
                        <form class="form-horizontal ms2_form" method="post">
                            <input type="hidden" name="id" value="[[*id]]"/>
                
                
                
                            <div class="form-group row align-items-center">
                                <label class="col-6 col-md-3 text-right text-md-left col-form-label">[[%ms2_product_article]]:</label>
                                <div class="col-6 col-md-9">
                                    [[+article:default=`-`]]
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <label class="col-6 col-md-3 text-right text-md-left col-form-label">[[%ms2_product_price]]:</label>
                                <div class="col-6 col-md-9">
                                    [[+price]] [[%ms2_frontend_currency]]
                                    [[+old_price:gt=`0`:then=`
                                    <span class="old_price ml-2">[[+old_price]] [[%ms2_frontend_currency]]</span>
                                    `:else=``]]
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <label class="col-6 col-md-3 text-right text-md-left col-form-label" for="product_price">[[%ms2_cart_count]]:</label>
                                <div class="col-6 col-md-9">
                                    <div class="input-group">
                                        <input type="number" name="count" id="product_price" class="form-control col-md-6" value="1"/>
                                        <div class="input-group-append">
                                            <span class="input-group-text">[[%ms2_frontend_count_unit]]</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row align-items-center">
                                <label class="col-6 col-md-3 text-right text-md-left col-form-label">[[%ms2_product_weight]]:</label>
                                <div class="col-6 col-md-9">
                                    [[+weight]] [[%ms2_frontend_weight_unit]]
                                </div>
                            </div>
                
                            <div class="form-group row align-items-center">
                                <label class="col-6 col-md-3 text-right text-md-left col-form-label">[[%ms2_product_made_in]]:</label>
                                <div class="col-6 col-md-9">
                                    [[+made_in:default=`-`]]
                                </div>
                            </div>
                
                            [[msOptions?options=`color,size`]]
                
                            [[msProductOptions]]
                            
                            [[!ExtrasUserKeys?]]
                
                            <div class="form-group row align-items-center">
                                <div class="col-12 offset-md-3 col-md-9 text-center text-md-left">
                                    <button type="submit" class="btn btn-primary" name="ms2_action" value="cart/add">
                                        [[%ms2_frontend_add_to_cart]]
                                    </button>
                                </div>
                            </div>
                        </form>
                
                    </div>
                </div>
                <div class="block-content">
                    {$_modx->resource.content}
                </div>
            </div>
            <div class="col-lg-3 col-12">
                <div class="block-content">
                    {$_modx->getChunk('@FILE sidebar.tpl')}
                </div>
            </div>
        </div>
    </div>
</section>
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>