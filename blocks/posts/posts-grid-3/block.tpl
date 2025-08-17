<{* expects $items = [<{title,url,excerpt,date,image_url}>] *}>
<{assign var=list value=$items|default:[]}>
<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row">
            <{foreach from=$list item=p name=pg}>
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <img class="card-img-top" src="<{$p.image_url|default:'https://picsum.photos/640/360?random='|cat:$smarty.foreach.pg.iteration|escape}>" alt="">
                        <div class="card-body">
                            <h3 class="h5 card-title"><a href="<{$p.url|default:'#'|escape}>"><{$p.title|escape}></a></h3>
                            <div class="text-muted small mb-2"><{$p.date|default:''|escape}></div>
                            <p class="card-text"><{$p.excerpt|default:''|escape}></p>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        </div>
    </div>
</section>
