<{assign var=list value=$items|default:[
["icon"=>"bi bi-twitter","url"=>"#"],
["icon"=>"bi bi-facebook","url"=>"#"],
["icon"=>"bi bi-youtube","url"=>"#"],
["icon"=>"bi bi-github","url"=>"#"]
]}>
<div id="<{$props.id|default:''|escape}>" class="py-3 <{$props.class|default:''}>">
    <div class="container text-center">
        <{foreach from=$list item=s}><a class="mx-2" href="<{$s.url|escape}>"><i class="<{$s.icon|escape}> fs-4"></i></a><{/foreach}>
    </div>
</div>
