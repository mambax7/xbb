<?php

declare(strict_types=1);

namespace Xbb\Smarty\Functions;

final class XbbCol
{
    public static function render($params, \Smarty_Internal_Template $tpl): string
    {
        $field    = $params['field'] ?? null;
        $schema   = $params['schema'] ?? $tpl->getTemplateVars('layout_schema');
        $map      = ['sm' => 'col_sm', 'md' => 'col_md', 'lg' => 'col_lg', 'xl' => 'col_xl', 'xxl' => 'col_xxl'];
        $defaults = ['col' => 12, 'col_sm' => null, 'col_md' => null, 'col_lg' => null, 'col_xl' => null, 'col_xxl' => null];
        $sDef     = $defaults;
        $sFld     = $defaults;
        if (is_array($schema) && isset($schema['layout'])) {
            $sDef = array_merge($sDef, $schema['layout']['defaults'] ?? []);
            if ($field && isset($schema['layout']['fields'][$field])) {
                $sFld = array_merge($sFld, $schema['layout']['fields'][$field]);
            }
        }
        $classes   = [];
        $base      = (int)($params['default'] ?? $sFld['col'] ?? $sDef['col'] ?? 12);
        $classes[] = "col-$base";
        foreach ($map as $k => $sk) {
            $v = $params[$k] ?? $sFld[$sk] ?? $sDef[$sk] ?? null;
            if ($v !== null) {
                $classes[] = "col-{$k}-{$v}";
            }
        }
        return implode(' ', $classes);
    }
}
