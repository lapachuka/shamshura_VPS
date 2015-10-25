<!DOCTYPE html>
<html lang="{$site.http_equiv.Content-language|wash}">
	<head>
		{include uri='design:page_head.tpl'}
		{include uri='design:page_head_script.tpl'}
		{include uri='design:page_head_style.tpl'}
		<link href={"favicon.ico"|ezimage()} rel="shortcut icon" type="image/x-icon">
	</head>
	<body>
		{include uri='design:page_header.tpl'}
		{$module_result.content}
		{include uri='design:page_footer.tpl'}
	</body>
</html>