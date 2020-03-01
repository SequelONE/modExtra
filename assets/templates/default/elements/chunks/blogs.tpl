<section class="news">
    <h5>Новости компании</h5>
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-12">
                <div class="block-blogs">
                    <div class="grid">
                        <div class="row">
                            {'!pdoPage' | snippet : [
                                'element' => 'getTickets',
                                'parents' => 4,
                                'limit' => 5,
                                'tpl' => '@FILE components/pdotools/pdopage/index/blogs/row.tpl',
                                'includeTVs' => 'image'
                            ]}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-12">
                <div class="block-news">
                    {'!pdoPage' | snippet : [
                        'element' => 'getTickets',
                        'parents' => 3,
                        'limit' => 5,
                        'tpl' => '@FILE components/pdotools/pdopage/index/news/row.tpl',
                        'includeTVs' => 'image'
                    ]}
                </div>
                <div class="banner">
                    <a href=""><img class="img-fluid" src="/assets/templates/default/img/datacenter.png" alt="Хостинг от компании SEQUEL.ONE" /></a>
                </div>
            </div>
        </div>
    </div>
</section>