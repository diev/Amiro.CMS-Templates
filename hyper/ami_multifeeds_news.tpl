##--
Шаблон кофигурации "Новости".
Этот шаблон содержит общие сеты для всех модулей конфигурации "Новости".
Сеты могут быть переопределены в шаблоне конкретного модуля.
Чтобы избежать излишнего переопределения сетов в шаблоне модуля используйте переменную
##AMI_MOD_ID## для формирования имен классов CSS или в условных конструкциях.
Пример: class="##AMI_MOD_ID##_item". Имя класса будет содержать название модуля.

Template of configuration "News".
This template contains common sets for each module of configuration "News".
Settings can be overridden in the template of the module.
To avoid unnecessary overrides of sets in the template module, use the variable
##AMI_MOD_ID## to form the CSS class name or use the conditions ##IF()##.
Example: class = "##AMI_MOD_ID##_item". The class name will contain the name of the module.
--##

%%include_language "templates/lang/hyper/ami_multifeeds_news.lng"%%
