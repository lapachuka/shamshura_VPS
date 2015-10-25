{def $current_node = fetch( 'content', 'node', hash( 'node_id', $module_result.node_id ))
     $photo_description = false()
     $meta_description = false()
     $site_title = false
}


{if  eq($module_result.node_id, ezini('NodeSetting','RootNodeID','content.ini'))}
	{set $site_title  = concat('Головна сторінка'|i18n('main'),' :: Олексій Шамшура'|i18n('main'))}
{else}
	{set $site_title  = concat($current_node.name,' :: Олексій Шамшура'|i18n('main'))}

{/if}
<title>{$site_title}</title>
<meta name="keywords" content="" /> 

<meta name="document-state" content="Dynamic" />

{set $photo_description = 'Олексій Шамшура - Художник, скульптор, архітектор, дизайнер.'|i18n('main')}
{set $meta_description = concat($current_node.name, ' - ') }
{set $meta_description = concat($meta_description, $photo_description) }
<meta name="description" content='{$meta_description}' />

<meta charset="utf-8">