%%include_language "templates/lang/pages.lng"%%

<!--#set var="nav_item" value="##splitter##<nobr><a class="nav_item" href="##page_link##">##item##</a></nobr>"-->
<!--#set var="nav_splitter" value=" &nbsp;|&nbsp; "-->

<!--#set var="path_item" value="##splitter##<nobr><a class="page_header" href="##page_link##">##item##</a></nobr>"-->
<!--#set var="path_item_active" value="##splitter##<nobr><a class="page_header" href="##page_link##">##item##</a></nobr>"-->
<!--#set var="path_splitter" value=" &nbsp;/&nbsp; "-->

<!--#set var="sibl_item" value="##splitter##<nobr><a class="page_header" href="##page_link##">##item##</a></nobr>"-->
<!--#set var="sibl_item_active" value="##splitter##<nobr><b>##item##</b></nobr>"-->
<!--#set var="sibl_splitter" value=" &nbsp;|&nbsp; "-->

<!--#set var="path" value="
##setglobalvar @g_pages_path = path##
<div class="pages_path">
	<h2>##path##</h2>
</div>
"-->

<!--#set var="nav_bar" value="
<div class="pages_nav_bar">
	##nav_bar##
</div>
"-->

<!--#set var="sibl_bar" value="
<div class="pages_sibl_bar">
	##sibl_bar##
</div>
"-->

<!--#set var="name" value="
<div class="pages_name">
	<h1>##name##</h1>
</div>
"-->

<!--#set var="body" value="
##body##
"-->

<!--#set var="print_version" value="
<a href="##print_link##" target="_blank" class="pages_print_version"><img src="_img/print.gif" align="absmiddle">%%print_version%%</a>
"-->


##path##
##--name--##
##sibl_bar##
##nav_bar##
##body##
##print_version##
