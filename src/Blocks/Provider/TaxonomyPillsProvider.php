<?php

declare(strict_types=1);

namespace Xbb\Blocks\Provider;

use Xbb\Blocks\DataProviderInterface;

final class TaxonomyPillsProvider implements DataProviderInterface
{
    public function get(array $context = []): array
    {
        return [
            'pills' => [
                ['label' => 'News', 'url' => '#'],
                ['label' => 'Updates', 'url' => '#'],
                ['label' => 'Events', 'url' => '#'],
            ],
        ];
    }
}
