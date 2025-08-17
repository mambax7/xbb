<{assign var=list value=$items|default:[
["text"=>"This product changed our workflow.","name"=>"Jordan","role"=>"PM"],
["text"=>"Fast to integrate, easy to scale.","name"=>"Taylor","role"=>"Engineer"]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row">
            <{foreach from=$list item=t}>
                <div class="col-md-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <p class="mb-3">“<{$t.text|escape}>”</p>
                            <div class="small text-muted">— <strong><{$t.name|escape}></strong>, <{$t.role|escape}></div>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
