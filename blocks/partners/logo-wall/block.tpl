<section class="xbb-partners py-5 bg-light">
    <div class="container">
        <div class="row text-center">
            <{foreach item=partner from=$partners}>
                <div class="col-lg-2 col-md-4 col-6">
                    <a href="<{$partner.url}>" target="_blank" rel="noopener"> <img src="<{$partner.logo_url}>" class="img-fluid partner-logo" alt="<{$partner.name}>"> </a>
                    <{$partner.name}>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
