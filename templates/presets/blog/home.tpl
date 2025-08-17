<{* Blog Home: Hero + Recent Posts + CTA *}>
<{include file="modules/xbb/templates/blocks/hero/hero_simple.tpl"
title=$hero.title|default:'News & updates'
subtitle=$hero.subtitle|default:'Fresh content from our team.'
cta_label=$hero.cta_label|default:'Subscribe'
cta_url=$hero.cta_url|default:'#'
image_url=$hero.image_url|default:''
}>
<{* posts list uses RecentPostsProvider data: $recent_posts *}>
<{include file="modules/xbb/templates/blocks/posts/posts_list.tpl"
title=$posts.title|default:'Latest posts'
subtitle=$posts.subtitle|default:'What’s new'
browse_url=$posts.browse_url|default:'#'
recent_posts=$recent_posts|default:[]
}>
<{include file="modules/xbb/templates/blocks/cta/cta_bar.tpl"
title=$cta.title|default:'Never miss an update'
subtitle=$cta.subtitle|default:'Join the newsletter.'
cta_label=$cta.cta_label|default:'Subscribe'
cta_url=$cta.cta_url|default:'#'
}>
