<section id="<{$props.id|default:''}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row">
            <div class="col-md-6"><{$props.left_html|default:'Left content HTML' nofilter}></div>
            <div class="col-md-6"><{$props.right_html|default:'Right content HTML' nofilter}></div>
        </div>
    </div>
</section>
