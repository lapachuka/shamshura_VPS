<div class="inner">
    <div class="inner shadow">
        <!-- Banner Start -->
        <div id="subpage-banner" class="row">
            {if $node.data_map.image.has_content}
                <img src={$node.data_map.image.content.main_node.data_map.image.content[banner].full_path|ezroot("no")} alt="" />
            {/if}
        </div>
        <!-- Banner End -->
        <div class="clear"></div>
        <!-- Container Start -->
        <!-- Banners End -->
        <div class="container row">
            <!-- Two Third Column Start -->
            <div class="sixteen columns">
                <h2 class="heading">{$node.name|wash()}</h2>
                <div class="in-sec">
                    {attribute_view_gui attriubte=$node.data_map.description}
                </div>
                <div class="clear"></div>
            </div>
            <!-- Two Third Column End -->
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>