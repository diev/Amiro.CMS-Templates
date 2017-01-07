<!DOCTYPE html>
<!--Начало страницы - блок <HEAD></HEAD>-->
##init##
<body leftmargin=0 topmargin=0>
	<div id=stat>
		<!--Скрипт статистики в скрытом блоке-->
		##stat_agent##
	</div>
	<div id=layout>
		<header>
			<div id=lay_f1>
				<!--Верхний информационный блок (заголовок) страницы-->
				##lay_f1_body##
			</div>
		</header>
		<article>
			<div id=lay_body class="content">
				<!--Блок системных статусных сообщений-->
				##status_messages##
				<!--Основной информационный блок (тело) страницы-->
				##lay_body_body##
			</div>
		</article>
		<footer>
			<div id=lay_f9 class="footer">
				<!--Копирайт страницы-->
				##lay_f9_body##
			</div>
		</footer>
	</div>
</body>
<!--Конец страницы и закрывающие тэги HTML-->
##end##
