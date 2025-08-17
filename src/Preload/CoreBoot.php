<?php

declare(strict_types=1);

namespace Xbb\Preload;

use Xbb\Form\RenderManager;
use Xbb\Form\Bootstrap5Renderer;
use Xbb\Smarty\Functions\XbbCol;
use Xbb\Theme\Tokens;
use Xbb\Smarty\Resources\Xbb as XbbResource;
use Xbb\Smarty\Prefilter\RewriteIncludes;

final class CoreBoot extends \XoopsPreloadItem
{
    public static function eventCoreBoot(): void
    {
        RenderManager::setDefault(new Bootstrap5Renderer());
        global $xoTheme;
        if (isset($xoTheme) && is_object($xoTheme) && isset($xoTheme->smarty)) {
            $smarty = $xoTheme->smarty;
            // Plugins
            $smarty->registerPlugin('function', 'xbb_col', [XbbCol::class, 'render']);
            $smarty->assign('xbb_tokens', Tokens::readActiveThemeTokens());

            // Register custom resource: xbb:
            // Use legacy array callbacks for broad Smarty compatibility in XOOPS context
            $smarty->registerResource('xbb', [
                [XbbResource::class, 'source'],
                [XbbResource::class, 'timestamp'],
                [XbbResource::class, 'secure'],
                [XbbResource::class, 'trusted'],
            ]);

            // Prefilter: rewrite hardcoded module template includes to use xbb:
            $smarty->registerFilter('pre', [RewriteIncludes::class, 'apply']);
        }
    }
}
