##--system info: module_owner="modules" module="search" system="1"--##
%%include_language "templates/lang/_search.lng"%%

<!--#set var="found_word_start" value="<span class="hl_text">"-->
<!--#set var="found_word_end" value="</span>"-->

<!--#set var="item_row" value="
	##--
	##setvar @rowNum=(abs_row_index+1)##
	<tr><td style="clear:left; //height: 1px;">
	<div style="float:left;width:16px;text-align:right;margin-right:-16px;">##rowNum##.</div>
	--##
	##--<div style="padding-left:25px;height:1%"><b><a href="##link##">##title##</a></b>--##
	<section>
		<h2><a href="##link##">##title##</a></h2>
		<div>##announce####--announce_full--##</div>
		<div><a href="##link##">##link##</a></div>
	</section>
"-->

<!--#set var="item_list_empty" value="
	%%nothing%%
"-->

<!--#set var="wrong_query" value="
	<div class="alt_header3">%%nothing%%</div>
	<b>%%wrong_query%%</b>
"-->

<!--#set var="advanced_search_js;advanced_search_js_small" value="
	function showSearchPages(){
		var fieldsObj = document.getElementById('searchPageFields');
		if(fieldsObj != null){
			if(fieldsObj.style.display == 'none'){
				fieldsObj.style.display = 'block';
				document.##form_name##.ia.value = 2;
			}else{
				fieldsObj.style.display = 'none';
				document.##form_name##.ia.value = 1;
			}
		}
	}

	function advancedSearchClick(idPage, checkState){
		if(idPage == 0){
			var oForm = document.##form_name##;
			var isDisabled = checkState;
			for(var i = 0; i < oForm.elements.length; i++){
				if(oForm.elements[i].name == 'spage[]' && oForm.elements[i].value != '0'){
					oForm.elements[i].disabled = isDisabled;
				}
			}
		}
	}
"-->

<!--#set var="id_page_hidden_field;id_page_hidden_field_small" value="<input type="hidden" name="spage[]" value="##id_page##">"-->
<!--#set var="id_page_splitter;id_page_splitter_small" value="<br>"-->
<!--#set var="id_page_field;id_page_field_small" value="<input type="checkbox" name="spage[]" value="##id_page##" ##checked## ##disabled## onClick="advancedSearchClick('##id_page##', checked)"> ##name##"-->
<!--#set var="id_page_list;id_page_list_small" value="<br><a href="javascript:showSearchPages()">%%advanced_search%%</a><div id="searchPageFields" style="display:##if(advanced_expanded)##block##else##none##endif##">##page_fields##</div>"-->

<!--#set var="small_block" value="
	<form name="small_search" action="##search_link##" method="get">
		<input type="text" name="words" id="idSearchWords##BLOCK_PREFIX##" class="txt wd2" value="%%search_word%%" onfocus="if(this.value=='%%search_word%%') this.value='';" onblur="if(this.value=='') this.value='%%search_word%%';" size="20" autocomplete="off">
		<input type="hidden" name="is" value="1">
		<input type="hidden" name="ia" value="##is_advanced##">
		<input type="hidden" name="pages" value="##page_fields_list##">
		<script language="JavaScript" type="text/javascript">document.write('<' + 'input type="hidden" name="pf" value="##pf##">')</script>
		##page_fields##
	</form>
	<script type="text/javascript">
		##--
		var suggestionRequestData = {
			id_plugin: 'ami_ajax_responder',
			locale:    'ru',
			module:    'search_history',
			order:     'quantity',
			dir:       'D',
			limit:     '10',
			offset:    '0'
		};
		var searchVariants = new AMI.UI.Suggestion('idSearchWords##BLOCK_PREFIX##', suggestionRequestData);
		--##
		##advanced_search_js##
	</script>
"-->
<!--#set var="item_list" value="
	##list##
	##pager##
"-->

<!--#set var="body_items" value="
	##item_list##
"-->

<script type="text/javascript" language="JavaScript1.2">
	##advanced_search_js##
</script>
<form method="get" action="##script_link##" name="search">
	<table border="0" width=100% cellpadding=o cellspacing=0>
		<tr>
			<td align="left">
				<input type=text  class="txt wd4" name="words" value="##words##" maxlength=150>
				&nbsp;
				<input class="btn wd1" type=submit value="%%search%%">
				<input type="hidden" name="is" value="1">
				<input type="hidden" name="ia" value="##is_advanced##">
				<input type="hidden" name="pages" value="##page_fields_list##">
				<script language="JavaScript" type="text/javascript">document.write('<' + 'input type="hidden" name="pf" value="##pf##">')</script>
				##page_fields##
			</td>
		</tr>
	</table>
</form>

##if(EMPTY_QUERY!="1")##
	<p>%%query%%: <b>##query##</b> %%pages%%: ##if(_total_rows > 0)####_total_rows####else##0##endif##</p>
##endif##

##body##
