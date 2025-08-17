<section class="xbb-posts-grid py-5">
    <div class="container">
        <{* 1) Pick source: $posts (provider/controller) → $attrs.posts (builder) → [] *}>
        <{assign var=list value=$posts|default:$attrs.posts|default:array()}>

        <{* 2) If still empty, seed with sample data so we can preview *}>
        <{if !$list|@count}>
            <{assign var=list value=array(
            array(
            'url'=>'#','image_url'=>'https://picsum.photos/seed/101/800/600',
        'category_url'=>'#','category_name'=>'News',
        'title'=>'Sample Post One','excerpt'=>'Short excerpt for the first sample post.',
        'author_url'=>'#','author_name'=>'Admin','date'=>'Aug 01, 2025'
        ),
        array(
        'url'=>'#','image_url'=>'https://picsum.photos/seed/102/800/600',
        'category_url'=>'#','category_name'=>'Updates',
        'title'=>'Sample Post Two','excerpt'=>'Another short excerpt to show the grid.',
        'author_url'=>'#','author_name'=>'Admin','date'=>'Aug 03, 2025'
        ),
        array(
        'url'=>'#','image_url'=>'https://picsum.photos/seed/103/800/600',
        'category_url'=>'#','category_name'=>'Tips',
        'title'=>'Sample Post Three','excerpt'=>'A third sample for layout balance.',
        'author_url'=>'#','author_name'=>'Admin','date'=>'Aug 05, 2025'
        )
        )}>
        <{/if}>

        <div class="row">
            <{foreach item=post from=$list}>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100 shadow-sm border-0">
                        <a href="<{$post.url|default:'#'|escape}>"> <img src="<{$post.image_url|default:'https://picsum.photos/seed/placeholder/800/600'|escape}>" class="card-img-top" alt="<{$post.title|default:'Post'|escape}>"> </a>
                        <div class="card-body">
                            <div class="mb-2">
                                <a href="<{$post.category_url|default:'#'|escape}>" class="text-primary text-decoration-none small text-uppercase">
                                    <{$post.category_name|default:'Category'|escape}>
                                </a>
                            </div>
                            <h5 class="card-title">
                                <a href="<{$post.url|default:'#'|escape}>" class="text-dark text-decoration-none">
                                    <{$post.title|default:'Post title'|escape}>
                                </a>
                            </h5>
                            <p class="card-text text-muted"><{$post.excerpt|default:'Post excerpt goes here.'|escape}></p>
                        </div>
                        <div class="card-footer bg-transparent border-0 text-muted small d-flex justify-content-between">
                            <span>By <a href="<{$post.author_url|default:'#'|escape}>"><{$post.author_name|default:'Author'|escape}></a></span> <span><{$post.date|default:''|escape}></span>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
