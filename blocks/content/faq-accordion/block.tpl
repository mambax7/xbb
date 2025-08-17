<section class="xbb-content-faq py-5 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="text-center mb-5">
                    <h2 class="fw-bold"><{$block.title|default:"Frequently Asked Questions"}></h2>
                    <p class="lead text-muted"><{$block.content}></p>
                </div>

                <div class="accordion" id="faqAccordion">
                    <{foreach item=faq from=$block.faqs name=faqloop}>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="heading<{$smarty.foreach.faqloop.iteration}>">
                                <button class="accordion-button <{if!$smarty.foreach.faqloop.first}>collapsed<{/if}>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse<{$smarty.foreach.faqloop.iteration}>" aria-expanded="<{if $smarty.foreach.faqloop.first}>true<{else}>false<{/if}>" aria-controls="collapse<{$smarty.foreach.faqloop.iteration}>">
                                    <{$faq.question}>
                                </button>
                            </h2>
                            <div id="collapse<{$smarty.foreach.faqloop.iteration}>" class="accordion-collapse collapse <{if $smarty.foreach.faqloop.first}>show<{/if}>" aria-labelledby="heading<{$smarty.foreach.faqloop.iteration}>" data-bs-parent="#faqAccordion">
                                <div class="accordion-body">
                                    <{$faq.answer}>
                                </div>
                            </div>
                        </div>
                    <{/foreach}>
                </div>
            </div>
        </div>
    </div>
</section>
