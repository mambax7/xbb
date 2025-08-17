<div class="container my-5">
    <div class="row">
        <div class="col-md-8">
            <h2>Main Content Title</h2>
            <p>This is the main content area, which is wider to accommodate articles or detailed information.</p>
            <{$xoops_contents|default:'Content 1'}>
        </div>
        <div class="col-md-4">
            <h4>Sidebar</h4>
            <p>This is the sidebar, which is narrower and can hold related links, ads, or blocks.</p>
            <{if !empty($xoops_rblocks)}>
                <{foreach item=block from=$xoops_rblocks}>
                    <div class="mb-4">
                        <{if $block.title}><h5><{$block.title}></h5><{/if}>
                        <{$block.content}>
                    </div>
                <{/foreach}>
            <{/if}>
        </div>
    </div>
</div>
