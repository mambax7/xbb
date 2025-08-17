<{assign var=list value=$items|default:[
["title"=>"What is XBB?","text"=>"Reusable Bootstrap blocks for XOOPS."],
["title"=>"How do I use it?","text"=>"Drag into rows, edit props, save as presets."]
]}>
<div id="<{$props.id|default:'acc1'|escape}>" class="<{$props.class|default:''}> accordion">
    <{foreach from=$list item=qa name=acc}>
        <div class="accordion-item">
            <h2 class="accordion-header" id="h<{$smarty.foreach.acc.iteration}>">
                <button class="accordion-button <{if $smarty.foreach.acc.iteration>1}>collapsed<{/if}>" type="button" data-bs-toggle="collapse" data-bs-target="#c<{$smarty.foreach.acc.iteration}>" aria-expanded="<{if $smarty.foreach.acc.iteration==1}>true<{else}>false<{/if}>" aria-controls="c<{$smarty.foreach.acc.iteration}>">
                    <{$qa.title|escape}>
                </button>
            </h2>
            <div id="c<{$smarty.foreach.acc.iteration}>" class="accordion-collapse collapse <{if $smarty.foreach.acc.iteration==1}>show<{/if}>" aria-labelledby="h<{$smarty.foreach.acc.iteration}>">
                <div class="accordion-body"><{$qa.text|escape}></div>
            </div>
        </div>
    <{/foreach}>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
