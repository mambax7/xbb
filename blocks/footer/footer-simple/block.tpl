<footer id="<{$props.id|default:''|escape}>" class="py-4 border-top <{$props.class|default:''}>">
    <div class="container d-flex flex-wrap justify-content-between align-items-center">
    <span class="text-muted small">&copy;
<{*        <{php}>echo date('Y');<{/php}> *}>
        <{$props.title|default:'Your Company'|escape}></span>
        <ul class="nav">
            <li class="nav-item"><a class="nav-link px-2 text-muted" href="#">Home</a></li>
            <li class="nav-item"><a class="nav-link px-2 text-muted" href="#">About</a></li>
            <li class="nav-item"><a class="nav-link px-2 text-muted" href="#">Contact</a></li>
        </ul>
    </div>
</footer>
