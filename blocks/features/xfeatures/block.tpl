<section class="py-5">
    <div class="container">
        <div class="mb-4 text-center">
            <h2 class="h1 mb-2"><{$title|escape}></h2>
            <p class="text-muted"><{$subtitle|escape}></p>
        </div>
        <{if isset($xbb_icon_set) && $xbb_icon_set=='fontawesome'}><{assign var=icon_prefix value='fa'}><{else}><{assign var=icon_prefix value='bi'}><{/if}>
        <div class="row g-4">
            <{foreach item=it from=$features}>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card h-100 shadow-sm">
                        <div class="card-body">
                            <{if !empty($it.icon)}>
                                <div class="mb-3 fs-1"><i class="<{$icon_prefix|escape}> <{$it.icon|escape}>"></i></div><{/if}>
                            <h3 class="h5 mb-2"><{$it.title|escape}></h3>
                            <p class="text-muted small mb-0"><{$it.text|escape}></p>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
