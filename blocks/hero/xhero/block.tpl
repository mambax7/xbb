<section class="py-5 bg-light">
    <div class="container">
        <div class="row align-items-center g-4">
            <div class="col-lg-7">
                <h1 class="display-5 fw-bold mb-3"><{$title|escape}></h1>
                <p class="lead text-muted mb-4"><{$subtitle|escape}></p>
                <{if !empty($cta_url)}>
                    <a href="<{$cta_url|escape}>" class="btn btn-primary btn-lg"><{$cta_label|escape}></a>
                <{/if}>
            </div>
            <{if !empty($image_url)}>
                <div class="col-lg-5 text-center">
                    <img class="img-fluid rounded shadow-sm" src="<{$image_url|escape}>" alt="<{$title|escape}>">
                </div>
            <{/if}>
        </div>
    </div>
</section>
