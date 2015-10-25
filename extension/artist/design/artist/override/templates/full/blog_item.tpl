<div class="wrapper">
<!--BEGIN Main Content-->
<article id="main" class="portfolio-page">
	<!--BEGIN Blog Post-->
	<section class="post">
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
		<div class="post-date">
			<strong>{$node.object.modified|datetime( 'custom', '%d' )}</strong>
			<small>{$node.object.modified|datetime( 'custom', '%M' )}</small>
		</div>
		<a href="blog_post.html"><h2 class="post-title">The Creation of Adam</h2></a>
		<div class="clearfix"></div>
		<div class="post-info">
			
		</div>
		<a href={"demo/portfolio_full.png"|ezimage()} class="featured-image" data-rel="prettyPhoto" title="Masterpiece of Renaissance"><img src={"demo/featured.png"|ezimage()} alt="The Creation of Adam"/></a>
		<br /><br />
		{attribute_view_gui attribute=$node.data_map.short_description}
		<br /><br />
		{attribute_view_gui attribute=$node.data_map.description}
		
		{*<span class="post-tags">Tags: <a href="#">Bibendum</a>, <a href="#">Sem</a>, <a href="#">Ultricies</a>, <a href="#">Condimentum</a></span>*}
	</section>
	<!--END Blog Post-->
	
	<section id="post-comments">
		<div class="title-divider">
			
			<div class="right">
				<div class="divider"></div>
			</div>
		</div>
		
		
	</section>
</article>
</div>