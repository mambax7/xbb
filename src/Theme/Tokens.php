<?php

declare(strict_types=1);

namespace Xbb\Theme;

final class Tokens
{
    public static function readActiveThemeTokens(): array
    {
        if (!defined('XOOPS_ROOT_PATH') || !defined('XOOPS_THEME')) {
            return [];
        }
        $path = rtrim(XOOPS_ROOT_PATH, '/') . '/themes/' . XOOPS_THEME . '/theme.json';
        if (!is_readable($path)) {
            return [];
        }
        $data = json_decode(file_get_contents($path), true);
        return is_array($data) ? $data : [];
    }
}
