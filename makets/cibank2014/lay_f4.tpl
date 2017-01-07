##--g_page_prev_next--
##spec_prev_next_001004115##
<h3>Полезные ссылки
	<span class="right">
		##g_page_prev##
		##g_page_next##
		##g_print_version##
	</span>
</h3>--##
<div class="dark mark">
	<nav>
		##IF(strlen(g_pages_nav)>29)##
		##g_pages_nav##
		##else##
		##g_pages_back##
		##endif##
		##g_files_aside##
		##--
		<hr>
		<a class="h3" target="_blank" href="ftpgetfile.php?id=617&module=files">
			<span class="menu-val"><img border="0" align="absmiddle" src="http://www.cibank.ru/ftpicons/small_word.gif" alt="DOC"></span>
			Согласие на обработку персональных данных.doc
		</a>
		--##
	</nav>
</div>
##IF(strpos(script_link,"/corporate")>0||strpos(script_link,"/retail")>0)##
<div id="tariff" class="dark">
	<a class="bigbutton" title="Тарифы Банка" href="ru/tariff">Тарифы</a>
	<p>Каталог услуг и тарифов <nobr>АО «Сити Инвест Банк»</nobr></p>
</div>
##endif##
