{def $folder=false()
	 $images=false()

}
<!--BEGIN Content-->
<div class="wrapper">

<!--BEGIN Main Content-->
<article id="main" class="portfolio-page">
	<section id="portfolio-categories">
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
		<ul class="ul-portfolio-categories">
			<li class="selected"><a href="#" data-value="all">All</a></li>
			{foreach $node.data_map.images.content.relation_list as $rel}
				{set $folder = fetch("content", "node", hash("node_id", $rel.node_id))}
				{if eq($folder.class_identifier,'folder')}
					<li><a href="#">{$folder.name|wash()}</a></li>
				{/if}
			{/foreach}
		</ul>
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
	</section><!--END #portfolio-categories-->
	
	<section id="portfolio" class="three_col">
		<ul>
			{foreach $node.data_map.images.content.relation_list as $rel}
	   			{set $folder = fetch("content", "node", hash("node_id", $rel.node_id))
		   		 set $images = 
			   			fetch("content", "list", 
			   				hash('parent_node_id', $rel.node_id,
	                  			 'sort_by', array( 'published', false() ),
			                	 'class_filter_type',  'include',
			                	 'class_filter_array', array( 'image' )
	            		))
		   		}
		   		{foreach $images as $image}
		   			<li class="{$folder.name|downcase()}">
						<a href={$image.data_map.image.content[folio_big].full_path|ezroot} class="featured-image" data-rel="" rel="folio">
							<img src="{$image.data_map.image.content[folio_small].full_path|ezroot('no')}"/>
						</a>
					</li>
		   		{/foreach}
		  	{/foreach}
		</ul>
	</section>
	<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
</article>
<!--END Main Content-->
</div>
{undef $image}