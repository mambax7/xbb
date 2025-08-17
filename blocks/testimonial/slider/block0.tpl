<section class="xbb-testimonials py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner text-center">
                        <{*                        <{foreach item=testimonial from=$block.testimonials name=testimonialloop}>*}>
                        <{foreach item=testimonial from=$block["testimonials"]|default:[] name=testimonialloop}>
                            <div class="carousel-item <{if $smarty.foreach.testimonialloop.first}>active<{/if}>">
                                <img src="<{$testimonial.avatar_url}>" class="rounded-circle shadow-1-strong mb-4" alt="<{$testimonial.author_name}>" style="width: 150px;">
                                <p class="lead">
                                    <i class="bi bi-quote"></i> <{$testimonial.quote}>
                                </p>
                                <h5 class="mb-3"><{$testimonial.author_name}></h5>
                                <p class="text-muted"><{$testimonial.author_title}></p>
                            </div>
                        <{/foreach}>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>
