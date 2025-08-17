<section class="xbb-posts-grid py-5">
    <div class="container">
        <div class="row">
            <{if $posts && count($posts) > 0}>
                <{foreach item=post from=$posts}>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <!-- Your existing card structure -->
                    </div>
                <{/foreach}>
            <{else}>
                <div class="col-12 text-center py-5">
                    <h4 class="text-muted">No posts available</h4>
                    <p class="text-muted">Configure a data provider to populate this block.</p>
                </div>
            <{/if}>
        </div>
    </div>
</section>
