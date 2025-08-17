<?php

declare(strict_types=1);

namespace Xbb\Form;

final class Bootstrap5Renderer implements RendererInterface
{
    public function render(\XoopsThemeForm $form): string
    {
        $method = htmlspecialchars((string)$form->getMethod(), ENT_QUOTES);
        $action = htmlspecialchars((string)$form->getAction(), ENT_QUOTES);
        $extra  = trim((string)$form->getExtra());
        $out    = '<form class="needs-validation" novalidate method="' . $method . '" action="' . $action . '"';
        if ($extra !== '') {
            $out .= ' ' . $extra;
        }
        $out .= '>';
        foreach ($form->getElements() as $ele) {
            if ($ele->isHidden()) {
                $out .= $ele->render();
                continue;
            }
            [$label, $input, $help, $errorHtml] = $this->renderElement($ele);
            $out .= '<div class="mb-3">';
            if ($label !== '') {
                $out .= $label;
            }
            $out .= $input;
            if ($help !== '') {
                $out .= '<div class="form-text">' . $help . '</div>';
            }
            if ($errorHtml !== '') {
                $out .= $errorHtml;
            }
            $out .= '</div>';
        }
        $out .= '</form>';
        return $out;
    }

    private function renderElement($ele): array
    {
        $name    = method_exists($ele, 'getName') ? (string)$ele->getName() : '';
        $id      = $name !== '' ? $name : uniqid('xbb_', true);
        $caption = method_exists($ele, 'getCaption') ? (string)$ele->getCaption() : '';
        $label   = $caption !== '' ? '<label class="form-label" for="' . htmlspecialchars($id, ENT_QUOTES) . '">' . htmlspecialchars($caption) . '</label>' : '';
        if (method_exists($ele, 'setClass')) {
            $cls = method_exists($ele, 'getClass') ? (string)$ele->getClass() : '';
            if ($ele instanceof \XoopsFormSelect) {
                $ele->setClass(trim($cls . ' form-select'));
            } elseif ($ele instanceof \XoopsFormCheckBox || $ele instanceof \XoopsFormRadio) {
                // checkbox/radio usually render wrappers themselves
            } else {
                $ele->setClass(trim($cls . ' form-control'));
            }
        }
        $input     = method_exists($ele, 'render') ? (string)$ele->render() : '';
        $errors    = method_exists($ele, 'getErrors') ? (array)$ele->getErrors() : [];
        $errorHtml = $errors ? '<div class="invalid-feedback d-block">' . htmlspecialchars(implode(' ', $errors)) . '</div>' : '';
        $help      = method_exists($ele, 'getDescription') ? (string)$ele->getDescription() : '';
        return [$label, $input, $help, $errorHtml];
    }
}
