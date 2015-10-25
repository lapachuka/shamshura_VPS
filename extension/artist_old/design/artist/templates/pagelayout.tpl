<!DOCTYPE html>
<html lang="{$site.http_equiv.Content-language|wash}">
	<head>
		{include uri='design:page_head_script.tpl'}
		{include uri='design:page_head_style.tpl'}
	</head>
	<body>
		{include uri='design:page_header.tpl'}
		{$module_result.content}
		{include uri='design:page_footer.tpl'}
	</body>
</html>