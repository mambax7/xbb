<section class="xbb-features-icon-grid py-5">
    <div class="container">
        <div class="row text-center mb-5">
            <div class="col-lg-8 mx-auto">
                <h2><{$block.title|default:"Our Core Features"}></h2>
                <p class="lead"><{$block.content}></p>
            </div>
        </div>

        <div class="row text-center">
            <{foreach item=feature from=$block.features}>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="feature-item p-4">
                        <div class="feature-icon mb-3">
                            <i class="<{$feature.icon}> fs-1 text-primary"></i>
                        </div>
                        <h4><{$feature.title}></h4>
                        <p class="text-muted"><{$feature.description}></p>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
