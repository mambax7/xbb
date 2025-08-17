<section class="container py-5">
    <div class="row g-4">
        <div class="col-lg-8 mx-auto">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h2 class="h4 mb-1"><{$title|escape}></h2>
                    <p class="text-muted mb-4"><{$subtitle|escape}></p>
                    <form method="post" action="<{$xoops_url}>/modules/contact/index.php" class="needs-validation" novalidate>
                        <div class="row g-3">
                            <{if !empty($xbb_fields)}>
                                <{foreach item=f from=$xbb_fields}>
                                    <div class="<{xbb_col field=$f.name schema=$layout_schema default=12 md=6}>">
                                        <div class="form-floating">
                                            <{$f.html nofilter}>
                                            <label><{$f.label|escape}></label>
                                        </div>
                                        <{if !empty($f.help)}>
                                            <div class="form-text mt-1"><{$f.help|escape}></div><{/if}>
                                    </div>
                                <{/foreach}>
                            <{/if}>
                            <{$xbb_hidden|default:'' nofilter}>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary"><{$smarty.const._SUBMIT}></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
