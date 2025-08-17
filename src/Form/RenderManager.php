<?php

declare(strict_types=1);

namespace Xbb\Form;

final class RenderManager
{
    private static ?RendererInterface $default = null;

    public static function setDefault(RendererInterface $renderer): void { self::$default = $renderer; }

    public static function render(\XoopsThemeForm $form): string
    {
        if (self::$default) {
            return self::$default->render($form);
        }
        if (method_exists($form, 'render')) {
            return $form->render();
        }
        return '';
    }
}
