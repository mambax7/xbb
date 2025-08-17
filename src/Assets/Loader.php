<?php

declare(strict_types=1);

namespace Xbb\Assets;

final class Loader
{
    /** Enqueue Bootstrap 5 CSS/JS from CDN (optional). */
    public static function enqueueBootstrap(\xos_opal_Theme $theme, array $opts = []): void
    {
        $defaultCss = 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css';
        $defaultJs  = 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js';
        $cssOpt = isset($opts['css']) && is_string($opts['css']) ? $opts['css'] : $defaultCss;
        $jsOpt  = isset($opts['js']) && is_string($opts['js']) ? $opts['js'] : $defaultJs;
        $css    = self::safeOrDefault($cssOpt, $defaultCss);
        $js     = self::safeOrDefault($jsOpt, $defaultJs);
        $theme->addStylesheet($css);
        $theme->addScript($js);
    }

    /** Enqueue icon set based on 'bootstrap' | 'fontawesome'. */
    public static function enqueueIcons(\xos_opal_Theme $theme, string $iconSet): void
    {
        if ($iconSet === 'fontawesome') {
            $theme->addStylesheet('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css');
        } else {
            $theme->addStylesheet('https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css');
        }
    }

    /**
     * Return $url if it is considered safe for inclusion, otherwise $fallback.
     * Allowed: http/https, protocol-relative (//), or relative paths. Disallows javascript:, data:, and other schemes.
     */
    private static function safeOrDefault(string $url, string $fallback): string
    {
        $u = trim($url);
        if ($u === '') {
            return $fallback;
        }
        // Reject control characters
        if (preg_match('/[\x00-\x1F\x7F]/', $u)) {
            return $fallback;
        }
        // Protocol-relative URLs are allowed
        if (strpos($u, '//') === 0) {
            return $u;
        }
        // Relative URLs (no scheme) are allowed
        $parsed = parse_url($u);
        if ($parsed === false) {
            return $fallback;
        }
        if (!isset($parsed['scheme'])) {
            return $u;
        }
        // http/https allowed
        $scheme = strtolower((string)$parsed['scheme']);
        if ($scheme === 'http' || $scheme === 'https') {
            return $u;
        }
        // Otherwise fallback
        return $fallback;
    }
}
