<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''}>">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center">
                <h2 class="h4 mb-3"><{$props.title|default:'Subscribe to our newsletter'|escape}></h2>
                <form method="post" action="<{$props.action|default:'#'|escape}>" class="d-flex gap-2">
                    <input type="email" class="form-control" name="email" placeholder="Email address">
                    <button class="btn btn-primary" type="submit">Subscribe</button>
                </form>
            </div>
        </div>
    </div>
</section>
