<{if !empty($xoops_is_homepage)}>
    <section class="xbb-hero-fullscreen" style="background-image: url('<{$xoops_imageurl}>hero-background.jpg');">
        <div class="xbb-hero-overlay"></div>
        <div class="container h-100">
            <div class="row h-100 justify-content-center align-items-center text-center text-white">
                <div class="col-lg-8">
                    <h1 class="display-3 fw-bold"><{$block.title|default:$xoops_slogan}></h1>
                    <p class="lead my-4"><{$block.content}></p>
                    <a href="<{$block.button_link}>" class="btn btn-primary btn-lg"><{$block.button_text}></a>
                </div>
            </div>
        </div>
    </section>
<{/if}>
