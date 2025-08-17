<{* Landing preset chaining Hero → Features → Contact → CTA *}>
<{include file="modules/xbb/templates/blocks/hero/hero_simple.tpl"
title=$hero.title|default:'Build beautiful XOOPS sites'
subtitle=$hero.subtitle|default:'Modern Bootstrap 5 blocks and forms.'
cta_label=$hero.cta_label|default:'Get started'
cta_url=$hero.cta_url|default:'#'
image_url=$hero.image_url|default:''
}>
<{include file="modules/xbb/templates/blocks/features/features_grid.tpl"
title=$features.title|default:'Everything you need'
subtitle=$features.subtitle|default:'A fast way to ship modern XOOPS pages.'
features=$features.items|default:[]
}>
<{include file="modules/xbb/templates/blocks/contact/contact_split.tpl"
title=$contact.title|default:'Get in touch'
subtitle=$contact.subtitle|default:'We reply within 24 hours.'
address=$contact.address|default:'123 XOOPS Ave, Suite 5'
phone=$contact.phone|default:'+1 (555) 123-4567'
emailPublic=$contact.emailPublic|default:'hello@example.com'
showMap=$contact.showMap|default:false
xbb_form_html=$contact.form_html|default:''
xbb_fields=$contact.fields|default:[]
xbb_hidden=$contact.hidden|default:''
layout_schema=$contact.layout_schema|default:[]
}>
<{include file="modules/xbb/templates/blocks/cta/cta_bar.tpl"
title=$cta.title|default:'Ready to ship?'
subtitle=$cta.subtitle|default:'Install the XBB library via Composer.'
cta_label=$cta.cta_label|default:'Install now'
cta_url=$cta.cta_url|default:'#'
}>
