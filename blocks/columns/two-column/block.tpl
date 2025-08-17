<div class="container my-5">
    <div class="row">
        <div class="col-md-6">
            <h4>Column 1</h4>
            <p>This is the content for the first column. It will take up half the width on medium screens and larger, and stack on mobile.</p>
            <{if !empty($xoops_lblocks)}>
                <{foreach item=block from=$xoops_lblocks}>
                    <{$block.content}>
                <{/foreach}>
            <{/if}>
        </div>
        <div class="col-md-6">
            <h4>Column 2</h4>
            <p>This is the content for the second column. It will also take up half the width on medium screens and larger.</p>
        </div>
    </div>
</div>
