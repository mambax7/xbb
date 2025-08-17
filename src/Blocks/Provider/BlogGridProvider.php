<?php

declare(strict_types=1);

namespace Xbb\Blocks\Provider;

use Xbb\Blocks\DataProviderInterface;

final class BlogGridProvider implements DataProviderInterface
{
    public function get(array $context = []): array
    {
        $limit = isset($context['limit']) ? (int)$context['limit'] : 6;
        $posts = [];

        // Try multiple content sources in order of preference
        $posts = $this->getFromPublisher($limit)
            ?: $this->getFromNews($limit)
                ?: $this->getFromArticles($limit)
                    ?: $this->getMockData($limit);

        return ['posts' => $posts];
    }

    private function getFromPublisher(int $limit): array
    {
        $posts = [];
        $module = xoops_getModuleByDirname('publisher');

        if (!$module) {
            return [];
        }

        $handler = xoops_getModuleHandler('item', 'publisher');
        if (!$handler) {
            return [];
        }

        $criteria = new \CriteriaCompo();
        $criteria->add(new \Criteria('status', 2)); // Published status
        $criteria->setSort('datesub');
        $criteria->setOrder('DESC');
        $criteria->setLimit($limit);

        $objects = $handler->getObjects($criteria, false, false);

        foreach ($objects as $row) {
            $posts[] = $this->mapPublisherPost($row);
        }

        return $posts;
    }

    private function mapPublisherPost(array $row): array
    {
        $id = (int)($row['itemid'] ?? 0);
        $categoryId = (int)($row['categoryid'] ?? 0);

        return [
            'url' => XOOPS_URL . '/modules/publisher/item.php?itemid=' . $id,
            'image_url' => $this->getPostImage($row),
            'title' => (string)($row['title'] ?? 'Untitled'),
            'category_url' => XOOPS_URL . '/modules/publisher/category.php?categoryid=' . $categoryId,
            'category_name' => $this->getCategoryName($categoryId),
            'excerpt' => $this->createExcerpt($row['summary'] ?? $row['body'] ?? ''),
            'author_url' => XOOPS_URL . '/userinfo.php?uid=' . ($row['uid'] ?? 0),
            'author_name' => $this->getAuthorName($row['uid'] ?? 0),
            'date' => $this->formatDate($row['datesub'] ?? time())
        ];
    }

    private function getPostImage(array $row): string
    {
        // Logic to extract image from content or use default
        $defaultImage = XOOPS_URL . '/images/default-post.jpg';

        if (!empty($row['image'])) {
            return $row['image'];
        }

        // Extract first image from body content
        if (!empty($row['body'])) {
            preg_match('/<img[^>]+src=["\']([^"\']+)["\'][^>]*>/i', $row['body'], $matches);
            if (!empty($matches[1])) {
                return $matches[1];
            }
        }

        return $defaultImage;
    }

    private function getMockData(int $limit): array
    {
        $posts = [];
        for ($i = 1; $i <= $limit; $i++) {
            $posts[] = [
                'url' => '#',
                'image_url' => "https://picsum.photos/400/250?random={$i}",
                'title' => "Sample Blog Post {$i}",
                'category_url' => '#',
                'category_name' => 'Technology',
                'excerpt' => 'This is a sample excerpt for blog post ' . $i . '. It demonstrates how the grid layout will look with actual content.',
                'author_url' => '#',
                'author_name' => 'John Doe',
                'date' => date('M j, Y', strtotime("-{$i} days"))
            ];
        }
        return $posts;
    }

    // Additional helper methods...
}
