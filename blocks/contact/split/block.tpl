<section class="container py-5">
    <div class="row g-4 align-items-stretch">
        <div class="col-lg-5">
            <div class="card h-100 shadow-sm">
                <div class="card-body">
                    <h2 class="h4 mb-1"><{$title|escape}></h2>
                    <p class="text-muted mb-4"><{$subtitle|escape}></p>
                    <ul class="list-unstyled small mb-4">
                        <li class="mb-2"><i class="bi bi-geo-alt me-2"></i><{$address|escape}></li>
                        <li class="mb-2"><i class="bi bi-telephone me-2"></i><{$phone|escape}></li>
                        <li class="mb-2"><i class="bi bi-envelope me-2"></i><{$emailPublic|escape}></li>
                    </ul>
                    <{if !empty($showMap)}>
                        <div class="ratio ratio-16x9 rounded overflow-hidden">
                            <iframe src="https://maps.google.com/?q=<{$address|escape:'url'}>&output=embed" loading="lazy"></iframe>
                        </div>
                    <{/if}>
                </div>
            </div>
        </div>

        <div class="col-lg-7">
            <div class="card h-100 shadow-sm">
                <div class="card-body">
                    <h3 class="h5 mb-3">Send us a message</h3>
                    <{if !empty($xbb_form_html)}>
                        <{$xbb_form_html nofilter}>
                    <{else}>
                        <form method="post" action="<{$xoops_url}>/modules/contact/index.php" class="needs-validation" novalidate>
                            <div class="row g-3">
                                <{if !empty($xbb_fields)}>
                                    <{foreach item=f from=$xbb_fields}>
                                        <{*                                                          <div class="<{xbb_col field=$f.name schema=$layout_schema default=12 md=6}>">*}>
                                        <{assign var=_col value=$layout_schema.layout.fields[$f.name].col|default:$layout_schema.layout.defaults.col|default:12}>
                                        <{assign var=_md  value=$layout_schema.layout.fields[$f.name].col_md|default:$layout_schema.layout.defaults.col_md|default:6}>
                                        <div class="col-<{$_col}> col-md-<{$_md}>">


                                            <div class="mb-3">
                                                <{if !empty($f.label)}><label class="form-label"><{$f.label|escape}></label><{/if}>
                                                <{$f.html nofilter}>
                                                <{if !empty($f.help)}>
                                                    <div class="form-text"><{$f.help|escape}></div><{/if}>
                                                <{if !empty($f.errors)}>
                                                    <div class="invalid-feedback d-block">
                                                        <{foreach item=e from=$f.errors}><{$e|escape}> <{/foreach}>
                                                    </div>
                                                <{/if}>
                                            </div>
                                        </div>
                                    <{/foreach}>
                                <{/if}>

                                <{$xbb_hidden|default:'' nofilter}>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary"><{$smarty.const._SUBMIT}></button>
                                </div>
                            </div>
                        </form>
                    <{/if}>
                </div>
            </div>
        </div>
    </div>
</section>
