<{assign var=list value=$items|default:[
["name"=>"Product A","price"=>"$19","image_url"=>"https://picsum.photos/400/300?1"],
["name"=>"Product B","price"=>"$29","image_url"=>"https://picsum.photos/400/300?2"],
["name"=>"Product C","price"=>"$39","image_url"=>"https://picsum.photos/400/300?3"],
["name"=>"Product D","price"=>"$49","image_url"=>"https://picsum.photos/400/300?4"]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row">
            <{foreach from=$list item=it}>
                <div class="col-6 col-lg-3 mb-4">
                    <div class="card h-100">
                        <img class="card-img-top" src="<{$it.image_url|escape}>" alt="">
                        <div class="card-body">
                            <div class="fw-semibold"><{$it.name|escape}></div>
                            <div class="text-muted"><{$it.price|escape}></div>
                            <a href="#" class="btn btn-sm btn-primary mt-2">Add to cart</a>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
