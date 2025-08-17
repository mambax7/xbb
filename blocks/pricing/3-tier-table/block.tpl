<section class="xbb-pricing py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold">Our Pricing Plans</h2>
            <p class="lead text-muted">Choose the plan that's right for you.</p>
        </div>

        <div class="row">
            <{foreach item=plan from=$block.plans}>
                <div class="col-lg-4">
                    <div class="card mb-5 mb-lg-0 <{if $plan.is_featured}>border-primary<{/if}>">
                        <div class="card-body">
                            <h5 class="card-title text-muted text-uppercase text-center"><{$plan.name}></h5>
                            <h6 class="card-price text-center">$<{$plan.price}><span class="period">/month</span></h6>
                            <hr>
                            <ul class="fa-ul">
                                <{foreach item=feature from=$plan.features}>
                                    <li class="<{if!$feature.included}>text-muted<{/if}>">
                                        <span class="fa-li">
                                            <i class="fas <{if $feature.included}>fa-check<{else}>fa-times<{/if}>"></i>
                                        </span>
                                        <{$feature.text}>
                                    </li>
                                <{/foreach}>
                            </ul>
                            <div class="d-grid">
                                <a href="<{$plan.button_url}>" class="btn <{if $plan.is_featured}>btn-primary<{else}>btn-outline-primary<{/if}> text-uppercase"><{$plan.button_text}></a>
                            </div>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
