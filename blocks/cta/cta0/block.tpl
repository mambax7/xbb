<section class="py-4 bg-primary text-white">
    <div class="container">
        <div class="d-flex flex-column flex-lg-row align-items-center justify-content-between">
            <div class="mb-3 mb-lg-0">
                <h3 class="h4 mb-1"><{$title|escape}></h3>
                <p class="mb-0 text-white-50"><{$subtitle|escape}></p>
            </div>
            <{if !empty($cta_url)}><a class="btn btn-light btn-lg" href="<{$cta_url|escape}>"><{$cta_label|escape}></a><{/if}>
        </div>
    </div>
</section>
