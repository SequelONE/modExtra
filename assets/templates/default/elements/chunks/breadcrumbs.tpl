    <section class="breadcrumbs">
        <nav aria-label="breadcrumb">
            {'pdoCrumbs' | snippet : [
                'tplWrapper' => '@INLINE <ol class="breadcrumb">{$output}</ol>',
                'tpl' => '@INLINE <li class="breadcrumb-item"><a href="{$link}">{$menutitle}</a></li>',
                'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>',
                'showHome' => 1
            ]}
        </nav>
        <h1>{$_modx->resource.pagetitle}</h1>
    </section>