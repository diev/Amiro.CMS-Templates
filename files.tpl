%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/_menu.lng"%%
%%include_language "templates/lang/files.lng"%%


##-- ================== Styles for categories list =========================== --##

<!--#set var="cat_name;urgent_cat_name" value="##name##"-->
<!--#set var="cat_lname;urgent_cat_lname" value="<a href="##script_link####nav_data##&catoffset=##catoffset##">##name##</a>"-->
<!--#set var="cat_announce;urgent_cat_announce" value="##announce##"-->
<!--#set var="cat_body;urgent_cat_body" value="##body##"-->
<!--#set var="cat_num_items;urgent_cat_num_items" value="[ ##num_items## ]"-->

##-- ================== Styles for category details (in item list) =========================== --##

<!--#set var="item_cat_name;itemD_cat_name;urgent_item_cat_name" value="<h2>##cat_name##</h2>"-->
<!--#set var="item_cat_announce;itemD_cat_announce;urgent_item_cat_announce" value="##cat_announce##"-->
<!--#set var="item_cat_body;itemD_cat_body;urgent_item_cat_body" value="##cat_body##"-->
<!--#set var="item_cat_link" value="<a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a>"-->

<!--#set var="itemD_cat_name" value="<tr><td colspan="2"><h2>##cat_name##</h2></td></tr>"-->
<!--#set var="itemD_cat_announce" value="<tr><td colspan="2">##cat_announce##</td></tr>"-->
<!--#set var="itemD_cat_body" value="<tr><td colspan="2">##cat_body##</td></tr>"-->
<!--#set var="itemD_cat_link" value="
<tr>
  <td colspan="2"><a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a></td>
</tr>
"-->

<!--#set var="itemD_cat_item_link" value=" / <a href="##script_link####cat_nav_data####front_items_link##">##_cat_name##</a>"-->

<!--#set var="itemD_item_link" value="<a href="##script_link####cat_nav_data####front_items_link##">%%back%%</a>"-->

##-- ****************** Splitters for categories list ***************************************** --##

<!--#set var="cat_Vsplitter;urgent_cat_Vsplitter" value="
</tr><tr><td height="20" nowrap></td></tr><tr>
"-->
<!--#set var="cat_Hsplitter;urgent_cat_Hsplitter" value="
"-->

##-- ================== Categories list sets ==================================== --##

<!--#set var="cat_row" value="
<td valign=top>
    <h3>##name## ##num_items##</h3>
    <div style="float:left;">##small_picture##</div>
    <div>##announce##</div>
    ##common_cf_list##
    <div>##item_list##</div>
    <div>
    ##--description--##
    </div>
</td>
"-->

<!--#set var="urgent_cat_row" value="
<td valign=top class="urgent_cat_row">
  <p>
    <h3>##name## ##num_items##</h3>
    <div style="float:left;">##small_picture##</div>
    <div>##announce##</div>
    ##common_cf_list##
    <div>##item_list##</div>
    <div>
    ##--description--##
    </div>
  </p>
</td>
"-->


<!--#set var="cat_list" value="
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr>
    ##list##
</tr>
<tr><td align=right>##pager##</td></tr>
</table>
"-->

##-- ================== Styles for subitem list =========================== --##
<!--#set var="item_name;subitem_name;urgent_item_name" value="##name##"-->
<!--#set var="item_announce;subitem_announce;urgent_item_announce" value="##announce##"-->

##-- ================== Subitem list sets ==================================== --##
<!--#set var="subitem_list" value="
<table cellspacing=0 cellpadding=0 border=0 width=100%>
  <tr>
  ##item_list##
  </tr>
</table>
"-->


<!--#set var="more_link;subitem_more_link" value="
&nbsp;<a href="##script_link####nav_data####front_items_link##">%%more%%</a>
"-->

<!--#set var="num_downloaded;subitem_num_downloaded" value="
<b>%%num_downloaded%%:</b>&nbsp;##num_downloaded##&nbsp;
"-->

##-- ================== Item details sets ================================= --##

<!--#set var="item_details" value="
##cat_name##
##cat_announce##
##cat_body##
<tr><td colspan="2">##cat_picture##</td></tr>
<tr>
  <td colspan="2"><img src="_img/empty.gif" height="16" width="1"></td>
</tr>
<tr>
  <td colspan="2" valign="middle" align="left">
    <a target="_blank" href="##linktag##"><img border=0 align="middle" src="##icons##" alt="##alt##"></a>
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
<tr>
  <td colspan="2">
    <b>%%date%%:</b>&nbsp;##date##&nbsp;
    <b>%%size%%:</b>&nbsp;##size##&nbsp;
    ##num_downloaded##    ##if(EXTENSION_RATING=="1")##
       <br>##rating_block## ##votes_block## ##rating_form##
    ##endif##
  </td>
</tr>
<tr>
    <td colspan="2"><a href="##script_link####cat_nav_data####front_items_link##">%%back%%</a></td>
</tr>
##cat_link##
<tr><td>##tags_extension##</td></tr>
"-->


<!--#set var="item_Vsplitter;subitem_Vsplitter;urgent_item_Vsplitter" value="</tr><tr>"-->

<!--#set var="item_Hsplitter;subitem_Hsplitter;urgent_item_Hsplitter" value=""-->

<!--#set var="subitem_nSplitter" value=""-->

<!--#set var="item_row;subitem_row;urgent_item_row" value="
<td ##IF (__SET_NAME__=="urgent_item_row")##class="urgent_item_row"##ENDIF##><br>
    <a target="_blank" href="##linktag##"><img border=0 align="middle" src="##icons##" alt="##alt##" align=absmiddle></a>
    &nbsp;
    <a target="_blank" href="##linktag##">##name##</a>##more_link##
     <br>
    ##announce##
    ##common_cf_list##
    <div>
    <b>%%date%%:</b>&nbsp;##date##&nbsp;
    <b>%%size%%:</b>&nbsp;##size##&nbsp;
    <a target="_blank" href="##linktag##"><b>%%download%%</b></a>
    </div>
    ##--num_downloaded--##    ##if(EXTENSION_RATING=="1")##
        <br>##rating_block## ##votes_block## ##rating_form##
    ##endif##
    <div>##picture##</div>
</td>
"-->

<!--#set var="item_list" value="
<tr><td>##pager##</td></tr>
<tr><td>
  <table cellspacing=0 cellpadding=0 border=0 width=100%>
    <tr>
    ##list##
    </tr>
  </table>
</td></tr>
<tr><td>##pager##</td></tr>
"-->

<!--#set var="urgent_item_list" value="
<tr><td>
  <table cellspacing=0 cellpadding=0 border=0 width=100%>
    <tr>
    ##list##
    </tr>
  </table>
</td></tr>
"-->

<!--#set var="item_list_empty" value="
%%file_list_empty%%
"-->


<!--{title=%%files%%}-->

<!--#set var="item_details_empty" value="
<tr><td>%%file_not_found%%</td></tr>
"-->

##-- ****************** Pages types *************************************** --##

<!--#set var="body_itemD" value="
##item_details##
"-->

<!--#set var="body_items" value="
<tr><td>##cat_name##</td></tr>
<tr><td>

    <div style="float:left;">##cat_small_picture##</div>
    <div>##cat_announce##</div>

</td></tr>
<tr><td>##cat_body##</td></tr>
##urgent_item_list####item_list##
<tr><td><br>##cat_link##</td></tr>

<tr><td align=right>##rss_generate##</td></tr>
"-->

<!--#set var="body_cats" value="<tr><td>##URGENT_CAT_LIST_FILES##</td></tr>
<tr><td>##pager##</td></tr>
<tr><td>##cat_list##</td></tr>
<tr><td>##pager##</td></tr>
"-->

<!--#set var="body_empty" value="
%%no_item%%
"-->


<table border=0 cellpadding=0 cellspacing=0 width=100%>
      ##body##
</table>

<!--#set var="common_cf_list(module="files_cat")" value="<div class="files_cat_common_cf_list">##list##</div>"-->
<!--#set var="common_cf_list(module="files")" value="<div class="files_common_cf_list">##list##</div>"-->
