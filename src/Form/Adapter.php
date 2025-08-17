<?php

declare(strict_types=1);

namespace Xbb\Form;

final class Adapter
{
    public static function toArray(\XoopsThemeForm $form): array
    {
        $fields = [];
        $hidden = [];
        foreach ($form->getElements() as $ele) {
            if ($ele->isHidden()) {
                $hidden[] = $ele->render();
                continue;
            }
            $fields[] = [
                'name'   => method_exists($ele, 'getName') ? (string)$ele->getName() : '',
                'label'  => method_exists($ele, 'getCaption') ? (string)$ele->getCaption() : '',
                'help'   => method_exists($ele, 'getDescription') ? (string)$ele->getDescription() : '',
                'html'   => method_exists($ele, 'render') ? (string)$ele->render() : '',
                'errors' => method_exists($ele, 'getErrors') ? (array)$ele->getErrors() : [],
            ];
        }
        return ['fields' => $fields, 'hidden' => implode('', $hidden)];
    }
}
