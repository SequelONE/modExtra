<div class="col-lg-6 col-md-6 col-sm-6 col-12">
    <figure class="effect-winston">
        <img src="{'/assets/templates/default/img/sequelone_bg_blog.png' | phpthumbon : "w=400&h=300&c=1"}" alt="{$pagetitle}">
        <figcaption>
            <h2><a href="{$_modx->makeUrl($id)}">{$pagetitle}</a></h2>
            <p class="introtext">{$introtext | truncate : 80 : '...'}</p>
            <p>
                <a href="#"><i class="far fa-fw fa-star"></i></a>
                <a href="#"><i class="far fa-fw fa-comments">{$comments} {$new_comments}</i></a>
                <a href="#"><i class="far fa-fw fa-eye">{$views|numabbr}</i></a>
            </p>
        </figcaption>
    </figure>
</div>
<!--tickets_can_vote <span class="vote rating" title="[[%ticket_refrain]]"><i class="glyphicon glyphicon-minus"></i></span>-->
<!--tickets_cant_vote <span class="rating[[+rating_positive]][[+rating_negative]]" title="[[%ticket_rating_total]] [[+rating_total]]: ↑[[+rating_plus]] [[%ticket_rating_and]] ↓[[+rating_minus]]">[[+rating]]</span>-->
<!--tickets_new_comments <span class="ticket-new-comments">+[[+new_comments]]</span>-->
<!--tickets_active  active-->
<!--tickets_inactive  inactive-->
<!--tickets_voted_plus  voted-->
<!--tickets_voted_minus  voted-->
<!--tickets_rating_positive  positive-->
<!--tickets_rating_negative  negative-->
<!--tickets_can_star  active-->
<!--tickets_stared <i class="glyphicon glyphicon-star stared star"></i>-->
<!--tickets_unstared <i class="glyphicon glyphicon-star unstared star"></i>-->