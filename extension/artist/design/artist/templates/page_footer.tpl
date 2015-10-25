
    {def $menu_item = false()
     $main_node = fetch( 'content', 'node', hash( 'node_id', ezini('NodeSetting','RootNodeID','content.ini') ) )
}

    <div class="clearfix"></div>
    
    <!--BEGIN Footer-->
    <footer id="#footer" class="widgets-field">
        <div class="footer-pattern">
        <div class="wrapper">
        

        <section class="one_fourth">
            <ul class="menu_footer">
            <li><a href={"/"|ezurl()}>Головна</a></li>
            {foreach $main_node.data_map.main_menu.content.relation_list as $rel}
                {set $menu_item = fetch(content, node, hash(node_id, $rel.node_id))}
                <li> 
                    <a href={$menu_item.url_alias|ezurl()}>{$menu_item.name|wash()}</a>
                </li>               
            {/foreach}
                
                
            </ul>
        </section>
       

                
        <div class="footer-divider"></div>
        <div class="footer-divider"></div>
        
        <section id="copyright">
            &copy; Сайт Олексія Шамшури. Всі права захищенні. Сайт розроблений ... .
        </section>

        </div>
        </div>
    </footer>
    <!--END Footer-->
    
    <!--BEGIN Footer Effects-->
    <div class="footer-gradient"></div>
    <div class="footer-pattern"></div>
    <!--END Footer Effects-->