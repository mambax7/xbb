# XOOPS Bootstrap Blocks (XBB)

XBB is a Composer library that provides Bootstrap 5 **blocks**, a **form rendering strategy**, and **data providers** for XOOPS.
It enables legacy modules to look modern with minimal effort and gives new modules a clean API for PHP/Smarty/HTML/CSS.

## Install

```bash
composer require mambax7/xbb:dev-main
```

> If using path repositories during development:
>
> ```json
> {
>   "repositories": [
>     {"type": "path", "url": "../xbb", "options": {"symlink": true}}
>   ]
> }
> ```

Then ensure the preload runs early (see `src/Preload/CoreBoot.php`). If you also install the optional XOOPS module found in `/module/xbb`,
you'll get a block, preferences, and an initial block gallery with live previews.
