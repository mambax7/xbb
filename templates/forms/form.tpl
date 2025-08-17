<{* Wrapper template for a full form (Strategy B) *}>
<form method="<{$method|escape}>" action="<{$action|escape}>" class="needs-validation" novalidate>
    <div class="row g-3">
        <{foreach item=f from=$fields}>
            <div class="<{xbb_col field=$f.name schema=$layout_schema default=12 md=6}>">
                <div class="mb-3">
                    <{if $f.label}><label class="form-label"><{$f.label|escape}></label><{/if}>
                    <{$f.html nofilter}>
                    <{if $f.help}>
                        <div class="form-text"><{$f.help|escape}></div><{/if}>
                    <{if $f.errors}>
                        <div class="invalid-feedback d-block">
                            <{foreach item=e from=$f.errors}><{$e|escape}> <{/foreach}>
                        </div>
                    <{/if}>
                </div>
            </div>
        <{/foreach}>
        <{$hidden|default:'' nofilter}>
        <div class="col-12">
            <button type="submit" class="btn btn-primary"><{$smarty.const._SUBMIT}></button>
        </div>
    </div>
</form>
