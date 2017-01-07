%%include_language "templates/lang/main.lng"%%


<!--#set var="page_not_found" value="<div class="alt_header2"><font color=#ff0000>%%page_not_found%%</font></div>"-->

<!--#set var="page_not_found_tag" value=""-->

<!--#set var="lang_select_form" value="
	<div class="lang_sel">
		<form action="" name="langSel">
			%%cur_lang%%:
			<select name="lang" onchange="javascript:document.location='##www_root##'+langSel.lang.value+'/##lang_free_script_link##';">
				<option ##lang_sel_en## value="en">%%eng%%</option>
				<option ##lang_sel_ru## value="ru">%%rus%%</option>
			</select>
			##-- <input type="submit" value="%%lang_change_btn%%" class=btn> --##
		</form>
	</div>
	<br>
"-->

##--
<!--#set var="lang_select_form" value="
	<div class="lang_sel">
		##if(lang_sel_en=="selected")##
			<img src="_img/flag_en.gif" alt="%%eng%%">
		##else##
			<a href="##www_root##en/##lang_free_script_link##"><img src="_img/flag_en.gif" alt="%%eng%%"></a>
		##endif##
		&nbsp;&nbsp;
		##if(lang_sel_ru=="selected")##
			<img src="_img/flag_ru.gif" alt="%%rus%%">
		##else##
			<a href="##www_root##ru/##lang_free_script_link##"><img src="_img/flag_ru.gif" alt="%%rus%%"></a>
		##endif##
	</div>
"-->
--##

<!--#set var="stat_agent" value="<div id=stat>##content##</div>"-->

<!--#set var="page_header" value="##content##"-->

<!--#set var="page_prev" value="<span id=page_prev><a href="##front_link##" title="##name####--%%page_prev%%--##">&lsaquo;</a></span>"-->
<!--#set var="page_next" value="<span id=page_next><a href="##front_link##" title="##name####--%%page_next%%--##">&rsaquo;</a></span>"-->
<!--#set var="page_prev_next_splitter" value=""-->
<!--#set var="page_prev_next" value="
	##setglobalvar @g_page_prev = prev##
	##setglobalvar @g_page_next = next##
	##--<div id=page_prev_next>##prev####splitter####next##</div>--##
"-->

<!--#set var="module_body" value="<output>##content##</output>"-->

<!--#set var="page_body" value="<main>##content##</main>"-->
