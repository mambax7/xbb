<div class="container py-3">
    <div class="fw-bold alert alert-info">Block: <{$props.title|default:'Block'}></div>

    <div class="row justify-content-center">
        <div class="col-md-4 col-sm-6 col-10"> <!-- adjust width here -->
            <div class="card border-0 shadow-sm text-center">
                <img src="<{$props.photo_url|default:'https://i.pravatar.cc/100?img=4'}>" class="card-img-top" alt="<{$props.name|escape}>">
                <div class="card-body">
                    <h5 class="card-title mb-0"><{$props.name|default:'Jane Doe'|escape}></h5>
                    <div class="card-text text-muted"><{$props.role|default:'Team props'|escape}></div>
                </div>
            </div>
        </div>
    </div>
</div>
