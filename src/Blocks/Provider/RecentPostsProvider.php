<?php

declare(strict_types=1);

namespace Xbb\Blocks\Provider;

use Xbb\Blocks\DataProviderInterface;

final class RecentPostsProvider implements DataProviderInterface
{
    public function get(array $context = []): array
    {
        $limit  = isset($context['limit']) ? (int)$context['limit'] : 5;
        $items  = [];
        $module = xoops_getModuleByDirname('publisher');
        if ($module) {
            $handler = xoops_getModuleHandler('item', 'publisher');
            if ($handler) {
                $criteria = new \CriteriaCompo();
                $criteria->setSort('datesub');
                $criteria->setOrder('DESC');
                $criteria->setLimit($limit);
                $objects = $handler->getObjects($criteria, false, false);
                foreach ($objects as $row) {
                    $id      = (int)($row['itemid'] ?? $row['id'] ?? 0);
                    $title   = (string)($row['title'] ?? $row['subject'] ?? 'Untitled');
                    $date    = isset($row['datesub']) ? (int)$row['datesub'] : 0;
                    $excerpt = is_string($row['summary'] ?? null) ? $row['summary'] : '';
                    $url     = XOOPS_URL . '/modules/publisher/item.php?itemid=' . $id;
                    $items[] = ['id' => $id, 'title' => $title, 'url' => $url, 'excerpt' => strip_tags($excerpt), 'date' => $date, 'date_iso' => $date ? date('c', $date) : ''];
                }
            }
        }
        return ['recent_posts' => $items];
    }
}
