<{assign var=list value=$items|default:[
["value"=>"12K","label"=>"Users"],
["value"=>"340","label"=>"Projects"],
["value"=>"98%","label"=>"Uptime"],
["value"=>"24/7","label"=>"Support"]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row text-center">
            <{foreach from=$list item=s}>
                <div class="col-6 col-md-3 mb-4">
                    <div class="display-5 fw-bold"><{$s.value|escape}></div>
                    <div class="text-muted"><{$s.label|escape}></div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
