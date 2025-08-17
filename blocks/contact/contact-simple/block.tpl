<section id="<{$props.id|default:''|escape}>" class="py-5 <{$props.class|default:''|escape}>">
    <div class="container">
        <h2 class="h4 mb-4"><{$props.title|default:'Contact us'|escape}></h2>
        <form method="post" action="<{$props.action|default:'#'|escape}>">
            <div class="row g-3">
                <div class="col-md-6"><input class="form-control" type="text" name="name" placeholder="Your name"></div>
                <div class="col-md-6"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                <div class="col-12"><textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea></div>
                <div class="col-12">
                    <button class="btn btn-primary" type="submit">Send</button>
                </div>
            </div>
        </form>
    </div>
</section>
