<?php

declare(strict_types=1);

namespace Xbb\Blocks\Provider;

use Xbb\Blocks\DataProviderInterface;

final class TeamProfilesProvider implements DataProviderInterface
{
    public function get(array $context = []): array
    {
        return [
            'team' => [
                ['name' => 'Alice', 'role' => 'Lead', 'avatar' => XOOPS_URL . '/images/avatar/blank.gif'],
                ['name' => 'Bob', 'role' => 'Engineer', 'avatar' => XOOPS_URL . '/images/avatar/blank.gif'],
            ],
        ];
    }
}
