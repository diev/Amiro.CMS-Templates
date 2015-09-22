%%include_language "templates/lang/pages.lng"%%

<!--#set var="nav_item" value="##splitter##<a class="h3" href="##page_link##">##item##</a>"-->
<!--#set var="nav_splitter" value=""-->

<!--#set var="path_item" value="##setglobalvar @g_pages_back = '<a class="h3" href="'.page_link.'">'.item.'</a>'####splitter##<a href="##page_link##">##item##</a>"-->
##--<!--#set var="path_item_active" value="##splitter##<span class="active">##item##</span>"-->--##
##--<!--#set var="path_item_active" value="##setglobalvar @g_pages_path_s = splitter####splitter##"-->--##
<!--#set var="path_item_active" value="##setglobalvar @g_pages_path_s = splitter##"-->
<!--#set var="path_splitter" value="&nbsp;&rsaquo;&nbsp; "-->

<!--#set var="sibl_item" value="##splitter##<a href="##page_link##">##item##</a>"-->
<!--#set var="sibl_item_active" value="##splitter##<span class="active">##item##</span>"-->
<!--#set var="sibl_splitter" value=""-->

<!--#set var="path" value="##setglobalvar @g_pages_path_1 = path##"-->

<!--#set var="nav_bar" value="##setglobalvar @g_pages_nav = nav_bar##"-->

<!--#set var="sibl_bar" value="##setglobalvar @g_pages_sibl = sibl_bar##"-->

##--<!--#set var="name" value="##setglobalvar @g_pages_path = g_pages_path_1.'<span class="active">'.name.'</span>'##"-->--##
<!--#set var="name" value="##setglobalvar @g_pages_path = g_pages_path_1##"-->

<!--#set var="body" value="##body##"-->

<!--#set var="print_version" value="
##setglobalvar @g_print_version = '<span id=print_version><a href="'.print_link.'" target="_blank"><img src="_img/print.gif" align="absmiddle" border="0" alt="Версия для печати" title="Версия для печати"></a></span>'##
##--<div id=print_version>
    <a href="##print_link##" target="_blank"><img src="_img/print.gif" align="absmiddle" border="0"></a>
    <a href="##print_link##" target="_blank">%%print_version%%</a>
</div>--##
"-->

##--path--##
##--name--##
##--sibl_bar--##
##body##
##--nav_bar--##
##--print_version--##
