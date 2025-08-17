<div class="card h-100 xbb-product-card">
    <img src="<{$product.image_url|default:''}>" class="card-img-top" alt="<{$product.name|default:'Product Name'}>">
    <div class="card-body">
        <h5 class="card-title"><{$product.name|default:'Product Name'}></h5>
        <p class="card-text"><{$product.summary|default:'Summary'}></p>
    </div>
    <div class="card-footer d-flex justify-content-between align-items-center">
        <span class="fw-bold fs-5 text-primary">$<{$product.price|default:'Price'}></span> <a href="#" class="btn btn-primary"><i class="bi bi-cart-plus"></i> Add to Cart</a>
    </div>
</div>
