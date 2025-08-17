<section class="xbb-posts-grid py-5">
    <div class="container">
        <div class="row">
            <{if isset($posts) && is_array($posts) && count($posts) > 0}>
                <{foreach item=post from=$posts}>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100 shadow-sm border-0">
                            <a href="<{$post.url|default:'#'|escape:'url'}>"> <img src="<{$post.image_url|default:'https://via.placeholder.com/400x250'|escape:'url'}>"
                                                                                   class="card-img-top" alt="<{$post.title|default:''|escape}>"> </a>
                            <div class="card-body">
                                <div class="mb-2">
                                    <a href="<{$post.category_url|default:'#'|escape:'url'}>"
                                       class="text-primary text-decoration-none small text-uppercase">
                                        <{$post.category_name|default:'Category'|escape}>
                                    </a>
                                </div>
                                <h5 class="card-title">
                                    <a href="<{$post.url|default:'#'|escape:'url'}>" class="text-dark text-decoration-none">
                                        <{$post.title|default:'Sample Post Title'|escape}>
                                    </a>
                                </h5>
                                <p class="card-text text-muted"><{$post.excerpt|default:'Sample excerpt text...'|escape}></p>
                            </div>
                            <div class="card-footer bg-transparent border-0 text-muted small d-flex justify-content-between">
                                <span>By <a href="<{$post.author_url|default:'#'|escape:'url'}>" class="text-decoration-none">
                                    <{$post.author_name|default:'Author Name'|escape}>
                                </a></span> <span><{$post.date|default:'Jan 1, 2024'|escape}></span>
                            </div>
                        </div>
                    </div>
                <{/foreach}>
            <{else}>
                <!-- Fallback content for preview/empty state -->
                <{for $i=1 to 3}>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100 shadow-sm border-0">
                            <a href="#"> <img src="https://picsum.photos/400/250?random=<{$i|escape}>"
                                              class="card-img-top" alt="Sample Post <{$i|escape}>"> </a>
                            <div class="card-body">
                                <div class="mb-2">
                                    <a href="#" class="text-primary text-decoration-none small text-uppercase">Technology</a>
                                </div>
                                <h5 class="card-title">
                                    <a href="#" class="text-dark text-decoration-none">Sample Blog Post <{$i|escape}></a>
                                </h5>
                                <p class="card-text text-muted">This is a sample excerpt showing how your blog grid will display content.</p>
                            </div>
                            <div class="card-footer bg-transparent border-0 text-muted small d-flex justify-content-between">
                                <span>By <a href="#" class="text-decoration-none">Author Name</a></span> <span><{$smarty.now|date_format:'M j, Y'}></span>
                            </div>
                        </div>
                    </div>
                <{/for}>
            <{/if}>
        </div>
    </div>
</section>
