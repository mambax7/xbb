<{assign var=list value=$items|default:[
["url"=>"#","logo"=>"https://dummyimage.com/120x40/ccc/555&text=Logo1"],
["url"=>"#","logo"=>"https://dummyimage.com/120x40/ccc/555&text=Logo2"],
["url"=>"#","logo"=>"https://dummyimage.com/120x40/ccc/555&text=Logo3"],
["url"=>"#","logo"=>"https://dummyimage.com/120x40/ccc/555&text=Logo4"]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-4 <{$props.class|default:''}>">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center gap-4">
            <{foreach from=$list item=lg}>
                <a href="<{$lg.url|escape}>"><img src="<{$lg.logo|escape}>" height="32" alt=""></a>
            <{/foreach}>
        </div>
    </div>
</section>
