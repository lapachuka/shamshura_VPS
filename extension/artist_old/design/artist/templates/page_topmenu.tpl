{def $menu_item = false()
     $main_node = fetch( 'content', 'node', hash( 'node_id', ezini('NodeSetting','RootNodeID','content.ini') ) )
}

<ul class="sf-menu">
    <li {if eq( $main_node.node_id, $module_result.node_id )}class="current-menu-item"{/if}><a href={"/"|ezurl()}>Головна</a></li>
    {foreach $main_node.data_map.main_menu.content.relation_list as $rel}
        {set $menu_item = fetch(content, node, hash(node_id, $rel.node_id))}
        <li 
            {if eq( $menu_item.node_id, $module_result.node_id )}
                class="current-menu-item"
            {/if}
        >
            <a href={$menu_item.url_alias|ezurl()}>{$menu_item.name|wash()}</a>
        </li>               
    {/foreach}
</ul>
