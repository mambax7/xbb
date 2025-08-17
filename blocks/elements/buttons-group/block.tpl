<{assign var=list value=$items|default:[
["text"=>"Primary","class"=>"btn btn-primary"],
["text"=>"Secondary","class"=>"btn btn-secondary"],
["text"=>"Outline","class"=>"btn btn-outline-secondary"]
]}>
<div id="<{$props.id|default:''|escape}>" class="py-3 <{$props.class|default:''}>">
    <div class="container">
        <div class="btn-group" role="group">
            <{foreach from=$list item=b}><a href="#" class="<{$b.class|escape}>"><{$b.text|escape}></a><{/foreach}>
        </div>
    </div>
</div>
