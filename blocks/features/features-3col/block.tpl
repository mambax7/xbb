<{* Features · 3 columns *}>
<{assign var=list value=$items|default:[
["icon"=>"bi bi-lightning","title"=>"Fast","text"=>"Quick to assemble."],
["icon"=>"bi bi-palette","title"=>"Stylish","text"=>"Bootstrap 5 defaults."],
["icon"=>"bi bi-gear","title"=>"Composable","text"=>"Mix & match blocks."]
]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row text-center">
            <{foreach from=$list item=f}>
                <div class="col-md-4 mb-4">
                    <div class="display-6 mb-2"><i class="<{$f.icon|escape}>"></i></div>
                    <h3 class="h5"><{$f.title|escape}></h3>
                    <p class="text-muted"><{$f.text|escape}></p>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
