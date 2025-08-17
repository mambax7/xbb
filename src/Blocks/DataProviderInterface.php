<?php

declare(strict_types=1);

namespace Xbb\Blocks;

interface DataProviderInterface
{
    public function get(array $context = []): array;
}
