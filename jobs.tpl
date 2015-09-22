%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/jobs.lng"%%
%%include_language "templates/lang/_menu.lng"%%

##-- ================== Styles for small block ============================ --##

<!--#set var="small_fdate" value="<b>##fdate##</b>"-->
<!--#set var="small_announce" value="##announce##"-->
<!--#set var="small_name" value="##name##"-->
<!--#set var="small_department" value="<div><a href="##front_link####cat_nav_data##" class=h3>##department##:</a></div>"-->
<!--#set var="small_duty" value="##duty##"-->
<!--#set var="small_header" value="<a href="##script_link####nav_data##">##header##</a>"-->
<!--#set var="small_more" value="<span id=small><a href="##front_link####nav_data##">##name##</a></span>"-->

<!--#set var="small_row" value="<div##if(urgent)## class="urgent_item_row"##endif##>
##department##
&nbsp;&nbsp;##more##
<br>
</div>"-->

<!--#set var="small_list" value="
##list##
"-->

##-- ================== Styles for categories list =========================== --##

<!--#set var="cat_top_link" value="<a href="##script_link##?catoffset=##catoffset##">%%jobs_cat_list_start%%</a>"-->

<!--#set var="cat_name;urgent_cat_name" value="<h2>##name##</h2>"-->
<!--#set var="cat_lname;urgent_cat_lname" value="<h2><a href="##script_link####nav_data##&catoffset=##catoffset##">##name##</a></h2>"-->
<!--#set var="cat_announce;urgent_cat_announce" value="##announce##"-->
<!--#set var="cat_body;urgent_cat_body" value="##body##"-->
<!--#set var="cat_num_items;urgent_cat_num_items" value=" ##num_items## "-->

<!--#set var="new_request_link" value="
<tr><td><a href="##request_link##?action=new_request">%%new_request%%</a></td></tr>
"-->

##-- ================== Styles for category details (in item list) =========================== --##

<!--#set var="item_cat_name;itemD_cat_name" value="##cat_name##"-->
<!--#set var="item_cat_announce;itemD_cat_announce" value="##cat_announce##"-->
<!--#set var="item_cat_body;itemD_cat_body" value="##cat_body##"-->
<!--#set var="item_cat_link" value="<a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a> | "-->
<!--#set var="itemD_cat_announce" value="<tr><td colspan="2">##cat_announce##</td></tr>"-->
<!--#set var="itemD_cat_body" value="<tr><td colspan="2">##cat_body##</td></tr>"-->
<!--#set var="itemD_cat_link" value="<a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a>"-->
<!--#set var="itemD_cat_item_link" value=" | <a href="##script_link####cat_nav_data####front_items_link##">##_cat_name##</a>"-->
<!--#set var="itemD_item_link" value="<a href="##script_link####cat_nav_data####front_items_link##">%%back%%</a>"-->

##-- ****************** Splitters for categories list ***************************************** --##

<!--#set var="cat_Vsplitter" value="
</tr><tr><td></td></tr><tr>
"-->
<!--#set var="cat_Hsplitter" value="<td></td>
"-->

##-- ================== Categories list sets ==================================== --##

<!--#set var="cat_row" value="
<tr><td valign=top>
    ##name## [##num_items##]
    <div>##picture##</div>
    <div>##small_picture##</div>
    <div>##announce##</div>
    <div>##--description--##</div>
    ##common_cf_list##
    ##item_list##
</td></tr>
"-->

<!--#set var="urgent_cat_row" value="
<tr><td valign=top class="urgent_cat_row">
    ##name## [##num_items##]
    <div>##picture##</div>
    <div>##small_picture##</div>
    <div>##announce##</div>
    <div>##--description--##</div>
    ##common_cf_list##
    ##item_list##
</td></tr>
"-->


<!--#set var="cat_list" value="
<tr><td>
   <table cellSpacing=0 cellPadding=0 width="100%" border=0>
   <tr><td>
     <h2><a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a>
     ##--<a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_name##</a>--##
     </h2><br>
   </td></tr>
    ##URGENT_CAT_LIST_JOBS##
    ##list##
   </table>
</td></tr>
"-->

<!--#set var="urgent_cat_list" value="
<tr><td><table cellSpacing=0 cellPadding=0 width="100%" border=0>
##list##
</table></td></tr>
"-->

<!--#set var="itemD_name" value="<h1>##name##</h1>"-->
<!--#set var="itemD_department" value="<tr><td>%%department%%</td><td>&nbsp;&nbsp;<b>##department##</td></tr>"-->
<!--#set var="itemD_salary" value="<tr><td>%%salary%%</td><td>&nbsp;&nbsp;<b>##salary##</td></tr>"-->
<!--#set var="itemD_date" value="<tr><td>%%fdate%%</td><td>&nbsp;&nbsp;<b>##date##</td></tr>"-->
<!--#set var="itemD_edate" value="<tr><td>%%edate%%</td><td>&nbsp;&nbsp;<b>##edate##</td></tr>"-->
<!--#set var="itemD_status" value="<tr><td>%%status%%</td><td>&nbsp;&nbsp;<b>##status##</td></tr>"-->
<!--#set var="itemD_sex" value="<tr><td>%%sex%%</td><td>&nbsp;&nbsp;<b>##sex##</td></tr>"-->
<!--#set var="itemD_age_from" value="<tr><td>%%age_from%%</td><td>&nbsp;&nbsp;<b>##age_from##</td></tr>"-->
<!--#set var="itemD_age_till" value="<tr><td>%%age_till%%</td><td>&nbsp;&nbsp;<b>##age_till##</td></tr>"-->
<!--#set var="itemD_experience" value="<tr><td>%%experience%%</td><td>&nbsp;&nbsp;<b>##experience##</td></tr>"-->
<!--#set var="itemD_schedule" value="<tr><td>%%schedule%%</td><td>&nbsp;&nbsp;<b>##schedule##</td></tr>"-->
<!--#set var="itemD_duty" value="<b>%%duty%%</b><br>##duty##"-->
<!--#set var="itemD_requirements1" value="<b>%%requirements1%%</b><br>##requirements1##"-->
<!--#set var="itemD_requirements2" value="<b>%%requirements2%%</b><br>##requirements2##"-->
<!--#set var="itemD_resume_post_link" value="<a href="##resume_post_link##?id=##id##">%%resume_post_link%%</a><br><br>"-->
<!--#set var="item_name;urgent_item_name" value="##name##"-->

<!--#set var="urgent_item_requirements1" value="##requirements1##"-->
<!--#set var="item_department;urgent_item_department" value="##department##"-->

<!--#set var="item_Vsplitter;urgent_item_Vsplitter" value="</tr><tr>"-->
<!--#set var="item_row;subitem_row" value="<td><a href="##script_link####nav_data##offset=##offset##&catoffset=##catoffset##">##name##</a>##--fdate--####--edate--####--duty--####--requirements1--####common_cf_list##</td>"-->

<!--#set var="urgent_item_row" value="<td class="urgent_item_row"><a href="##script_link####nav_data##offset=##offset##&catoffset=##catoffset##">##name##</a>##--fdate--####--edate--####--duty--####--requirements1--####common_cf_list##</td>"-->


<!--#set var="item_list" value="
<tr>
##list##
</tr>
<tr><td>##pager##</td>
</tr>
<tr><td>%%offers%% <a href="mailto:##mail##">##mail##</a>.</td></tr>
"-->

<!--#set var="urgent_item_list" value="<tr>##list##</tr>"-->

<!--#set var="item_details" value="
<tr><td colspan="2">##cat_link####item_link##
<br><br>
  ##name##

<table cellpadding=0 cellspacing=0 border=0>
  ##department##
  ##date##
  ##edate##
  ##status##
  ##sex##
  ##age_from##
  ##age_till##
  ##salary##
  ##experience##
  ##schedule##
  ##common_cf_list##
  </table>
 <br>
  ##duty##
  ##requirements1##
  ##requirements2##

</td></tr>
<tr><td>
<br><br>
  %%offers%% <a href="mailto:##mail##">##mail##</a>.
  <br><br>
  ##resume_post_link##
</td></tr>

<tr><td colspan="2">##cat_link####item_link##</td></tr>
##--<tr><td colspan="2"><a href="##script_link##?offset=##offset##">%%back%%</a></td></tr>--##
"-->


<!--#set var="item_list_empty" value="
<tr><td>%%empty%%</td></tr>
"-->


<!--#set var="body_items" value="
<tr><td><h2>##cat_link## / ##cat_name##</h2><br></td></tr>
##urgent_item_list####item_list##
<tr><td><br><br>##cat_link##</td></tr>
##--<tr><td colspan="2"><a href="##script_link##?offset=##offset##">%%back%%</a></td></tr>--##


<tr><td align=right>##rss_generate##</td></tr>
"-->

<!--#set var="body_itemD" value="
##item_detail##
##-- ##item_list## --##
"-->

<!--{title=%%jobs%%}-->

<TABLE cellspacing=0 cellpadding=10 width="100%" border=0>
<TBODY>
    ##body##
</TBODY>
</TABLE>

##-- ================== Subitem list sets ==================================== --##
<!--#set var="subitem_list" value="
<table cellspacing=0 cellpadding=0 border=0 width=100%>
  ##item_list##
</table>
"-->

<!--#set var="item_list" value="
<tr><td>##pager##</td></tr>
<tr>
##list##
</tr>
<tr><td>##pager##</td></tr>
"-->

<!--#set var="body_cats" value="
##filter##
##sort##
##cat_list##
##new_request_link##
"-->

<!--#set var="body_small" value="
##small_list##
"-->

<!--#set var="common_cf_list(module="jobs_cat")" value="<div class="jobs_cat_common_cf_list">##list##</div>"-->
<!--#set var="common_cf_list(module="jobs")" value="<div class="jobs_common_cf_list">##list##</div>"-->
