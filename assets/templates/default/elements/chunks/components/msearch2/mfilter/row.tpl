<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-xs-12">
    <div class="card">
        <img src="{$_pls['image'] | phpthumbon : "w=286&h=180&zc=1"}" class="card-img-top img-fluid" alt="{$pagetitle}">
        <div class="card-body">
            <h5 class="card-title">{$pagetitle}</h5>
            {$introtext}
            <button type="button" href="{$_modx->makeUrl($id)}" class="btn btn-outline-primary btn-xs">Добавить в корзину</button>
        </div>
    </div>
</div>