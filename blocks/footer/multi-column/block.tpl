<footer class="xbb-footer-multi bg-dark text-white pt-5 pb-4">
    <div class="container text-center text-md-start">
        <div class="row">
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                <h6 class="text-uppercase fw-bold mb-4"><{$xoops_sitename|default:'Site Name'}></h6>
                <p><{$xoops_slogan|default:'Living La Vida Loca'}></p>
            </div>

            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                <h6 class="text-uppercase fw-bold mb-4">Site Links</h6>
                <p><a href="<{$xoops_url}>/modules/news/" class="text-reset">News</a></p>
                <p><a href="<{$xoops_url}>/modules/newbb/" class="text-reset">Forums</a></p>
                <p><a href="<{$xoops_url}>/modules/publisher/" class="text-reset">Articles</a></p>
            </div>

            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                <p><i class="bi bi-geo-alt-fill me-3"></i> Anytown, USA 12345</p>
                <p><i class="bi bi-envelope-fill me-3"></i> info@example.com</p>
                <p><i class="bi bi-telephone-fill me-3"></i> + 01 234 567 88</p>
            </div>
        </div>
    </div>
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © <{$smarty.now|date_format:"%Y"}> Copyright: <a class="text-reset fw-bold" href="<{$xoops_url}>"><{$xoops_sitename|default:'Site Name'}></a>
        <div class="xoops-footer-content"><{$xoops_footer|default:'Multi-Column Footer'}></div>
    </div>
    <div class="col-md-6"><{$copyright|default:'Copyright'}></div>
    <div class="col-md-6 text-end">
        <a href="#">Privacy</a> | <a href="#">Terms</a>
    </div>
</footer>
