    <section class="projects">
        <h5>{$_modx->lexicon('sonelang_frontend_clients')}</h5>
        <div class="grid">
            <div id="owl-clients" class="owl-carousel owl-theme">
                {'pdoResources' | snippet : [
                    'parents' => '53,54,55,56,57',
                    'sortby' => '{"year":"DESC", "pagetitle":"DESC"}',
                    'limit' => 8,
                    'tpl' => '@FILE slider/clients/footer/row.tpl',
                    'includeTVs' => 'image, year, logo'
                ]}
            </div>
        </div>
    </section>