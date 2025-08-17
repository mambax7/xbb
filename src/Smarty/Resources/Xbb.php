<?php

declare(strict_types=1);

namespace Xbb\Smarty\Resources;

use Smarty_Internal_Template;

/**
 * Smarty custom resource "xbb:" that resolves templates with precedence:
 *   1) Theme override: themes/{active}/modules/xbb/templates/{tpl_name}
 *   2) Module override: modules/xbb/templates/{tpl_name}
 *   3) Library default: xoops_lib/local/xbb/templates/{tpl_name}
 */
final class Xbb
{
    /**
     * Locate the first existing file for given template name according to precedence order.
     */
    public static function resolvePath(string $tpl_name): ?string
    {
        // Normalize path separators
        $tpl_name = ltrim(str_replace(['\\', '..'], ['/', ''], $tpl_name), '/');

        // Theme override
        $theme = $GLOBALS['xoopsConfig']['theme_set'] ?? null;
        if ($theme) {
            $candidate = XOOPS_THEME_PATH . DIRECTORY_SEPARATOR . $theme . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . 'xbb' . DIRECTORY_SEPARATOR . 'templates' . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $tpl_name);
            if (is_file($candidate)) {
                return $candidate;
            }
        }
        // Module override
        $candidate = XOOPS_ROOT_PATH . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . 'xbb' . DIRECTORY_SEPARATOR . 'templates' . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $tpl_name);
        if (is_file($candidate)) {
            return $candidate;
        }
        // Library default
        $candidate = XOOPS_ROOT_PATH . DIRECTORY_SEPARATOR . 'xoops_lib' . DIRECTORY_SEPARATOR . 'local' . DIRECTORY_SEPARATOR . 'xbb' . DIRECTORY_SEPARATOR . 'templates' . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $tpl_name);
        if (is_file($candidate)) {
            return $candidate;
        }
        return null;
    }

    /**
     * Fetch the template source.
     * Signature for Smarty registerResource array[0].
     * @param string $tpl_name
     * @param string $tpl_source (by ref)
     * @param Smarty_Internal_Template $template
     * @return bool
     */
    public static function source(string $tpl_name, string &$tpl_source, Smarty_Internal_Template $template): bool
    {
        $path = self::resolvePath($tpl_name);
        if ($path && is_readable($path)) {
            $tpl_source = file_get_contents($path);
            return true;
        }
        $tpl_source = "";
        return false;
    }

    /**
     * Fetch timestamp of the template. Signature for registerResource array[1].
     */
    public static function timestamp(string $tpl_name, int &$tpl_timestamp, Smarty_Internal_Template $template): bool
    {
        $path = self::resolvePath($tpl_name);
        if ($path) {
            $tpl_timestamp = (int) @filemtime($path);
            return true;
        }
        $tpl_timestamp = time();
        return false;
    }

    /**
     * Template is secure? Signature for registerResource array[2].
     */
    public static function secure(string $tpl_name, Smarty_Internal_Template $template): bool
    {
        // Only allow loading from our three controlled roots
        return true;
    }

    /**
     * Trusted handler (unused). Signature for registerResource array[3].
     */
    public static function trusted(string $tpl_name, Smarty_Internal_Template $template): void
    {
        // no-op
    }
}
