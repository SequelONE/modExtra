<section class="content msearch2 mt-5" id="mse2_mfilter">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-12 mt-5">
                <aside class="product-sidebar">
                    <div class="block-content">
                        <div class="widget">
                            <form action="[[~[[*id]]]]" method="post" id="mse2_filters">
                                [[+filters]]
                                <br/>
                                [[+filters:isnot=``:then=`
                                    <button type="reset" class="btn btn-default hidden">[[%mse2_reset]]</button>
                                    <button type="submit" class="btn btn-success pull-right hidden">[[%mse2_submit]]</button>
                                    <div class="clearfix"></div>
                                `]]
                            </form>
                        </div>
                    </div>
                </aside>
            </div>
            <div class="col-lg-9 col-12 mt-5">
                <div class="block-content" id="mse2_results">
                    {$_modx->resource.content}
                    <div class="row">
                        [[+results]]
                    </div>
                    <p>[[%mse2_filter_total]] <span id="mse2_total">[[+total:default=`0`]]</span></p>
                    <div class="pagination-wrapper mse2_pagination">
                        [[!+page.nav]]
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>