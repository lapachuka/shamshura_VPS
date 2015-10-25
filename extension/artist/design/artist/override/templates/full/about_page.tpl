<!--BEGIN Content-->
<div class="wrapper">

	<!--BEGIN Main Content-->
	<article id="main" class="about-page">
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
		
		<section id="who-is">
			<h2>{$node.name|wash()}</h2>
			
			<img src={$node.data_map.image.content.main_node.data_map.image.content[about].full_path|ezroot} alt="John Doe" class="alignright" />
			
			{attribute_view_gui attribute=$node.data_map.short_description}
			<br />
		</section><!--END #who-is-->
		
		{*<section id="some-testimonial">
			<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
			<blockquote>
			“Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vesti bulum id ligula porta felis euismod semper. Nulla vitae elit lib ero, a pharetra augue. Maecenas faucibus mollis interdum.”
			</blockquote>
			<span class="quoteauthor">Michelangelo, Lorem Ipsum Magazine</span>
			<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
			<br />
		</section><!--END #some-testimonial-->*}
		{attribute_view_gui attribute=$node.data_map.description}	
		<section id="get-in-touch">
			<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
			
			<a href={"/kontakti"|ezurl()} class="bigbutton getintouch">Зв'язатись</a>
			<h3>Зв'яжіться зі мною</h3>
			<p></p>
		</section><!--END #get-in-touch-->
		
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
	</article>
	<!--END Main Content-->
</div>
<!--END Content-->