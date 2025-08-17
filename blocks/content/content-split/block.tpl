<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 mb-4 mb-md-0">
                <h2><{$props.title|default:'Default title'|escape}></h2>
                <p class="lead"><{$props.subtitle|default:'Short supporting paragraph.'|escape}></p>
                <p><{$props.text|default:'Longer content goes here. Use this block for about/feature detail.'|escape}></p>
            </div>
            <div class="col-md-6">
                <img class="img-fluid rounded" src="<{$props.image_url|default:'https://picsum.photos/800/500'|escape}>" alt="">
            </div>
        </div>
    </div>
</section>

