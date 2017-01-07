%%include_language "templates/lang/pages.lng"%%


<!--#set var="nav_item" value="<!--nav_item-->##splitter##<li><a href="##page_link##">##item##</a></li>"-->
<!--#set var="nav_splitter" value="<!--nav_splitter-->"-->

<!--#set var="path_item" value="<!--path_item-->##splitter##<a href="##page_link##">##item##</a>"-->
##--<!--#set var="path_item_active" value="##splitter##<span class="active">##item##</span>"-->--##
<!--#set var="path_item_active" value="<!--path_item_active-->##setglobalvar @g_pages_path_s = splitter####splitter##"-->
<!--#set var="path_splitter" value="<!--path_splitter-->&nbsp;▹&nbsp; "-->

<!--#set var="sibl_item" value="<!--sibl_item-->##splitter##<a href="##page_link##">##item##</a>"-->
<!--#set var="sibl_item_active" value="<!--sibl_item_active-->##splitter##<span class="active">##item##</span>"-->
<!--#set var="sibl_splitter" value="<!--sibl_splitter-->"-->

<!--#set var="path" value="<!--path-->
	##setglobalvar @g_pages_path_1 = path##
"-->

<!--#set var="nav_bar" value="<!--nav_bar-->
	##setglobalvar @g_pages_nav = nav_bar##
"-->

<!--#set var="sibl_bar" value="<!--sibl_bar-->
	##setglobalvar @g_pages_sibl = sibl_bar##
"-->

<!--#set var="name" value="<!--name-->
	##--setglobalvar @g_pages_name = name--##
	##setglobalvar @g_pages_path = g_pages_path_1.'<span class="active">'.name.'</span>'##
"-->

<!--#set var="body" value="<!--body-->
	##body##
"-->

<!--#set var="print_version" value="<!--print_version-->
	<div id=print_version>
		<a href="##print_link##" target="_blank"><img src="_img/print.gif" align="absmiddle" border="0"></a>
		<a href="##print_link##" target="_blank">%%print_version%%</a>
	</div>
"-->

<!--pages.tpl-->
##--path--##
##--name--##
##--sibl_bar--##
##body##
##--nav_bar--##
##print_version##
