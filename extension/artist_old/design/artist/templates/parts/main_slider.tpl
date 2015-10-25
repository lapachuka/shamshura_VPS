{def $image=false()}
<!--BEGIN Slider-->
	<section id="slider">
		<div id="nivo-slider">
			{foreach $node.data_map.main_slider.content.relation_list as $rel}
		   		{set $image = fetch("content", "node", hash("node_id", $rel.node_id))}
				<img src="{$image.data_map.image.content[main_slider].full_path|ezroot('no')}" alt="The Last Judgment" title="{$image.name|wash()}" />
		  	{/foreach}
		</div>
	</section>
<!--END Slider-->

{undef $image}