<{* Landing preset (alt): image-heavy hero + floating-label contact *}>

<{* HERO with image *}>
<{include file="modules/xbb/templates/blocks/hero/hero_simple.tpl"
title=$hero.title|default:'XOOPS + Bootstrap'
subtitle=$hero.subtitle|default:'Ship modern sites quickly.'
cta_label=$hero.cta_label|default:'Explore'
cta_url=$hero.cta_url|default:'#'
image_url=$hero.image_url|default:$xoops_url|cat:'/images/logo.png'
}>

<{* FEATURES *}>
<{include file="modules/xbb/templates/blocks/features/features_grid.tpl"
title=$features.title|default:'Powerful building blocks'
subtitle=$features.subtitle|default:'Compose pages from ready-made parts.'
features=$features.items|default:[]
}>

<{* CONTACT (floating labels) *}>
<{include file="modules/xbb/templates/blocks/contact/contact_floating.tpl"
title=$contact.title|default:'Contact us'
subtitle=$contact.subtitle|default:'We usually respond within 24 hours.'
xbb_fields=$contact.fields|default:[]
xbb_hidden=$contact.hidden|default:''
layout_schema=$contact.layout_schema|default:[]
}>

<{* CTA *}>
<{include file="modules/xbb/templates/blocks/cta/cta_bar.tpl"
title=$cta.title|default:'Ready to ship?'
subtitle=$cta.subtitle|default:'Install the XBB library via Composer.'
cta_label=$cta.cta_label|default:'Install now'
cta_url=$cta.cta_url|default:'#'
}>
