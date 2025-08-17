<{* Pick data source: $testimonials (controller/provider) → $attrs.testimonials (manifest/default) → [] *}>
<{assign var=list value=$testimonials|default:$attrs.testimonials|default:array()}>

<{* Normalize avatar URL: if it starts with '/', prefix with $xoops_url *}>
<{function name=avatar_url v=''}><{if $v|substr:0:1=='/'}><{$xoops_url}><{$v|escape}><{else}><{$v|escape}><{/if}><{/function}>

<section class="xbb-testimonials py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <{assign var=carId value="testimonialCarousel-"|cat:uniqid()}>
                <div id="<{$carId|escape}>" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner text-center">
                        <{foreach item=t from=$list name=loop}>
                            <div class="carousel-item <{if $smarty.foreach.loop.first}>active<{/if}>">
                                <img src="<{avatar_url v=$t.avatar_url|default:'/uploads/avatar1.jpg'}>" class="rounded-circle shadow-1-strong mb-4" alt="<{$t.author_name|default:'User'|escape}>" style="width:150px;">
                                <p class="lead"><i class="bi bi-quote"></i> <{$t.quote|default:'Your quote here'|escape}></p>
                                <h5 class="mb-3"><{$t.author_name|default:'Author'|escape}></h5>
                                <p class="text-muted"><{$t.author_title|default:''|escape}></p>
                            </div>
                        <{/foreach}>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#<{$carId|escape}>" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#<{$carId|escape}>" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
