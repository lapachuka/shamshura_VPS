{def $blog_items = fetch("content", "list", 
		   				hash('parent_node_id', $node.node_id,
                  			 'sort_by', array( 'published', false() ),
		                	 'class_filter_type',  'include',
		                	 'class_filter_array', array( 'blog_item' )
            		))
}	
<!--BEGIN Content-->
<div class="wrapper">
	<!--BEGIN Main Content-->
		<article id="main" class="portfolio-page">
			{foreach $blog_items as $blog_item}

				<section class="post">
					<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
					<div class="post-date">
						<strong>{$blog_item.object.modified|datetime( 'custom', '%d' )}</strong>
						<small>{$blog_item.object.modified|datetime( 'custom', '%M' )}</small>
					</div>
					<a href="blog_post.html"><h2 class="post-title">{$blog_item.name|wash()}</h2></a>
					<div class="clearfix"></div>
					<div class="post-info">
						
					</div>
					<a href="blog_post.html" class="featured-image"><img src={"demo/featured.png"|ezimage()} alt="The Creation of Adam"/></a>
					<br /><br />
					{attribute_view_gui attribute=$blog_item.data_map.short_description}
					{*<span class="post-tags">Tags: <a href="#">Bibendum</a>, <a href="#">Sem</a>, <a href="#">Ultricies</a>, <a href="#">Condimentum</a></span>*}
					<a href="{$blog_item.url_alias|ezurl('no')}" class="button">Детальніше</a>
				</section>
			{/foreach}
			<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
			{if gt($blog_items|count(),5)}
			<div class="nav-prev"><a href="#">&larr; Previous Page</a></div>
			<div class="nav-next"><a href="#">Next Page &rarr;</a></div>
			{/if}
		</article>
		<!--END Main Content-->
</div>