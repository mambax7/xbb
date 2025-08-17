<{assign var=list value=$items|default:[
["name"=>"Alex","role"=>"Founder","image_url"=>"https://i.pravatar.cc/200?img=1","links"=>[["icon"=>"bi bi-linkedin","url"=>"#"]]],
["name"=>"Sam","role"=>"CTO","image_url"=>"https://i.pravatar.cc/200?img=2","links"=>[["icon"=>"bi bi-github","url"=>"#"]]],
["name"=>"Rae","role"=>"Design","image_url"=>"https://i.pravatar.cc/200?img=3","links"=>[["icon"=>"bi bi-twitter","url"=>"#"]]]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row text-center">
            <{foreach from=$list item=tm}>
                <div class="col-md-4 mb-4">
                    <img class="rounded-circle mb-3" src="<{$tm.image_url|escape}>" width="120" height="120" alt="">
                    <h3 class="h6 mb-1"><{$tm.name|escape}></h3>
                    <div class="text-muted small mb-2"><{$tm.role|escape}></div>
                    <div>
                        <{foreach from=$tm.links item=l}><a class="me-2" href="<{$l.url|escape}>"><i class="<{$l.icon|escape}>"></i></a><{/foreach}>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
