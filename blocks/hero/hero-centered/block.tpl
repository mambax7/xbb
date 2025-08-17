<{* Hero · Centered *}>
<{assign var=__bg value=$attrs.bg|default:''}>
<{assign var=__bgcls value=''}>
<{if $__bg=='light'}><{assign var=__bgcls value='bg-light'}><{/if}>
<{if $__bg=='dark'}><{assign var=__bgcls value='bg-dark text-light'}><{/if}>
<{if $__bg=='muted'}><{assign var=__bgcls value='bg-body-secondary'}><{/if}>

<{assign var=__align value=$attrs.align|default:''}>
<{assign var=__aligncls value=''}>
<{if $__align=='center'}><{assign var=__aligncls value='text-center'}><{/if}>
<{if $__align=='end'}><{assign var=__aligncls value='text-end'}><{/if}>

<{assign var=__variant value=$attrs.variant|default:'default'}>
<{assign var=__varbtn value='btn-outline-secondary'}>
<{if $__variant=='primary'}><{assign var=__varbtn value='btn-primary'}><{/if}>
<{if $__variant=='secondary'}><{assign var=__varbtn value='btn-secondary'}><{/if}>
<{if $__variant=='contrast'}><{assign var=__varbtn value='btn-light'}><{/if}>

<section id="<{$props.id|default:''|escape}>" class="py-5 <{$__bgcls}> <{$props.class|default:''}>">
    <div class="container <{$__aligncls}>">
        <h1 class="display-5 fw-bold"><{$props.title|default:'Build with XOOPS Bootstrap Blocks'|escape}></h1>
        <p class="lead mb-4"><{$props.subtitle|default:'Composable Bootstrap 5 sections for fast page building.'|escape}></p>
        <div>
            <a href="#" class="btn <{$__varbtn}> me-2">Get started</a> <a href="#" class="btn btn-outline-secondary">Learn more</a>
        </div>
    </div>
</section>
