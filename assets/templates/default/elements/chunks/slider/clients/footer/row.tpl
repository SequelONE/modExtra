<div class="item">
    <figure class="effect-ming">
        <img src="{$_pls['tv.image'] | phpthumbon : "w=400&h=260&zc=1"}" alt="{$pagetitle}" />
        <figcaption>
            <h2>{$_pls['tv.year']}</h2>
            <p class="client-logo"><img src="{$_pls['tv.logo'] | phpthumbon : "w=190&h=60&zc=0"}" width="190" alt="{$pagetitle}" /></p>
            <p>{$pagetitle}</p>
            <p><strong>Выпущен в</strong> {$_pls['tv.year']}</p>
            <a href="{$_modx->makeUrl($id)}">Подробнее</a>
        </figcaption>
    </figure>
</div>