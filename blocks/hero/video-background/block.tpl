<{if !empty($xoops_is_homepage)}>
    <section class="xbb-hero-video">
        <div class="xbb-video-overlay"></div>
        <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
            <source src="<{$xoops_imageurl}>hero-video.mp4" type="video/mp4">
        </video>
        <div class="container h-100">
            <div class="d-flex h-100 text-center align-items-center">
                <div class="w-100 text-white">
                    <h1 class="display-3"><{$block.title|default:"Welcome to Our World"}></h1>
                    <p class="lead mb-0"><{$block.content}></p>
                </div>
            </div>
        </div>
    </section>
<{/if}>
