%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/_menu.lng"%%
%%include_template "templates/_icons.tpl"%%
%%include_language "templates/lang/faq.lng"%%

##-- ================== Styles for categories list =========================== --##

<!--#set var="cat_name;urgent_cat_name" value="##name##"-->
<!--#set var="cat_lname;urgent_cat_lname" value="<!--cat_lname--><a class="h3" href="##script_link####nav_data##&catoffset=##catoffset###ccat">##name##</a>"-->
<!--#set var="cat_announce;urgent_cat_announce" value="##announce##"-->
<!--#set var="cat_body;urgent_cat_body" value="##body##"-->
<!--#set var="cat_num_items;urgent_cat_num_items" value="[ ##num_items## ]"-->
<!--#set var="cat_counter;urgent_cat_counter" value="%%num_items%%: ##num_items##"-->

##-- ================== Styles for category details (in item list) =========================== --##

<!--#set var="item_cat_name;itemD_cat_name;urgent_item_cat_name" value="##cat_name##"-->
<!--#set var="item_cat_announce;itemD_cat_announce;urgent_item_cat_announce" value="##cat_announce##"-->
<!--#set var="item_cat_body;itemD_cat_body;urgent_item_cat_body" value="##cat_body##"-->
<!--#set var="item_cat_link" value="<!--item_cat_link--><a class="h3" href="##script_link##?##front_cats_link##">%%back_category_list%%</a>"-->

<!--#set var="itemD_cat_announce" value="<div>##cat_announce##</div>"-->
<!--#set var="itemD_cat_body" value="<div>##cat_body##</div>"-->
<!--#set var="itemD_cat_link" value="<!--itemD_cat_link--><a href="##script_link##?##front_cats_link##">%%back_category_list%%</a>
"-->

##-- ****************** Splitters for categories list ***************************************** --##

<!--#set var="cat_Vsplitter;urgent_cat_Vsplitter" value=""-->
<!--#set var="cat_Hsplitter;urgent_cat_Hsplitter" value=""-->

##-- ================== Categories list sets ==================================== --##

<!--#set var="cat_row_links" value="<!--cat_row_link-->
<div>
  ##name_links##
    <div>##--picture--##</div>
    <div>##--small_picture--##</div>
    <div>##--announce--##</div>
   ##-- <div>##cat_counter##</div>--##
    ##item_list##
</div>
"-->

<!--#set var="cat_row" value="<!--cat_row-->
##setglobalvar @g_pages_nav = @g_pages_nav.name##
<section>
    ##--cat_row_index--## <h2>##name## ##num_items##</h2>
    <div>##picture##</div>
    <div>##small_picture##</div>
    <div>##announce##</div>
    ##--<div>##cat_counter##</div>--##
    ##common_cf_list##
    ##item_list##
</section>
"-->

<!--#set var="urgent_cat_row" value="<!--urgent_cat_row-->
<div class="urgent_cat_row">
    ##--cat_row_index--## ##name## ##num_items##
    <div>##picture##</div>
    <div>##small_picture##</div>
    <div>##announce##</div>
    ##--<div>##cat_counter##</div>--##
    ##common_cf_list##
    ##item_list##
"-->

<!--#set var="cat_form_row" value="<!--cat_form_row-->
<div>
  <div>%%faq_cat%%:</div>
  <div><u>##cat_name##</u></div>
</div>
<div>
"-->


##-- ================== Styles for subitem list =========================== --##

<!--#set var="item_date;small_date;urgent_item_date" value="##date##"-->
<!--#set var="item_author;small_author;urgent_item_author" value="##author##"-->
<!--#set var="item_email;small_email;urgent_item_email" value="##email##"-->
<!--#set var="item_question;subitem_question;small_question;urgent_item_question" value="##question##"-->
<!--#set var="item_answer;urgent_item_answer" value="##answer##"-->

<!--#set var="item_top_link" value="<!--item_top_link--><a class="h3" href="##faq_link####nav_data##catoffset=##catoffset##">%%faq_list_start%%</a>"-->



##-- ================== Subitem list sets ==================================== --##

<!--#set var="subitem_question_links" value="##question##"-->

<!--#set var="question_subitem_link" value="<!--question_subitem_link-->
<div><a href="##script_link###q##id##">##--q_row_index--####question##</a></div>
"-->

<!--#set var="subitem_row_links" value="<!--subitem_row_links-->
##--<td><br><br>##subject##</td></tr>--##
##question_data##
##--howto_rows--##
"-->

<!--#set var="subitem_list_links" value="<!--subitem_list_links-->
##item_list##
"-->

<!--#set var="cat_lname_links" value="<!--cat_lname_links--><div style="padding-bottom:15px;"><div class="alt_header4"><a href="##script_link####nav_data##&catoffset=##catoffset###ccat">##name##</a></div></div>"-->

<!--#set var="cat_list_links" value="<!--cat_list_links-->
<div>##list##</div>
"-->


<!--#set var="subitem_list" value="<!--subitem_list-->
##item_list##
"-->

<!--#set var="itemD_date" value="##date##"-->
<!--#set var="itemD_author" value="##author##"-->
<!--#set var="itemD_email" value="##email##"-->
<!--#set var="itemD_question" value="##question##"-->
<!--#set var="itemD_answer" value="##answer##"-->

<!--#set var="question_body" value="<!--question_body-->
    <h2>%%question%%:</h2>
    ##question##
	<h2>%%answer%%:</h2>
    ##answer##

    ##if(EXTENSION_RATING=="1")##
<br>##rating_block## ##votes_block## ##rating_form##
    ##endif##

<br>
"-->

<!--#set var="question_link" value="<!--question_link-->
<a class="h3" href="##script_link####nav_data##">##question##</a>
"-->


<!--#set var="itemD_top_link" value="<!--itemD_top_link--><a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_name##</a>"-->

##--
<!--#set var="cat_top_link" value="<a href="##script_link##?catoffset=##catoffset##">%%faq_cat_list_start%%</a>"-->
<!--#set var="cat_more" value="<a href="##script_link####nav_data##catoffset=##catoffset##"">%%faq_list%%</a>"-->
--##

<!--#set var="item_lastN_cat_name" value="<h2>%%faq_cat%%:&nbsp;##name##</h2>"-->
<!--#set var="item_lastN_top_link" value="<a href="##script_link##">%%faq_all%%</a>"-->

<!--#set var="item_Vsplitter;subitem_Vsplitter;urgent_item_Vsplitter" value=""-->
<!--#set var="item_lastN_Vsplitter" value=""-->
<!--#set var="cat_Hsplitter;urgent_cat_Hsplitter" value=""-->
<!--#set var="cat_Vsplitter;urgent_cat_Vsplitter" value=""-->

<!--#set var="item_Hsplitter;subitem_Hsplitter;urgent_item_Hsplitter" value=""-->

<!--#set var="subitem_nSplitter;small_nSplitter" value=""-->

<!--#set var="small_Vsplitter" value=""-->
<!--#set var="small_Hsplitter" value=""-->

<!--#set var="item_details" value="<!--item_details-->
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.top_link.g_pages_path_s.'<span class="active">'.question.'</span>'--##
##setglobalvar @g_pages_path = g_pages_path_1.g_pages_path_s.cat_link.g_pages_path_s.top_link##    
##setglobalvar @g_pages_nav = @g_pages_nav.cat_link.top_link##
##setglobalvar @page_name = question##
##setglobalvar @g_subcat = 2##        
##--
<div><a href="##script_link##?##front_cats_link##"><b>%%faq%%</b></a> <h2><a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##"><b>##cat_name##</b></a></h2></div>
<div>##cat_announce##</div>
--##
##--
<tr><td colspan="2">##cat_body##</td></tr>
<tr><td colspan="2">##cat_small_picture##</td></tr>
<tr><td colspan="2">##cat_picture##</td></tr>
<tr><td colspan="2"></td></tr>

<tr><td colspan="2">##small_picture##</td></tr>
<tr><td colspan="2">##picture##</td></tr>
<tr><td colspan="2">##big_picture##</td></tr>
--##
##--
<section>
<h2>%%question%%:</h2>
<div><b>##question##</b></div>
</section>
<section>
--##
##--<h2>%%answer%%:</h2>--##
##answer##

##-- <p>%%by%%: <a href="mailto:##email##">##author##</a> [ ##fdate## ] --##

##common_cf_list##
##if(EXTENSION_RATING=="1")##
<br><br>##rating_block## ##votes_block## ##rating_form##
##endif##
##--
</section>
<p>##cat_link## / ##top_link##</p>
--##
"-->

<!--#set var="item_row;subitem_row" value="<!--item_row;subitem_row-->
<li>
  ##--<a name="q##id##"></a>
  ##q_row_index## --####question_data##
  ##-- <br>%%by%%: <a href="mailto:##email##">##author##</a> [ ##fdate## ] --##
  ##common_cf_list##
  ##if(EXTENSION_RATING=="1")##
  <br>##rating_block## ##votes_block## ##rating_form##
  ##endif##
</li>
"-->

<!--#set var="urgent_item_row" value="<!--urgent_item_row-->
<li class="urgent_item_row">
  <a name="q##id##"></a>
  ##q_row_index## ##question_data##
  ##-- <br>%%by%%: <a href="mailto:##email##">##author##</a> [ ##fdate## ] --##
  ##common_cf_list##
  ##if(EXTENSION_RATING=="1")##
  <br>##rating_block## ##votes_block## ##rating_form##
  ##endif##
</li>
"-->

<!--#set var="question_row;urgent_question_row" value="<!--question_row;urgent_question_row-->
<div><a href="javascript:void(0);" OnClick="top.location.href='#q##id##';">##question##</a></div>
"-->

<!--#set var="small_cat_detail" value="<div##if(urgent)## class="urgent_cat_row"##endif##>
<a href="##front_link####cat_nav_data##">##cat_name##</a><br>
</div>"-->

<!--#set var="small_row" value="<div##if(urgent)## class="urgent_item_row"##endif##>
  ##--<b>##cat_detail##</b>--##
<div><a href="##front_link####nav_data##">##question##</a></div>
  ##rating_block## ##votes_block##

</div>"-->

<!--#set var="small_list" value="
##--<div class="alt_header2">%%faq%%</div>--##
##list##
"-->

<!--#set var="small_list_empty" value="
%%faq_empty%%
"-->

<!--#set var="item_lastN_row" value="<!--item_lastN_row-->
<div>
  ##cat_name##
  <div class="alt_header3">##date##</div>
  ##author## ##email##
  <blockquote>
    ##question##
  </blockquote>
    ##more##
<br>
</div>
"-->

<!--#set var="item_list" value="<!--item_list-->
<div>##pager##</iv>
<ul>##list##</ul>
<div>##pager##</div>
<div>##top_link##</div>
"-->

<!--#set var="urgent_item_list" value="<div>##list##</div>"-->

<!--#set var="question_list;urgent_question_list" value="<!--question_list;urgent_question_list-->
<div>##list##</div>
"-->

<!--#set var="item_list_empty" value="
<div>%%faq_empty%%</div>
"-->

<!--#set var="item_lastN_list" value="<!--item_lastN_list-->
<div>##list##</div>
<div>##top_link##</div>
"-->

<!--#set var="item_lastN_list_empty" value="
<div>%%faq_empty%%</div>
"-->

<!--#set var="cat_list" value="<!--cat_list-->
##--<h2>%%back_category_list%%</h2>--##
<div>##pager##</div>
<div>##list##</div>
<div>##pager##</div>
##-- <tr><td>##top_link##</td></tr>
--##
"-->
<!--#set var="cat_list_empty" value="
<div>%%faq_cat_empty%%</div>
"-->

<!--#set var="urgent_cat_list" value="<div>##list##</div>"-->

##-- ============================= Sort sets ============================= --##
<!--#set var="body_cats_sort" value="
    <div style="height: 30px;">%%sort_over%%##all_sort_fileds##</div>
"-->

<!--#set var="body_items_sort" value="
    <div style="height: 30px;">%%sort_over%%##all_sort_fileds##</div>
"-->

##-- ****************** Categories selectbox ********************* --##

<!--#set var="category_row" value="
<option value=##id## id_page="##id_page##" ##selected##>##name##</option>
"-->

<!--#set var="categories_selectbox" value="
         <select name="cat_id">
           ##categories_rows##
         </select>
"-->

<!--#set var="categories_empty_selectbox" value="
%%no_categories%%
"-->

<!--#set var="categories_field" value="
     <tr>
       <td>
        %%subject%%:
       </td>
       <td>
           ##categories_rows##
       </td>
     </tr>
"-->



##-- ****************** Pages types ****************************** --##


<!--#set var="form" value="
<script language="JavaScript">

function CheckFields(form)
{
   if (form.author.value.length <1) {
       alert("%%name_warn%%");
       form.author.focus();
       return false;
   }
   if (form.email.value.length <1) {
       alert("%%email_warn%%");
       form.email.focus();
       return false;
   } else if(isEmail(form.email.value) == false) {
       alert('%%email_invalid%%');
       form.email.focus();
       return false;
   }
   if (form.question.value.length <1) {
       alert("%%question_warn%%");
       form.question.focus();
       return false;
   }
   ##captcha_script##
   return true;
}

</script>

##--%%form_welcome%%--##    
<h2>Не нашли ответа на вопрос?</h2>
<span class="more">Задайте его здесь</span>
<div class="moretext">
<form action="##submitter_link##" method=post name=query onSubmit="return CheckFields(this);">

<input type=hidden name=modlink value="##script_link##">
<input type=hidden name="cat_id" value="##cat_id##">
<input type=hidden name=action value=add>
<table border=0 cellpadding=0 cellspacing=5>

##categories_field##

<tr>
  <td>%%name%%*:</td>
  <td><input type=text class=txt name="author" size=35 value="##u_name##"></td>
</tr>
<tr>
  <td>%%email%%*:</td>
  <td><input type=text class=txt name="email" size=35 value="##u_email##"></td>
</tr>
<tr>
  <td valign=top>%%question%%*:</td>
  <td><textarea name="question" class=ta wrap=soft cols=35 rows=6></textarea></td>
</tr>
##if(EXTENSION_TWIST_PREVENTION_FAQ)##
<tr>
  <td colSpan="2">
  ##captcha_row##
  </td>
</tr>
##endif##
<tr>
  <td colspan=2 align=center>
  <input type=submit class=btn value="%%send_btn%%" name=send >
  </td>
</tr>
<tr>
  <td colspan="2">
    <sub>%%required_fields%%</sub>
  </td>
</tr>
</table>
</form>
</div>
"-->

<!--#set var="register" value="
%%to_ask_questions%% <a href="##register_link##">%%please_register%%</a>.<br><br>
"-->

<!--#set var="body_cats" value="<!--body_cats-->
##setglobalvar @g_subcat = 0##        
##--<tr><td>##filter##</td></tr>--##
##--sort--##
##cat_list_links##
##cat_list##
##--form--##
"-->

<!--#set var="body_questions" value="<!--body_questions-->
##question_list##
"-->

<!--#set var="body_items" value="<!--body_items-->
##--setglobalvar @g_pages_path = g_pages_path_1.cat_link.g_pages_path_s.'<span class="active">'.cat_name.'</span>'--##
##setglobalvar @g_pages_path = g_pages_path_1.g_pages_path_s.cat_link##    
##setglobalvar @g_pages_nav = @g_pages_nav.cat_link##
##setglobalvar @page_name = cat_name##
##setglobalvar @g_subcat = 1##        
##--filter--##
##cat_list##
##--<p><a name="ccat"
    href="##script_link##?##front_cats_link##">%%faq%%</a></p>--##
##--<h2>##cat_name##</h2>--##
<p>##cat_announce##</p>
##--sort--##
##question_list##
##urgent_item_list####item_list##
##form##
##--cat_link--##
"-->

<!--#set var="body_catD_lastN" value="<!--body_catD_lastN-->
##-- ##cat_list## --##
<p>##cat_detail##</p>
##item_list##
"-->

<!--#set var="body_itemD" value="<!--body_itemD-->
##cat_list##
##item_details##
"-->

<!--#set var="body_small" value="
##small_list##
"-->

<!--#set var="body_empty" value="
%%no_item%%
"-->

<!--#set var="item_details_empty" value="
<h2><a href="##script_link##?##front_cats_link##">%%faq%%</a> / <a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_name##</a></h2>
##cat_announce##
##cat_body##
<p>%%no_item%%</p>
"-->


##-- ****************** BODY ****************************** --##
<!--#set var="main_body" value="
<script>
<!--
  var _cms_document_form = 'artsform';
  var _cms_script_link = '##script_link##?';
-->
</script>
##body##
"-->

<!--#set var="common_cf_list(module="faq_cat")" value="<div class="faq_cat_common_cf_list">##list##</div>"-->
<!--#set var="common_cf_list(module="faq")" value="<div class="faq_common_cf_list">##list##</div>"-->
