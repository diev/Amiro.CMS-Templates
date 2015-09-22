##--
Шаблон кофигурации "Новости".
Этот шаблон содержит общие сеты для всех модулей конфигурации "Новости".
Сеты могут быть переопределены в шаблоне конкретного модуля.
Чтобы избежать излишнего переопределения сетов в шаблоне модуля используйте переменную
##AMI_MOD_ID## для формирования имен классов CSS или в условных конструкциях.
Пример: class="##AMI_MOD_ID##_item". Имя класса будет содержать название модуля.

Template of configuration "News".
This template contains common sets for each module of configuration "News".
Settings can be overridden in the template of the module.
To avoid unnecessary overrides of sets in the template module, use the variable
##AMI_MOD_ID## to form the CSS class name or use the conditions ##IF()##.
Example: class = "##AMI_MOD_ID##_item". The class name will contain the name of the module.
--##

%%include_language "templates/lang/hyper/ami_multifeeds_news.lng"%%

<!--#set var="item_ftime;browse_item_ftime;sticky_item_ftime" value="<span class="ftime">##ftime##</span>"-->

<!--#set var="item_list;sticky_item_list" value="
##list##
##pager##
"-->

<!--#set var="item_header;browse_item_header;sticky_item_header;subitem_header" value="<a href="##front_link####nav_data####--7.0.0.0 (patched: 2015-07-31 08:51:37)--####--offset=##offset##&catoffset=##catoffset##--####-- end 7.0.0.0 (patched: 2015-07-31 08:51:37)--##">##header##</a>"-->

<!--#set var="subitem_announce;item_announce;browse_item_announce;sticky_item_announce" value="
<div class="announce">
    ##announce##
    ##--<a class="more" href="##front_link####nav_data##offset=##offset##&catoffset=##catoffset##">%%more%%</a>--##
</div>
"-->

##--<!--#set var="itemD_cat_item_link" value="##g_pages_path_s##<a class="##AMI_CONF_ID##_item-list__cat-back-header" href="##script_link####cat_nav_data####front_items_link##">##_cat_header##</a>"-->--##

<!--#set var="body_items" value="
##--list_header--##
##--if(sticky_item_list != '')##<div class="##AMI_CONF_ID##_item-list__sticky-item-list">##sticky_item_list##</div>##endif--##
##item_list##
##--<div class="##AMI_CONF_ID##_item-list__rss-generate" align="right">##rss_generate##</div>--##
"-->

<!--#set var="browse_item_previous_link" value="<a class="h3" href="##script_link####prev_nav_data##">&lsaquo;&nbsp;##--%%previous_item_link%%--####header##</a>"-->
<!--#set var="browse_item_next_link" value="<a class="h3" href="##script_link####next_nav_data##">##--%%next_item_link%%--####header##&nbsp;&rsaquo;</a>"-->
<!--#set var="browse_item_next_link_na" value=""-->
<!--#set var="browse_item_previous_link_na" value=""-->

<!--#set var="item_details" value="
##--setglobalvar @g_pages_path = g_pages_path_1.'<a href="'.front_link.'">'.page_name.'</a>'.g_pages_path_s.'<span class="active">'.header.'</span>'--##
##setglobalvar @g_pages_path = g_pages_path_1.g_pages_path_s.'<a href="'.front_link.'">'.page_name.'</a>'##
##setglobalvar @g_pages_nav = g_pages_nav.'<a class="h3" href="'.front_link.'">'.page_name.'</a>'.previos_link.next_link##
##setvar @p = page_name##
##setglobalvar @page_name = header##

##--
<!--#set var="page_prev" value="<div class="page_prev">&lsaquo;&nbsp;<a href="##front_link##" title="%%page_prev%%">##name##</a></div>"-->
<!--#set var="page_next" value="<div class="page_next"><a href="##front_link##" title="%%page_next%%">##name##</a>&nbsp;&rsaquo;</div>"-->
<!--#set var="page_prev_next_splitter" value=""-->
<!--#set var="page_prev_next" value="<div id=page_prev_next>##prev####splitter####next##</div>"-->
--##

##body##
##pager##
##--<br>
<h2>&lt; <a href="##front_link##">##p##</a></h2>--##
"-->

<!--#set var="item_row;subitem_row;sticky_item_row" value="
<section>
    ##--setglobalvar @g_pages_nav = g_pages_nav.header--##
    <h2>##fdate####header##</h2>
    ##announce##
</section>
"-->

##--<!--#set var="browse_item_row" value=""-->--##

<!--#set var="browse_item_list" value="##pager##"-->
##--<div class="##AMI_CONF_ID##_browse-item-list">
    ##--list--##
    ##--<br><br>--##
    ##--<div class="##AMI_CONF_ID##_browse-item-list__pager">--##
        ##--pager--##
    ##--    <br>
        ##previos_link##
        <br>
        ##if(AMI_CONF_ID == 'blog')##&nbsp;|&nbsp;<a href="##script_link##">%%main%%</a>&nbsp;|&nbsp;##endif## ##next_link##
    </div>
</div>
"-->
--##

<!--#set var="body_itemD" value="
<div class="##AMI_CONF_ID##_item-detailed__item-details" itemscope itemtype="http://schema.org/ImageObject">##item_details##</div>
##browse_item_list##
"-->

##--
<!--#set var="small_fdate" value="<span class="small_fdate">##fdate##</span>"-->
<!--#set var="small_header" value="<a href="##front_link####nav_data##">##fdate## ##header##</a>"-->
--##
<!--#set var="small_fdate" value="<a href="##front_link####nav_data##"><span class="small_fdate">##fdate##</span><br>##header##</a>"-->

##--<!--#set var="small_more" value="<a class="##AMI_CONF_ID##_item-small__more" href="##front_link####nav_data##">%%more%%</a>"-->--##

<!--#set var="small_list" value="##list##"-->
<!--#set var="small_list_empty" value="%%no_items%%"-->

<!--#set var="body_small" value="##small_list##"-->

<!--#set var="small_row" value="
<div class="l2">
    ##fdate##
    ##--header--##
</div>
"-->

<!--#set var="main_body" value="
##body##
"-->
