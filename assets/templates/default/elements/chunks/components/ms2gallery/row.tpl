<div class="ms2Gallery">
    {if $files?}
        <div class="fotorama"
             data-nav="thumbs"
             data-thumbheight="45"
             data-allowfullscreen="true"
             data-swipe="true"
             data-autoplay="5000">
            {foreach $files as $file}
                <a href="{$file['url']}" target="_blank">
                    <img class="img-fluid" src="{$file['small']}" alt="{$file['name']}" title="{$file['name']}">
                </a>
            {/foreach}
        </div>
    {else}
        <img class="img-fluid" src="{('assets_url' | option) ~ 'components/ms2gallery/img/web/ms2_medium.png'}" alt="" title=""/>
    {/if}
</div>