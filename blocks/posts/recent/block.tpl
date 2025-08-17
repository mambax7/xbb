<section class="py-5">
    <div class="container">
        <div class="d-flex align-items-end justify-content-between mb-3">
            <div>
                <h2 class="h1 mb-1"><{$title|default:''|escape}></h2>
                <p class="text-muted mb-0"><{$subtitle|default:''|escape}></p>
            </div>
            <{if !empty($browse_url)}><a class="btn btn-outline-primary" href="<{$browse_url|escape:'url'}>">Browse all</a><{/if}>
        </div>
        <div class="row g-4">
            <{if !empty($recent_posts)}>
                <{foreach item=post from=$recent_posts}>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card h-100 shadow-sm">
                            <div class="card-body d-flex flex-column">
                                <h3 class="h5 mb-2"><a href="<{$post.url|default:'#'|escape:'url'}>"><{$post.title|default:''|escape}></a></h3>
                                <p class="text-muted small flex-grow-1"><{$post.excerpt|default:''|escape}></p>
                                <{if !empty($post.date_iso)}>
                                    <div class="text-muted small mt-2"><i class="bi bi-calendar3 me-1"></i>
                                    <time datetime="<{$post.date_iso|escape}>"><{$post.date|default:''|escape}></time></div><{/if}>
                            </div>
                        </div>
                    </div>
                <{/foreach}>
            <{else}>
                <div class="col-12"><p class="text-muted mb-0">No posts yet</p></div>
            <{/if}>
        </div>
    </div>
</section>
