%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/_menu.lng"%%
%%include_language "templates/lang/files.lng"%%


##-- ================== Styles for categories list =========================== --##

<!--#set var="cat_name;urgent_cat_name" value="<!--cat_name-->##name##"-->
<!--#set var="cat_lname;urgent_cat_lname" value="##IF(name!=".")##<!--cat_lname--><a class="h3" href="##script_link####nav_data##&catoffset=##catoffset##">##name##</a>##endif##"-->
<!--#set var="cat_announce;urgent_cat_announce" value="<!--cat_announce--><div>##announce##</div>"-->
<!--#set var="cat_body;urgent_cat_body" value="<!--cat_body-->##body##<!--/cat_body-->"-->
<!--#set var="cat_num_items;urgent_cat_num_items" value="<!--cat_num_items-->[ ##num_items## ]"-->

##-- ================== Styles for category details (in item list) =========================== --##

<!--#set var="item_cat_name;itemD_cat_name;urgent_item_cat_name" value="<!--item_cat_name-->##cat_name##"-->
<!--#set var="item_cat_announce;itemD_cat_announce;urgent_item_cat_announce" value="<!--item_cat_announce--><div class="cat_announce">##cat_announce##</div>"-->
<!--#set var="item_cat_body;itemD_cat_body;urgent_item_cat_body" value="<!--item_cat_body-->##cat_body##"-->
<!--#set var="item_cat_link" value="<!--item_cat_link--><a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a>"-->

<!--#set var="itemD_cat_name" value="<!--itemD_cat_name-->##cat_name##"-->
<!--#set var="itemD_cat_announce" value="<!--itemD_cat_announce--><div class="cat_announce">##cat_announce##</div>"-->
<!--#set var="itemD_cat_body" value="<!--itemD_cat_body-->##cat_body##"-->
<!--#set var="itemD_cat_link" value="<!--itemD_cat_link--><a class="h3" href="##script_link##?##front_cats_link##">##page_name##</a>
"-->

<!--#set var="itemD_cat_item_link" value="<!--itemD_cat_item_link--> / <a href="##script_link####cat_nav_data####front_items_link##">##_cat_name##</a>"-->
<!--#set var="itemD_item_link" value="<!--itemD_item_link--><a href="##script_link####cat_nav_data####front_items_link##">%%back%%</a>"-->

##-- ****************** Splitters for categories list ***************************************** --##

<!--#set var="cat_Vsplitter;urgent_cat_Vsplitter" value=""-->
<!--#set var="cat_Hsplitter;urgent_cat_Hsplitter" value=""-->

##-- ================== Categories list sets ==================================== --##

<!--#set var="cat_row;urgent_cat_row" value="<!--cat_row-->
	##--name--##
	##IF(strlen(name)>0)##
		##setglobalvar @g_pages_nav = @g_pages_nav.name##
	##else##
		##--setglobalvar @g_pages_nav = ""--##
		##urgent_item_list##
		##item_list##
	##endif##
"-->

<!--#set var="cat_list" value="<!--cat_list-->
	##list##
"-->

##-- ================== Styles for subitem list =========================== --##
<!--#set var="item_name;subitem_name;urgent_item_name" value="<!--s/item_name-->##name##"-->
<!--#set var="item_announce;subitem_announce;urgent_item_announce" value="<!--item_announce--><div class="announce">##announce##</div>"-->

##-- ================== Subitem list sets ==================================== --##
<!--#set var="subitem_list" value="<!--subitem_list-->
	##item_list##
"-->

<!--#set var="more_link;subitem_more_link" value="<!--more_link-->
	&nbsp;<a href="##script_link####nav_data####front_items_link##">%%more%%</a>
"-->

<!--#set var="num_downloaded;subitem_num_downloaded" value="<!--num_downloaded-->
	<b>%%num_downloaded%%:</b>&nbsp;##num_downloaded##&nbsp;
"-->

##-- ================== Item details sets ================================= --##

<!--#set var="item_details" value="<!--item_details-->
	##cat_name##
	##cat_announce##
	##cat_body##
	<tr><td colspan="2">##cat_picture##</td></tr>
	<tr>
		<td colspan="2"><img src="_img/empty.gif" height="16" width="1"></td>
	</tr>
	<tr>
		<td colspan="2" valign="middle" align="left">
			<a target="_blank" href="##linktag##"><img border=0 align="absmiddle" src="##icons##" alt="##alt##"></a>
			&nbsp;
			<a target="_blank" href="##linktag##">##name##</a>
		</td>
	</tr>
	<tr>
		<td colspan="2">##announce##</td>
	</tr>
	<tr>
		<td colspan="2">##description####common_cf_list####pager_item_details##</td>
	</tr>
	##--DE--
	<tr>
		<td colspan="2">
			<b>%%date%%:</b>&nbsp;##date##&nbsp;
			<b>%%size%%:</b>&nbsp;##size##&nbsp;
			##num_downloaded##
			##if(EXTENSION_RATING=="1")##
				<br>##rating_block## ##votes_block## ##rating_form##
			##endif##
		</td>
	</tr>
	--DE--##
	<tr>
		<td colspan="2"><a href="##script_link####cat_nav_data####front_items_link##">%%back%%</a></td>
	</tr>
	##cat_link##
	<tr><td>##tags_extension##</td></tr>
	<!--/item_details-->
"-->

<!--#set var="item_Vsplitter;subitem_Vsplitter;urgent_item_Vsplitter" value=""-->
<!--#set var="item_Hsplitter;subitem_Hsplitter;urgent_item_Hsplitter" value=""-->

<!--#set var="subitem_nSplitter" value="<!--subitem_nSplitter-->"-->

<!--#set var="item_row;subitem_row;urgent_item_row" value="<!--item_row-->
	<a class="h3" target="_blank" href="##linktag##">
		<span class="menu-val"><img border=0 align="absmiddle" src="##icons##" alt="##alt##"></span>
		##name##
	</a>
"-->

<!--#set var="urgent_item_list" value="<!--urgent_item_list-->
	##pager##
	<ul class="urgent-files">##list##</ul>
	##pager##
	<hr>
	<!--/urgent_item_list-->
"-->

<!--#set var="item_list" value="<!--item_list-->
	##pager##
	<ul class="files">##list##</ul>
	##pager##
	<!--/item_list-->
"-->

<!--#set var="item_list_empty" value="<!--item_list_empty-->
	%%file_list_empty%%
"-->

<!--%%files%%-->

<!--#set var="item_details_empty" value="<!--item_details_empty-->
	%%file_not_found%%
"-->

##-- ****************** Pages types *************************************** --##

<!--#set var="body_itemD" value="<!--body_itemD-->
	##item_details##
	<!--/body_itemD-->
"-->

<!--#set var="body_items" value="<!--body_items-->
	<section>
		##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.'<span class="active">'.cat_name.'</span>'--##
		##setglobalvar @g_pages_path = g_pages_path_1.g_pages_path_s.cat_link##    
		##setglobalvar @g_pages_nav = @g_pages_nav.cat_link##
		##setglobalvar @page_name = cat_name##
		##setglobalvar @g_subcat = 1##        
		##--<div>##cat_name##</div>--##
		##--<div style="float:left;">##cat_small_picture##</div>--##
		##cat_announce##
		##cat_body##
		##urgent_item_list##
		##item_list##
		##--cat_link--##
		##--<div align=right>##rss_generate##</div>--##
	</section>
	<!--/body_items-->
"-->

<!--#set var="body_cats" value="<!--body_cats-->
	##setglobalvar @g_subcat = 0##        
	##setglobalvar @g_files_aside = '<hr>'.cat_list##
	##URGENT_CAT_LIST_FILES##
	##pager##
	##cat_list##
	##pager##
	<!--/body_cats-->
"-->

<!--#set var="body_empty" value="<!--body_empty-->
	%%no_item%%
"-->

##--body--##

<!--#set var="common_cf_list(module="files_cat")" value="<div class="files_cat_common_cf_list">##list##</div>"-->
<!--#set var="common_cf_list(module="files")" value="<div class="files_common_cf_list">##list##</div>"-->
