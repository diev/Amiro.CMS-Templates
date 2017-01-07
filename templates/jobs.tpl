%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/jobs.lng"%%
%%include_language "templates/lang/_menu.lng"%%

##-- ================== Styles for small block ============================ --##

<!--#set var="small_fdate" value="<!--small_fdate--><b>##fdate##</b>"-->
<!--#set var="small_announce" value="<!--small_announce-->##announce##"-->
<!--#set var="small_name" value="<!--small_name-->##name##"-->
<!--#set var="small_department" value="<!--small_department--><div class="l2"><a href="##front_link####nav_data##">##department##:</a></div>"-->
<!--#set var="small_duty" value="<!--small_duty-->##duty##"-->
<!--#set var="small_header" value="<!--small_header--><a href="##script_link####nav_data##">##header##</a>"-->
<!--#set var="small_more" value="<!--small_more--><div class="l3"><a href="##front_link####nav_data##">##name##</a></div>"-->

<!--#set var="small_row" value="<!--small_row--><div##if(urgent)## class="urgent_item_row"##endif##>
##department##
##--&nbsp;&nbsp;--####more##
</div>"-->

<!--#set var="small_list" value="<!--small_list-->
##list##
"-->

##-- ================== Styles for categories list =========================== --##

<!--#set var="cat_top_link" value="<!--cat_top_link--><a class="h3" href="##script_link##?catoffset=##catoffset##">%%jobs_cat_list_start%%</a>"-->

<!--#set var="cat_name;urgent_cat_name" value="<!--cat_name-->##name##"-->
<!--#set var="cat_lname;urgent_cat_lname" value="<!--cat_lname--><a class="h3" href="##script_link####nav_data##&catoffset=##catoffset##">##name##</a>"-->
##--<!--#set var="cat_lname;urgent_cat_lname" value="<!--cat_lname--><h2>##name##</h2>"-->--##
<!--#set var="cat_announce;urgent_cat_announce" value="<!--cat_announce--><div class="announce">##announce##</div>"-->
<!--#set var="cat_body;urgent_cat_body" value="<!--cat_body-->##body##"-->
<!--#set var="cat_num_items;urgent_cat_num_items" value="<!--cat_num_items--> ##num_items## "-->

<!--#set var="new_request_link" value="<!--new_request_link-->
<a class="h3" href="##request_link##?action=new_request">%%new_request%%</a>
"-->

##-- ================== Styles for category details (in item list) =========================== --##

<!--#set var="item_cat_name;itemD_cat_name" value="<!--cat_name-->##cat_name##"-->
<!--#set var="item_cat_announce;itemD_cat_announce" value="<div class="announce">##cat_announce##</div>"-->
<!--#set var="item_cat_body;itemD_cat_body" value="<!--cat_body-->##cat_body##"-->
<!--#set var="item_cat_link" value="<!--item_cat_link--><a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a> | "-->
<!--#set var="itemD_cat_announce" value="<tr><td colspan="2"><div class="announce">##cat_announce##</div></td></tr>"-->
<!--#set var="itemD_cat_body" value="<tr><td colspan="2">##cat_body##</td></tr>"-->
<!--#set var="itemD_cat_link" value="<!--itemD_cat_link--><a href="##script_link##?##front_cats_link##">##--%%back_categoty_list%%--####page_name##</a>"-->
<!--#set var="itemD_cat_item_link" value="<!--itemD_cat_item_link--><a href="##script_link####cat_nav_data####front_items_link##">##_cat_name##</a>"-->
<!--#set var="itemD_item_link" value="<!-itemD_item_link--><a href="##script_link####cat_nav_data####front_items_link##">%%back%%</a>"-->

##-- ****************** Splitters for categories list ***************************************** --##

<!--#set var="cat_Vsplitter" value=""-->
<!--#set var="cat_Hsplitter" value=""-->

##-- ================== Categories list sets ==================================== --##

<!--#set var="cat_row;urgent_cat_row" value="
<section>
    <h2>##name##</h2>
    ##setglobalvar @_pages_nav = _pages_nav.name##
    ##--[##num_items##]--##
    ##picture##
    ##small_picture##
    ##--announce--##
    ##description##
    ##common_cf_list##
    ##item_list##
</section>
"-->

<!--#set var="cat_list" value="<!--cat_list-->
     ##--<h2><a href="##script_link##?##front_cats_link##">%%back_categoty_list%%</a>--##
     ##--<a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_name##</a>--##
     ##--</h2><br>--##
    ##URGENT_CAT_LIST_JOBS##
    ##list##
"-->

<!--#set var="urgent_cat_list" value="
##list##
"-->

<!--#set var="itemD_name" value="<!--itemD_name-->##name##"-->
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
<!--#set var="itemD_duty" value="<h2>%%duty%%</h2>##duty##"-->
<!--#set var="itemD_requirements1" value="<h2>%%requirements1%%</h2>##requirements1##"-->
<!--#set var="itemD_requirements2" value="<h2>%%requirements2%%</h2>##requirements2##"-->
<!--#set var="itemD_resume_post_link" value="<a href="##resume_post_link##?id=##id##">%%resume_post_link%%</a>"-->
<!--#set var="item_name;urgent_item_name" value="##name##"-->

<!--#set var="urgent_item_requirements1" value="##requirements1##"-->
<!--#set var="item_department;urgent_item_department" value="##department##"-->

<!--#set var="item_Vsplitter;urgent_item_Vsplitter" value=""-->

<!--#set var="item_row;urgent_item_row" value="<!--item_row-->
<section>
    <div class="job_details">
    <h2><a class="h2" href="##script_link####nav_data##offset=##offset##&catoffset=##catoffset##">##name##</a></h2>
    ##setglobalvar @g_pages_nav = g_pages_nav.'<a class="h3" href="'.script_link.nav_data.'offset='.offset.'&catoffset='.catoffset.'">'.name.'</a>'##
    ##--fdate##
    ##--edate--##
    ##--duty--##
    ##--requirements1--##
    ##common_cf_list##
    </div>
</section>
"-->
<!--#set var="subitem_row" value="<!--subitem_row-->
<li class="jobs_subitem"><a class="header" href="##script_link####nav_data##offset=##offset##&catoffset=##catoffset##">##name##</a>##--fdate####edate--####duty####--requirements1--####common_cf_list##</li>
"-->

<!--#set var="item_list" value="<!--item_list-->
<ul class="jobs_items"><!--list-->
##list##
</ul>
##pager##
<br>
%%offers%% <a href="mailto:##mail##">##mail##</a>
"-->

<!--#set var="urgent_item_list" value="<ul>##list##</ul>"-->

<!--#set var="item_details" value="<!--item_details-->
<div class="job_details">
##--<tr><td colspan="2">--##
    ##--##cat_link####item_link##--##
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.
    '<a href="'.script_link.cat_nav_data.front_items_link.'">'._cat_name.'</a>'.g_pages_path_s.
    '<span class="active">'.name.'</span>'--##
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.
    '<span class="active">'.name.'</span>'##
##setglobalvar @g_pages_nav = g_pages_nav.'<!--item_details--><div class="side_link">'.cat_link.'</div><div class="side_link">'.resume_post_link.'</div><!--/item_details-->'##
##setglobalvar @page_name = name##
##setglobalvar @g_subcat = 2--##
    
  ##--name--##
    ##--
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
    --##
  ##duty##
  ##requirements1##
  ##requirements2##

##--
</td></tr>
<tr><td>
<br><br>
  %%offers%% <a href="mailto:##mail##">##mail##</a>.
  <br><br>
  ##resume_post_link##
</td></tr>

<tr><td colspan="2">&lt; ##cat_link## | ##item_link##</td></tr>--##
##--<tr><td colspan="2"><a href="##script_link##?offset=##offset##">%%back%%</a></td></tr>--##
</div>
"-->


<!--#set var="item_list_empty" value="
<tr><td>%%empty%%</td></tr>
"-->


<!--#set var="body_items" value="<!--body_items-->
##--<tr><td><h2>##cat_link## / ##cat_name##</h2><br></td></tr>--##
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.'<span class="active">'.cat_name.'</span>'--##
##setglobalvar @g_pages_path = g_pages_path_1.g_pages_path_s.cat_link##
##setglobalvar @page_name = cat_name##
##setglobalvar @g_subcat = 1##        

##urgent_item_list##
##item_list##
##setglobalvar @g_pages_nav = g_pages_nav.cat_link.new_request_link##
##--<br>
&lt; ##cat_link##
<tr><td colspan="2"><a href="##script_link##?offset=##offset##">%%back%%</a></td></tr>
<div align=right>##rss_generate##</div>--##
"-->

<!--#set var="body_itemD" value="<!--body_itemD-->
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.
    '<a href="'.script_link.cat_nav_data.front_items_link.'">'._cat_name.'</a>'.g_pages_path_s.
    '<span class="active">'.name.'</span>'--##
##setglobalvar @g_pages_path = g_pages_path_1.g_pages_path_s.cat_link.g_pages_path_s.
    '<a href="'.script_link.cat_nav_data.front_items_link.'">'._cat_name.'</a>'##
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.'<span class="active">'.name.'</span>'--##
##setglobalvar @page_name = name##
##setglobalvar @g_subcat = 2##        

##item_detail##
##-- ##item_list## --##
##setglobalvar @g_pages_nav = resume_post_link.g_pages_nav._pages_nav.cat_link.new_request_link##
"-->

<!--%%jobs%%-->
<section>
##body##
</section>

##-- ================== Subitem list sets ==================================== --##
<!--#set var="subitem_list" value="<!--subitem_list-->
<ul class="jobs_subitems">
  ##item_list##
</ul>
"-->

<!--#set var="item_list" value="<!--item_list 3-->
##pager##
##list##
##pager##
"-->

<!--#set var="body_cats" value="<!--body_cats-->
##setglobalvar @g_subcat = 0##
<!--filter-->
##--filter--##
<!--sort-->
##--sort--##
##cat_list##
<!--new_request_link-->
##setglobalvar @g_pages_nav = g_pages_nav._pages_nav.new_request_link##
"-->

<!--#set var="body_small" value="<!--body_small-->
##small_list##
"-->

<!--#set var="common_cf_list(module="jobs_cat")" value="<div class="jobs_cat_common_cf_list">##list##</div>"-->
<!--#set var="common_cf_list(module="jobs")" value="<div class="jobs_common_cf_list">##list##</div>"-->
