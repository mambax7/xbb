<?php

declare(strict_types=1);

namespace Xbb\Form;

interface RendererInterface
{
    public function render(\XoopsThemeForm $form): string;
}
