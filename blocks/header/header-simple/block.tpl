<{* Header · Simple Navbar *}>
<{assign var=brand value=$attrs.title|default:"Brand"}>
<nav class="navbar navbar-expand-lg navbar-light bg-light <{$props.class|default:''}>" id="<{$props.id|default:''|escape}>">
    <div class="container">
        <a class="navbar-brand" href="#"><{$brand|escape}></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#xbbNav" aria-controls="xbbNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="xbbNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Features</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
            </ul>
            <div class="d-flex"><a class="btn btn-sm btn-outline-secondary">Sign up</a></div>
        </div>
    </div>
</nav>
