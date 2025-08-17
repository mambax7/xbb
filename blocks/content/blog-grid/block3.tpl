<section class="xbb-posts-grid py-5">
    <div class="container">
        <div class="row">
            <{* Choose source: prefer $posts, fallback to $recent_posts *}>
            <{assign var=items value=null}>
            <{if isset($posts) && is_array($posts) && count($posts) > 0}>
                <{assign var=items value=$posts}>
            <{elseif isset($recent_posts) && is_array($recent_posts) && count($recent_posts) > 0}>
                <{assign var=items value=$recent_posts}>
            <{/if}>

            <{if isset($items) && is_array($items) && count($items) > 0}>
                <{foreach item=post from=$items}>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100 shadow-sm border-0">
                            <a href="<{$post.url|default:'#'|escape:'url'}>"> <img src="<{$post.image_url|default:'https://picsum.photos/400/250?blur=2'|escape:'url'}>"
                                                                                   class="card-img-top" alt="<{$post.title|default:''|escape}>"> </a>
                            <div class="card-body">
                                <div class="mb-2">
                                    <a href="<{$post.category_url|default:'#'|escape:'url'}>"
                                       class="text-primary text-decoration-none small text-uppercase">
                                        <{$post.category_name|default:''|escape}>
                                    </a>
                                </div>
                                <h5 class="card-title">
                                    <a href="<{$post.url|default:'#'|escape:'url'}>" class="text-dark text-decoration-none">
                                        <{$post.title|default:'Untitled'|escape}>
                                    </a>
                                </h5>
                                <p class="card-text text-muted"><{$post.excerpt|default:''|escape}></p>
                            </div>
                            <div class="card-footer bg-transparent border-0 text-muted small d-flex justify-content-between">
                                <span>By <a href="<{$post.author_url|default:'#'|escape:'url'}>" class="text-decoration-none">
                                    <{$post.author_name|default:'Anonymous'|escape}>
                                </a></span> <span><{$post.date|default:$smarty.now|date_format:'M j, Y'|escape}></span>
                            </div>
                        </div>
                    </div>
                <{/foreach}>
            <{else}>
                <div class="col-12">
                    <div class="alert alert-secondary mb-0" role="status">No posts yet.</div>
                </div>
            <{/if}>
        </div>
    </div>
</section>


