<?php

declare(strict_types=1);

namespace Xbb\Smarty\Prefilter;

use Smarty_Internal_Template;

/**
 * Smarty prefilter that rewrites includes that explicitly point to modules/xbb/templates
 * to instead use the custom xbb: resource, which resolves with precedence
 * (theme → module → library), and uses the library by default.
 *
 * Example:
 *   {include file="modules/xbb/templates/blocks/contact/contact_split.tpl"}
 * becomes
 *   {include file="xbb:blocks/contact/contact_split.tpl"}
 */
final class RewriteIncludes
{
    /**
     * Prefilter entry point called by Smarty.
     */
    public static function apply(string $tpl_source, Smarty_Internal_Template $template): string
    {
        // Handle both single and double quotes, and tolerate extra whitespace
        $pattern = '/(\{\s*include\s+[^}]*file\s*=\s*)([\"\'])modules\/xbb\/templates\/(.+?)\2/si';
        $replacer = function (array $m): string {
            $prefix = $m[1];
            $quote  = $m[2];
            $rel    = $m[3];
            // Normalize any accidental backslashes to forward slashes inside the template reference
            $rel = str_replace('\\\\', '/', $rel);
            return $prefix . $quote . 'xbb:' . $rel . $quote;
        };
        return (string) preg_replace_callback($pattern, $replacer, $tpl_source);
    }
}
