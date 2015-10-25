	
<!--BEGIN Content-->
<div class="wrapper">
	<!--BEGIN Main Content-->
	<article id="main" class="contact-page">
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
		
		<section id="contact-info">
			<h2>{$node.name|wash()}</h2>
			<p>{$node.data_map.short_description.content}</p>
			<ul class="ul-clean">
				<li class="li-title"><span>Телефон</span>{$node.data_map.phone_number.content}</li>
				<li class="li-title"><span>Адреса</span>{$node.data_map.address.content}</li>
				<li class="li-title li-clean"><span>Email</span><a href="#" class="li-email">{$node.data_map.email.content}</a></li>
			</ul>
		</section><!--END #contact-info-->
		
		<section id="contact-form">
			<div class="title-divider">
				<div class="left">
					<h4>Повідомленя</h4>
				</div>
				<div class="clearfix"></div><!--double line divider-->
				<div class="right">
					<div class="divider"></div>
				</div>
			</div>
			<form action="contact-form" class="main-form">
				<input type="text" name="name" id="name" placeholder="Ім'я" class="input-text" />
				<input type="text" name="email" id="email" placeholder="Email" class="input-text" />
				<input type="text" name="phone" id="subject" placeholder="Телефон" class="input-text" />
				<textarea name="message" id="message" cols="30" rows="10" class="textarea"></textarea>
				<div class="clearfix"></div><!--double line divider-->
				<input type="submit" value="Відправити" class="input-submit" />
			</form>
			{literal}
				<script type="text/javascript">
					//keep the submit button aligned to the textarea
					var textareaWidth = parseInt($(".textarea").css("width"));
					var submitWidth = parseInt($(".input-submit").css("width")) + 38;
					$(".input-submit").css("margin-left", textareaWidth - submitWidth + "px")
				</script>
			{/literal}
		</section><!--END #contact-form-->
		<div class="divider"></div><div class="clearfix"></div><!--double line divider-->
	</article>
	<!--END Main Content-->
</div>
<!--END Content-->