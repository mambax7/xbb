<{* Docs page: Hero + TOC + Content (proxy to canonical module templates). See docs/tasks.md Task 1. *}>
<{include file="db:blocks/hero/hero_simple.tpl"
title=$hero.title|default:'Documentation'
subtitle=$hero.subtitle|default:'Everything you need to build.'
cta_label=$hero.cta_label|default:''
cta_url=$hero.cta_url|default:'#'
image_url=$hero.image_url|default:''
}>
<section class="py-5">
    <div class="container">
        <div class="row g-4">
            <div class="col-lg-3">
                <{include file="db:blocks/toc/toc_sidebar.tpl" toc=$docs.toc|default:[] }>
            </div>
            <div class="col-lg-9">
                <{include file="db:blocks/content/content_basic.tpl"
                title=$docs.title|default:'Getting started'
                subtitle=$docs.subtitle|default:'Install, configure, and build'
                html=$docs.html|default:'<p>Add your docs HTML here.</p>'
                }>
            </div>
        </div>
    </div>
</section>
