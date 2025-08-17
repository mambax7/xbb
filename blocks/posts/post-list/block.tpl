<section class="xbb-posts-list">
    <div class="container">
        <{if isset($posts) && is_array($posts) && count($posts) > 0}>
            <{foreach item=post from=$posts}>
                <div class="post-item d-flex align-items-start mb-4">
                    <div class="flex-shrink-0">
                        <a href="<{$post.url|default:'#'|escape:'url'}>"> <img src="<{$post.image_url|default:'https://via.placeholder.com/120x90'|escape:'url'}>" alt="<{$post.title|default:''|escape}>" class="img-fluid rounded" width="120"> </a>
                    </div>
                    <div class="flex-grow-1 ms-3">
                        <h5 class="mb-1"><a href="<{$post.url|default:'#'|escape:'url'}>" class="text-dark text-decoration-none"><{$post.title|default:'Untitled'|escape}></a></h5>
                        <div class="text-muted small">
                            <{$post.date|default:$smarty.now|date_format:'M j, Y'|escape}> &middot; <a href="<{$post.author_url|default:'#'|escape:'url'}>"><{$post.author_name|default:'Anonymous'|escape}></a>
                        </div>
                        <p class="mt-2 d-none d-md-block"><{$post.excerpt|default:''|escape}></p>
                    </div>
                </div>
            <{/foreach}>
        <{else}>
            <div class="alert alert-secondary" role="status">No posts yet.</div>
        <{/if}>
    </div>
</section>
