# XBB Naming Conventions

This document defines canonical naming rules for XBB blocks, templates, and variables. Apply these rules to all new code and when normalizing existing assets.

1. Directories and file slugs
   - Use kebab-case for all block and variation directory names.
     - Examples: `recent-grid`, `three-column`, `form-with-details`
   - Template files use lowercase with hyphens where needed.
     - Example: `block.tpl`, `toc_sidebar.tpl` (exception: Smarty partials may retain underscores when part of a wider XOOPS convention).
   - Manifests (`xbb-block.json`) must have `name` in the form `xbb/<category>/<slug>` where `<slug>` is kebab-case and matches the directory name.

2. Smarty variables
   - Use snake_case for template variables and assigned data keys (e.g., `recent_posts`, `author_name`).
   - Prefer clear, explicit names and provide defaults in templates via `|default`.

3. PHP classes and namespaces
   - Follow PSR-4 and PSR-12. Class names in StudlyCase, methods in camelCase.
   - Providers implement `Xbb\Blocks\DataProviderInterface` and return arrays keyed by snake_case for template consumption.

4. Asset paths
   - Compiled CSS should live under `xoops_lib/local/xbb/assets/css/blocks/<slug>.css`.
   - Do not point `style` in manifests to SCSS or non-existent files. If no compiled CSS yet, omit the `style` field.

5. Template includes
   - Prefer canonical `modules/xbb/templates/...` include paths or use the `xbb:` smarty resource when available.

6. Examples
   - Directory: `xoops_lib/local/xbb/blocks/posts/recent-grid/`
   - Manifest name: `xbb/posts/recent-grid`
   - Template variables: `recent_posts`, each with `title`, `url`, `date_iso`.

These rules support consistency across the repo and align with the improvement checklist in `docs/tasks.md`. Normalization should proceed incrementally to avoid breaking paths; update manifests and references whenever directories are renamed.
