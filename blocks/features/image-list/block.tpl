<section class="xbb-features-image-list py-5">
    <div class="container">
        <{foreach item=feature from=$block.features name=featureloop}>
            <div class="row align-items-center mb-5">
                <div class="col-md-6 <{if $smarty.foreach.featureloop.iteration is even}>order-md-2<{/if}>">
                    <img src="<{$feature.image_url}>" class="img-fluid rounded shadow-sm" alt="<{$feature.title}>">
                </div>
                <div class="col-md-6 <{if $smarty.foreach.featureloop.iteration is even}>order-md-1<{/if}>">
                    <h3 class="mt-3 mt-md-0"><{$feature.title}></h3>
                    <p class="text-muted"><{$feature.description}></p>
                    <a href="<{$feature.link_url}>" class="btn btn-link">Learn More <i class="bi bi-arrow-right"></i></a>
                </div>
            </div>
        <{/foreach}>
    </div>
</section>
