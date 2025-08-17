<{assign var=plans value=$items|default:[
["name"=>"Basic","price"=>"$9","features"=>["1 site","Email support"]],
["name"=>"Pro","price"=>"$29","features"=>["5 sites","Priority support"]],
["name"=>"Business","price"=>"$99","features"=>["Unlimited","SLA support"]]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row">
            <{foreach from=$plans item=pl}>
                <div class="col-md-4 mb-4">
                    <div class="card h-100 text-center">
                        <div class="card-body">
                            <h3 class="h5 mb-3"><{$pl.name|escape}></h3>
                            <div class="display-6 mb-3"><{$pl.price|escape}></div>
                            <ul class="list-unstyled mb-4">
                                <{foreach from=$pl.features item=f}>
                                    <li><{$f|escape}></li><{/foreach}>
                            </ul>
                            <a href="#" class="btn btn-primary">Choose</a>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
