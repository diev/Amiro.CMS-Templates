﻿<!DOCTYPE html>
<!--Начало страницы - блок HEAD-->
##init##
<body leftmargin=0 topmargin=0>
	<div id=stat>
		<!--Скрипт статистики в скрытом блоке-->
		##stat_agent##
	</div>
	<div id=strip class="print-hidden"></div>
	<div id=layout>
		##--<div id=present></div>--##
		<header role="banner">
			<div id=lay_f1 class="header">
				<!--Верхний информационный блок (заголовок) страницы-->
				##lay_f1_body##
			</div>
		</header>
		<nav role="navigation">
			<div id=lay_f2 class="topmenu print-hidden">
				<!--Верхнее меню-->
				##lay_f2_body##
			</div>
			<div id=lay_f3 class="menu2 print-hidden">
				<!--Верхнее меню второй уровень-->
				##lay_f3_body##
			</div>
		</nav>
		<aside role="complementary">
			<div id=lay_f4 class="aside print-hidden">
				<!--Правый информационный блок (боковик) страницы-->
				##lay_f4_body##
			</div>
		</aside>
		<section role="main">
			<div id=lay_f5 class="caption">
				<!--Путь и название страницы-->
				##lay_f5_body##
			</div>
			<div id=lay_body class="content">
				<!--Блок системных статусных сообщений-->
				##status_messages##
				<!--Основной информационный блок (тело) страницы-->
				##lay_body_body##
			</div>
		</section>
		<footer role="contentinfo">
			<div id=lay_f7 class="nav print-hidden">
				<!--Нижнее меню-->
				##lay_f7_body##
			</div>
			<div id=lay_f8 class="nav print-hidden">
				<!--Нижний информационный блок (подвал) страницы-->
				##lay_f8_body##
			</div>
			<div id=lay_f9 class="footer">
				<!--Копирайт страницы-->
				##lay_f9_body##
			</div>
		</footer>
	</div>
</body>
<!--Конец страницы и закрывающие теги HTML-->
##end##
