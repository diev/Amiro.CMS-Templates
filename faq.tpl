%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_language "templates/lang/_menu.lng"%%
%%include_template "templates/_icons.tpl"%%
%%include_language "templates/lang/faq.lng"%%

##-- ================== Styles for categories list =========================== --##

<!--#set var="cat_name;urgent_cat_name" value="<b>##name##</b>"-->
<!--#set var="cat_lname;urgent_cat_lname" value="<a href="##script_link####nav_data##&catoffset=##catoffset###ccat"><b>##name##</b></a>"-->
<!--#set var="cat_announce;urgent_cat_announce" value="##announce##"-->
<!--#set var="cat_body;urgent_cat_body" value="##body##"-->
<!--#set var="cat_num_items;urgent_cat_num_items" value="[ ##num_items## ]"-->
<!--#set var="cat_counter;urgent_cat_counter" value="%%num_items%%: ##num_items##"-->

##-- ================== Styles for category details (in item list) =========================== --##

<!--#set var="item_cat_name;itemD_cat_name;urgent_item_cat_name" value="##cat_name##"-->
<!--#set var="item_cat_announce;itemD_cat_announce;urgent_item_cat_announce" value="##cat_announce##"-->
<!--#set var="item_cat_body;itemD_cat_body;urgent_item_cat_body" value="##cat_body##"-->
<!--#set var="item_cat_link" value="<a href="##script_link##?##front_cats_link##">%%back_category_list%%</a>"-->

<!--#set var="itemD_cat_announce" value="<tr><td colspan="2">##cat_announce##</td></tr>"-->
<!--#set var="itemD_cat_body" value="<tr><td colspan="2">##cat_body##</td></tr>"-->
<!--#set var="itemD_cat_link" value="
<a href="##script_link##?##front_cats_link##">%%back_category_list%%</a>
"-->

##-- ****************** Splitters for categories list ***************************************** --##

<!--#set var="cat_Vsplitter;urgent_cat_Vsplitter" value="</tr><tr>"-->
<!--#set var="cat_Hsplitter;urgent_cat_Hsplitter" value=""-->

##-- ================== Categories list sets ==================================== --##

<!--#set var="cat_row_links" value="
<td valign=top>
  ##name_links##
    <div>##--picture--##</div>
    <div>##--small_picture--##</div>
    <div>##--announce--##</div>
   ##-- <div>##cat_counter##</div>--##
    <div>##item_list##</div>
</td>
"-->

<!--#set var="cat_row" value="
<td valign=top>
  <p>
    ##--cat_row_index--## ##name## ##num_items##
    <div>##picture##</div>
    <div>##small_picture##</div>
    <div>
    ##announce##
    </div>
    ##--<div>##cat_counter##</div>--##
    ##common_cf_list##
    <div>##item_list##</div>
                </p>
</td>
"-->

<!--#set var="urgent_cat_row" value="
<td valign=top class="urgent_cat_row">
  <p>
    ##--cat_row_index--## ##name## ##num_items##
    <div>##picture##</div>
    <div>##small_picture##</div>
    <div>
    ##announce##
    </div>
    ##--<div>##cat_counter##</div>--##
    ##common_cf_list##
    <div>##item_list##</div>
</p>
"-->

<!--#set var="cat_form_row" value="
<tr>
  <td>%%faq_cat%%:</td>
  <td><u>##cat_name##</u></td>
</tr>
<tr>
"-->


##-- ================== Styles for subitem list =========================== --##

<!--#set var="item_date;small_date;urgent_item_date" value="##date##"-->
<!--#set var="item_author;small_author;urgent_item_author" value="##author##"-->
<!--#set var="item_email;small_email;urgent_item_email" value="##email##"-->
<!--#set var="item_question;subitem_question;small_question;urgent_item_question" value="##question##"-->
<!--#set var="item_answer;urgent_item_answer" value="##answer##"-->

<!--#set var="item_top_link" value="<a href="##faq_link####nav_data##catoffset=##catoffset##">%%faq_list_start%%</a>"-->



##-- ================== Subitem list sets ==================================== --##

<!--#set var="subitem_question_links" value="##question##"-->

<!--#set var="question_subitem_link" value="
<tr><td valign=top><a href="##script_link###q##id##">##--q_row_index--####question##</a></td></tr>
"-->

<!--#set var="subitem_row_links" value="
##--<td><br><br>##subject##</td></tr>--##
##question_data##
##--howto_rows--##
"-->

<!--#set var="subitem_list_links" value="
<tr>##item_list##</tr>
"-->

<!--#set var="cat_lname_links" value="<div style="padding-bottom:15px;"><div class="alt_header4"><a href="##script_link####nav_data##&catoffset=##catoffset###ccat">##name##</a></div></div>"-->

<!--#set var="cat_list_links" value="
<tr>
##list##
</tr>
<tr><td height=30><img src="_img/spacer.gif"></td></tr>
"-->


<!--#set var="subitem_list" value="
<table cellspacing=0 cellpadding=0 border=0 width=100%>
  <tr>
  ##item_list##
  </tr>
</table>
"-->

<!--#set var="itemD_date" value="##date##"-->
<!--#set var="itemD_author" value="##author##"-->
<!--#set var="itemD_email" value="##email##"-->
<!--#set var="itemD_question" value="##question##"-->
<!--#set var="itemD_answer" value="##answer##"-->

<!--#set var="question_body" value="
%%question%%: ##question##
<br>%%answer%%: ##answer##<br>

    ##if(EXTENSION_RATING=="1")##
<br>##rating_block## ##votes_block## ##rating_form##
    ##endif##

<br>
"-->

<!--#set var="question_link" value="
<a href="##script_link####nav_data##">##question##</a>
"-->


<!--#set var="itemD_top_link" value="<a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_name##</a>"-->

##--
<!--#set var="cat_top_link" value="<a href="##script_link##?catoffset=##catoffset##">%%faq_cat_list_start%%</a>"-->
<!--#set var="cat_more" value="<a href="##script_link####nav_data##catoffset=##catoffset##"">%%faq_list%%</a>"-->
--##

<!--#set var="item_lastN_cat_name" value="<h2>%%faq_cat%%:&nbsp;##name##</h2>"-->
<!--#set var="item_lastN_top_link" value="<a href="##script_link##">%%faq_all%%</a>"-->

<!--#set var="item_Vsplitter;subitem_Vsplitter;urgent_item_Vsplitter" value="</tr><tr>"-->
<!--#set var="item_lastN_Vsplitter" value="</tr><tr>"-->
<!--#set var="cat_Hsplitter;urgent_cat_Hsplitter" value=""-->
<!--#set var="cat_Vsplitter;urgent_cat_Vsplitter" value="</tr><tr>"-->

<!--#set var="item_Hsplitter;subitem_Hsplitter;urgent_item_Hsplitter" value=""-->

<!--#set var="subitem_nSplitter;small_nSplitter" value=""-->

<!--#set var="small_Vsplitter" value=""-->
<!--#set var="small_Hsplitter" value=""-->

<!--#set var="item_details" value="
<tr><td colspan="2"><a href="##script_link##?##front_cats_link##"><b>%%faq%%</b></a> / <a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##"><b>##cat_name##</b></a></td></tr>
<tr><td colspan="2">##cat_announce##</td></tr>
##--
<tr><td colspan="2">##cat_body##</td></tr>
<tr><td colspan="2">##cat_small_picture##</td></tr>
<tr><td colspan="2">##cat_picture##</td></tr>
<tr><td colspan="2"></td></tr>

<tr><td colspan="2">##small_picture##</td></tr>
<tr><td colspan="2">##picture##</td></tr>
<tr><td colspan="2">##big_picture##</td></tr>
--##
<tr>
<td>
  <p>%%question%%:  ##question##</p>
  <p>%%answer%%:  ##answer##</p>

  ##-- <p>%%by%%: <a href="mailto:##email##">##author##</a> [ ##fdate## ] --##

##common_cf_list##
##if(EXTENSION_RATING=="1")##
<br><br>##rating_block## ##votes_block## ##rating_form##
##endif##
<p>##cat_link## / ##top_link##</p>
</td>
</tr>
"-->

<!--#set var="item_row;subitem_row" value="
<td valign=top>
  <a name="q##id##"></a><br>
  ##q_row_index## ##question_data##
  ##-- <br>%%by%%: <a href="mailto:##email##">##author##</a> [ ##fdate## ] --##
  ##common_cf_list##
  ##if(EXTENSION_RATING=="1")##
  <br>##rating_block## ##votes_block## ##rating_form##
  ##endif##
  <br>
</td>
"-->

<!--#set var="urgent_item_row" value="
<td valign=top class="urgent_item_row">
  <a name="q##id##"></a><br>
  ##q_row_index## ##question_data##
  ##-- <br>%%by%%: <a href="mailto:##email##">##author##</a> [ ##fdate## ] --##
  ##common_cf_list##
  ##if(EXTENSION_RATING=="1")##
  <br>##rating_block## ##votes_block## ##rating_form##
  ##endif##
  <br>
</td>
"-->


<!--#set var="question_row;urgent_question_row" value="
<td><a href="javascript:void(0);" OnClick="top.location.href='#q##id##';">##question##</a></td>
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

<!--#set var="item_lastN_row" value="
<td valign=top>
  ##cat_name##
  <div class="alt_header3">##date##</div>
  ##author## ##email##
  <blockquote>
    ##question##
  </blockquote>
    ##more##
<br>
</td>
"-->

<!--#set var="item_list" value="
<tr><td>##pager##</td></tr>
<tr>
##list##
</tr>
<tr><td>##pager##</td></tr>
<tr><td>##top_link##</td></tr>
"-->

<!--#set var="urgent_item_list" value="<tr>##list##</tr>"-->

<!--#set var="question_list;urgent_question_list" value="
<tr>
##list##
</tr>
"-->

<!--#set var="item_list_empty" value="
<tr><td>%%faq_empty%%</td></tr>
"-->

<!--#set var="item_lastN_list" value="
<tr>
##list##
</tr>
<tr><td>##top_link##</td></tr>
"-->

<!--#set var="item_lastN_list_empty" value="
<tr><td>%%faq_empty%%</td></tr>
"-->

<!--#set var="cat_list" value="
<tr><td><div class="alt_header4">%%back_category_list%%</div></td></tr>
<tr><td>##pager##</td></tr>
<tr>
##list##
</tr>
<tr><td>##pager##</td></tr>
##-- <tr><td>##top_link##</td></tr>
--##
"-->
<!--#set var="cat_list_empty" value="
<tr><td>%%faq_cat_empty%%</td></tr>
"-->

<!--#set var="urgent_cat_list" value="<tr>##list##</tr>"-->

##-- ============================= Sort sets ============================= --##
<!--#set var="body_cats_sort" value="
 <tr><td  height=30>%%sort_over%%##all_sort_fileds##</td></tr>
"-->

<!--#set var="body_items_sort" value="
<tr><td  height=30>%%sort_over%%##all_sort_fileds##</td></tr>
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

<center>
%%form_welcome%%<br><br>
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
</center>
"-->

<!--#set var="register" value="
%%to_ask_questions%% <a href="##register_link##">%%please_register%%</a>.<br><br>
"-->

<!--#set var="body_cats" value="
##--<tr><td>##filter##</td></tr>--##
##--sort--##
##cat_list_links##
<tr><td>##cat_list##</td></tr>
<tr><td><br><br>##form##</td></tr>
"-->

<!--#set var="body_questions" value="
##question_list##
"-->

<!--#set var="body_items" value="
<tr><td>##filter##</td></tr>
##cat_list##
<tr><td>
<b><a name="ccat"
href="##script_link##?##front_cats_link##">%%faq%%</a> /  <b>##cat_name##</b><br></td></tr>
<tr><td>##cat_announce##</td></tr>
##sort##
<tr><td>
##question_list##
<hr>
</td></tr>
##urgent_item_list####item_list##
<tr><td align="center">
##form##
</td></tr>
<tr><td>##cat_link##</td></tr>
"-->

<!--#set var="body_catD_lastN" value="
##-- ##cat_list## --##
<tr><td>##cat_detail##</td></tr>
##item_list##
"-->

<!--#set var="body_itemD" value="
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
<tr><td colspan="2"><h2><a href="##script_link##?##front_cats_link##">%%faq%%</a> / <a href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_name##</a></h2></td></tr>
##cat_announce##
##cat_body##
<tr>
<td>
%%no_item%%
</td>
</tr>
"-->


##-- ****************** BODY ****************************** --##
<!--#set var="main_body" value="
<script>
<!--
  var _cms_document_form = 'artsform';
  var _cms_script_link = '##script_link##?';
-->
</script>

<TABLE cellspacing=0 cellpadding=10 width="100%" border=0>
<TBODY>
    ##body##
</TBODY>
</TABLE>
"-->

<!--#set var="common_cf_list(module="faq_cat")" value="<div class="faq_cat_common_cf_list">##list##</div>"-->
<!--#set var="common_cf_list(module="faq")" value="<div class="faq_common_cf_list">##list##</div>"-->
