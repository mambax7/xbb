<?php

declare(strict_types=1);

namespace Xbb\Blocks\Provider;

use Xbb\Blocks\DataProviderInterface;

final class MockBlogGridProvider implements DataProviderInterface
{
    public function get(array $context = []): array
    {
        $posts = [];
        $categories = ['Technology', 'Design', 'Development', 'Business'];
        $authors = ['Alice Johnson', 'Bob Smith', 'Carol White', 'David Brown'];

        for ($i = 1; $i <= 6; $i++) {
            $posts[] = [
                'url' => XOOPS_URL . "/sample-post-{$i}",
                'image_url' => "https://picsum.photos/400/250?random={$i}",
                'title' => "Engaging Blog Post Title {$i}",
                'category_url' => XOOPS_URL . "/category/" . strtolower($categories[$i % 4]),
                'category_name' => $categories[$i % 4],
                'excerpt' => "This is a compelling excerpt that gives readers a preview of the full article content. It's designed to encourage clicks and engagement.",
                'author_url' => XOOPS_URL . "/author/" . strtolower(str_replace(' ', '-', $authors[$i % 4])),
                'author_name' => $authors[$i % 4],
                'date' => date('M j, Y', strtotime("-{$i} days"))
            ];
        }

        return ['posts' => $posts];
    }
}
