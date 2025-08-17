<{* CTA · Banner *}>
<{assign var=__bg value=$attrs.bg|default:'light'}>
<{assign var=__bgcls value=''}>
<{if $__bg=='light'}><{assign var=__bgcls value='bg-light'}><{/if}>
<{if $__bg=='dark'}><{assign var=__bgcls value='bg-dark text-light'}><{/if}>

<section id="<{$props.id|default:''|escape}>" class="py-4 <{$__bgcls}> <{$props.class|default:''}>">
    <div class="container d-flex align-items-center justify-content-between">
        <div class="me-3">
            <h2 class="h4 m-0"><{$props.title|default:'Ready to launch?'|escape}></h2>
            <div class="text-muted"><{$props.subtitle|default:'Start building your page with reusable blocks.'|escape}></div>
        </div>
        <a href="#" class="btn btn-primary"><{$props.button_text|default:'Start now'|escape}></a>
    </div>
</section>
