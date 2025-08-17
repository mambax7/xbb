<?php

declare(strict_types=1);

namespace Xbb\Blocks\Provider;

use Xbb\Blocks\DataProviderInterface;

final class CurrentUserContactProvider implements DataProviderInterface
{
    public function get(array $context = []): array
    {
        global $xoopsUser;
        if (!is_object($xoopsUser)) {
            return [];
        }
        return [
            'contact_name' => $xoopsUser->getVar('name') ?: $xoopsUser->uname(),
            'contact_mail' => $xoopsUser->email(),
        ];
    }
}
