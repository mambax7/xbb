<{* XBB Posts Grid block template
   Expected data: $posts (array of objects with fields: title, url, excerpt, image, date)
   Notes:
   - Escapes are applied to all dynamic text/attributes.
   - Provides empty state when no posts are available.
   - Adds alt text fallback for images using post title or empty string.
*}>
<section class="xbb-posts-grid py-5">
    <div class="container">
        <div class="row g-4">
            <{if $posts|@count}>
                <{foreach item=post from=$posts}>
                    <div class="col-12 col-md-6 col-lg-4">
                        <article class="card h-100">
                            <{if $post.image|default:''}>
                                <img src="<{$post.image|default:''|escape}>" class="card-img-top" alt="<{$post.title|default:''|escape}>">
                            <{/if}>
                            <div class="card-body">
                                <{if $post.title|default:''}>
                                    <h5 class="card-title mb-2">
                                        <{if $post.url|default:''}>
                                            <a href="<{$post.url|default:'#'|escape}>" class="stretched-link text-decoration-none"><{$post.title|escape}></a>
                                        <{else}>
                                            <{$post.title|escape}>
                                        <{/if}>
                                    </h5>
                                <{/if}>
                                <{if $post.excerpt|default:''}>
                                    <p class="card-text mb-0"><{$post.excerpt|escape}></p>
                                <{/if}>
                                <{if $post.date|default:''}>
                                    <div class="mt-2"><small class="text-muted"><{$post.date|escape}></small></div>
                                <{/if}>
                            </div>
                        </article>
                    </div>
                <{/foreach}>
            <{else}>
                <div class="col-12">
                    <div class="alert alert-info mb-0" role="alert" aria-live="polite" aria-atomic="true">No posts yet</div>
                </div>
            <{/if}>
        </div>
    </div>
</section>
