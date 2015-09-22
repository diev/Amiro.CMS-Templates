##--
Шаблон гипермодуля "Информационная лента".
Этот шаблон содержит общие сеты для всех модулей типа "Информационная лента".
Сеты могут быть переопределены в шаблоне конфигурации для всех модулей этой конфигурации и/или в шаблоне конкретного модуля.
Чтобы избежать излишнего переопределения сетов в шаблонах конфигурации и/или модуля используйте переменные:
##AMI_CONF_ID## и ##AMI_MOD_ID## для формирования имен классов CSS или в условных конструкциях.
Пример: class="##AMI_CONF_ID##_item". Имя класса будет содержать название конфигурации.

Template of hypermodule "Information Tape."
This template contains common sets for each module of the type "Information Tape".
Settings can be overridden in the template of configuration for all modules of this configuration and/or in the template of specific module.
To avoid unnecessary overrides of sets in the template of configuration and/or the module, use the variables
##AMI_CONF_ID## and ##AMI_MOD_ID## to form the CSS class name or use the conditions ##IF()##.
Example: class = "##AMI_CONF_ID##_item". The class name will contain the name of the configuration.
--##

%%include_template "templates/_icons.tpl"%%
%%include_template "templates/modules/_sort.tpl"%%
%%include_template "templates/adv_places_common.tpl"%%
%%include_language "templates/lang/_menu.lng"%%
%%include_template "templates/ext_modules_custom_fields.tpl"%%
%%include_template "templates/modules/ext_image.tpl"%%
%%include_template "templates/modules/ext_tags.tpl"%%
%%include_template "templates/modules/ext_discussion.tpl"%%

##-- ---------------------------------------------------------------------------------- --##
##-- --------------------------------- Minisets --------------------------------------- --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Minisets for category item list
 */--##

<!--#set var="search_item_img;search_item_img_small;item_img_small;item_img;sticky_item_img_small;item_cat_img;item_cat_img_small;cat_img_small;img_small;small_img_small;subitem_img_small;subitem_img;sticky_item_img" value="<div class="##AMI_CONF_ID##_item-row__##__SET_NAME__##-img"><img class="mb-image" ##if(popup_picture_src)##onclick="show_picture('##www_root##show_pic.php', '##popup_picture_src##', '##picture_title##', '##popup_picture_width##', '##popup_picture_height##'); return false;" class="##AMI_CONF_ID##_item-detail__img mb-image"##else##class="##AMI_CONF_ID##_item-detail__img"##endif## src="##img##" border=0 title="##title##" alt="##title##"></div>"-->
<!--#set var="cat_header;sticky_cat_header" value="##header##"-->
<!--#set var="cat_lheader;sticky_cat_lheader" value="<a class="##AMI_CONF_ID##_item-list__cat-header" href="##front_link####nav_data##&catoffset=##catoffset##">##header##</a>"-->
<!--#set var="cat_announce;sticky_cat_announce" value="<div class="##AMI_CONF_ID##_item-cat-row__announce">##announce##</div>"-->
<!--#set var="cat_body;sticky_cat_body" value="##body##"-->
<!--#set var="cat_num_public_items;sticky_cat_num_public_items" value="[ ##num_public_items## ]"-->

##--
/**
 * Minisets for category item detail
 */--##

<!--#set var="catD_img_small;itemD_cat_img;itemD_cat_img_small;itemD_big_img;cat_img;catD_img;itemD_img;itemD_img_small;" value="<div class="##AMI_CONF_ID##_item-detailed__##__SET_NAME__##-img"><img src="##img##" border=0 title="##title##" alt="##title##"></div>"-->
<!--#set var="item_cat_header;itemD_cat_header" value="##cat_header##"-->
<!--#set var="item_cat_announce" value="##cat_announce##"-->
<!--#set var="itemD_cat_announce" value="##cat_announce##"-->
<!--#set var="item_cat_body;itemD_cat_body" value="##cat_body##"-->
<!--#set var="item_cat_link" value="<a class="##AMI_CONF_ID##_item-list__cat-back-cat-link" href="##script_link##?##front_cats_link##">##page_name##</a>"-->
<!--#set var="item_ftime;browse_item_ftime;sticky_item_ftime" value="<span class="##AMI_CONF_ID##_item-row__ftime">| ##ftime##</span>"-->
<!--#set var="itemD_cat_body" value="##cat_body##"-->
<!--#set var="itemD_cat_link" value="<a class="##AMI_CONF_ID##_item-list__cat-back-link" href="##script_link##?##front_cats_link##">##page_name##</a>"-->
<!--#set var="itemD_cat_item_link" value="&nbsp;/&nbsp; <a class="##AMI_CONF_ID##_item-list__cat-back-header" href="##script_link####cat_nav_data####front_items_link##">##_cat_header##</a>"-->
<!--#set var="itemD_item_link" value="##--<a class="##AMI_CONF_ID##_item-list__cat-back" href="##script_link####cat_nav_data####front_items_link##">%%back%%</a>--##"-->
<!--#set var="itemD_ftime" value="<span class="##AMI_CONF_ID##_item-detailed__ftime">| ##ftime##</span>"-->

##--
/**
 * Minisets for item row
 */--##

<!--#set var="item_header;browse_item_header;sticky_item_header;subitem_header" value="<a class="##AMI_CONF_ID##_item-row__header-name" href="##front_link####nav_data##offset=##offset##&catoffset=##catoffset##">##header##</a>"-->
<!--#set var="subitem_announce;item_announce;browse_item_announce;sticky_item_announce" value="<div class="##AMI_CONF_ID##_item-row__announce">##announce##</div>"-->
<!--#set var="item_author;small_author;sticky_item_author" value="<span class="##AMI_CONF_ID##_item-row__author">%%by%%: ##author## &nbsp;</span>"-->
<!--#set var="item_source;small_source;sticky_item_source" value="<span class="##AMI_CONF_ID##_item-row__source">%%source%%: ##source## &nbsp;</span>"-->
<!--#set var="item_more;subitem_more_link;sticky_item_more" value="<a class="##AMI_CONF_ID##_item-row__more" href="##front_link####nav_data##offset=##offset##">%%more%%</a>"-->
<!--#set var="item_top_link" value="<a class="##AMI_CONF_ID##_item-row__item-top-link" href="##articles_link####nav_data##catoffset=##catoffset##">%%articles_list_start%%</a>"-->
<!--#set var="item_fdate;browse_item_fdate;sticky_item_fdate;subitem_fdate;small_fdate" value="<span class="##AMI_CONF_ID##_item-row__fdate">##fdate##</span>"-->

##--
/**
 * Minisets for item detail
 */--##

<!--#set var="itemD_fdate" value="<span class="##AMI_CONF_ID##_item-detailed__fdate">##fdate##</span>"-->
<!--#set var="itemD_header" value="##header##"-->
<!--#set var="itemD_announce" value="<div class="##AMI_CONF_ID##_item-detailed__announce">##announce##</div>"-->
<!--#set var="itemD_body" value="<div class="##AMI_CONF_ID##_item-detailed__body">##body##</div>"-->
<!--#set var="itemD_author" value="<span class="##AMI_CONF_ID##_item-detailed__author">| %%by%%: ##author##</span>"-->
<!--#set var="itemD_source" value="<span class="##AMI_CONF_ID##_item-detailed__source">| %%source%%: ##source##</span>"-->
<!--#set var="itemD_top_link" value="<a class="##AMI_CONF_ID##_item-detailed__top-link" href="##script_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_header##</a>"-->
<!--#set var="item_lastN_cat_header" value="<h2 class="##AMI_CONF_ID##_item-detailed__articles-cat">%%articles_cat%%: ##header##</h2>"-->
<!--#set var="item_lastN_top_link" value="<a class="##AMI_CONF_ID##_item-detailed__articles-all" href="##script_link##">%%articles_all%%</a>"-->

##--
/**
 * Minisets for small specblock
 */--##

<!--#set var="small_ftime" value="<span class="##AMI_CONF_ID##_item-small__ftime">##ftime##</span>"-->
<!--#set var="small_announce" value="<div class="##AMI_CONF_ID##_item-small-row__announce">##announce##</div>"-->
<!--#set var="small_fdate" value="<span class="##AMI_CONF_ID##_item-small__fdate">##fdate##</span>"-->
<!--#set var="small_header" value="<a href="##front_link####nav_data##">##header##</a>"-->
<!--#set var="small_more" value="<a class="##AMI_CONF_ID##_item-small__more" href="##front_link####nav_data##">%%more%%</a>"-->

##-- ---------------------------------------------------------------------------------- --##
##-- -------------------------------- Splitters --------------------------------------- --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Splitters for small row
 */--##

<!--#set var="small_Vsplitter" value=""-->
<!--#set var="small_Hsplitter" value=""-->

##--
/**
 * Splitters for cat row
 */--##

<!--#set var="cat_Hsplitter;sticky_cat_Hsplitter" value=""-->
<!--#set var="cat_Vsplitter;sticky_cat_Vsplitter" value=""-->

##--
/**
 * Splitters for item row
 */--##

<!--#set var="item_Vsplitter;subitem_Vsplitter;sticky_item_Vsplitter" value=""-->
<!--#set var="item_Hsplitter;subitem_Hsplitter;sticky_item_Hsplitter" value=""-->

##--
/**
 * Splitters for browse item row
 */--##

<!--#set var="browse_item_Vsplitter" value=""-->
<!--#set var="browse_item_Hsplitter" value=""-->

##--
/**
 * Splitters for lastN row
 */--##

<!--#set var="item_lastN_Vsplitter" value=""-->

##--
/**
 * Splitters for nSplitter row
 */--##

<!--#set var="subitem_nSplitter;small_nSplitter" value=""-->

##-- ---------------------------------------------------------------------------------- --##
##-- ---------------------- Sorts of category and item list --------------------------- --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Sorts of category
 */--##

<!--#set var="body_cats_sort" value="
<div class="##AMI_CONF_ID##_cat-sort">
    <div class="##AMI_CONF_ID##_cat-sort__header">##sort_header## %%sort_cat_header%%</div>
    <div class="##AMI_CONF_ID##_cat-sort__position">##sort_position## %%sort_cat_position%%</div>
</div>
"-->

##--
/**
 * Sorts of item list
 */--##

<!--#set var="body_items_sort" value="
<div class="##AMI_CONF_ID##_item-sort">
    <div class="##AMI_CONF_ID##_item-sort__header">##sort_header## %%sort_header%%</div>
    <div class="##AMI_CONF_ID##_item-sort__date">##sort_date_created## %%sort_date_created%%%</div>
</div>
"-->

##-- ---------------------------------------------------------------------------------- --##
##-- -------------------------------- Small specblock --------------------------------- --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Small specblock list
 */--##

<!--#set var="small_list" value="##list##"-->
<!--#set var="small_list_empty" value="<div class="##AMI_CONF_ID##_item-small__empty">%%no_items%%</div>"-->

<!--#set var="body_small" value="
<div class="##AMI_CONF_ID##_item-small">##small_list##</div>
<div class="##AMI_CONF_ID##_item-small__rss">##rss_generate##</div>
"-->

##--
/**
 * Small specblock item row
 */--##

<!--#set var="small_row" value="
<span class="##AMI_CONF_ID##_item-small-row global_cols_##_cols##">
    ##fdate##
    <div class="##AMI_CONF_ID##_item-small-row__header">
        ##IF(ext_category_enabled && cat_header != '')##<span class="##AMI_CONF_ID##_item-small-row__cat_header"><a href="##front_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_header##</a> <span><span>&rarr;</span></span></span> ##ENDIF##
        ##header##
        ##if(AMI_CONF_ID == 'blog')##
        ##--<div class="##AMI_CONF_ID##_item-small-row__control-panel">--##
            ##if(ext_discussion_enabled)##<span onclick="location.href='##front_link####nav_data##forum_ext=1#forumForm'" class="##AMI_CONF_ID##_item-small-row__control-panel__discussion">##ext_discussion_count##</span>##endif##
            ##if(ext_rating_enabled)##<span onclick="location.href='##front_link####nav_data##'" class="##AMI_CONF_ID##_item-small-row__control-panel__votes-rate">##votes_count##</span>##endif##
        ##--</div>--##
        ##endif##
    </div>
    ##if(img_small != '')##<div class="##AMI_CONF_ID##_item-small-row__img">##img_small##</div>##endif##
    ##--announce--##
</span>
"-->

##--
/**
 * Small specblock item detail
 */--##

<!--#set var="small_cat_detail" value="
<div class="##AMI_CONF_ID##_item-small__cat-header"><a href="##front_link####cat_nav_data##">##cat_header##</a></div>
<div class="##AMI_CONF_ID##_item-small__cat-announce">##cat_announce##</div>
"-->

##-- ---------------------------------------------------------------------------------- --##
##-- --------------------------- Category & subcategory ------------------------------- --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Category list
 */--##

<!--#set var="body_cats" value="
<div class="##AMI_CONF_ID##_item-list__cat-sticky">##sticky_cat_list##</div>
<div class="##AMI_CONF_ID##_item-list__cat-list">##cat_list##</div>
"-->

<!--#set var="cat_list" value="
<h3>##g_pages_path##</h3>
<h1>##page_name##</h1>
<div class="##AMI_CONF_ID##_item-cat-list">##list##</div>
<div class="##AMI_CONF_ID##_item-cat-list__pager">##pager##</div>
"-->

<!--#set var="subitem_list" value="<div class="##AMI_CONF_ID##_item-list__subitem-list">##list##</div>"-->
<!--#set var="cat_list_empty" value="<div class="##AMI_CONF_ID##_item-list__empty">%%cat_list_empty%%</div>"-->
<!--#set var="sticky_cat_list" value="<div class="##AMI_CONF_ID##_item-list__sticky">##list##</div>"-->

##--
/**
 * Category item row
 */--##

<!--#set var="cat_row;sticky_cat_row" value="
<span class="##AMI_CONF_ID##_item-cat-row global_cols_##_cols##">
    <div class="##AMI_CONF_ID##_item-cat-row__header">
        ##header##
        <span class="##AMI_CONF_ID##_item-cat-row__num-public-items">##num_public_items##</span>
    </div>
    ##img_small##
    ##announce##
    <div class="ext_discussion-cf ##AMI_CONF_ID##_item-cat-row__ext_discussion">##discussion_link##</div>
    <div class="ext_common-cf ##AMI_CONF_ID##_item-cat-row__ext_common-cf">##common_cf_list##</div>
    ##if(item_list != '')##<div class="##AMI_CONF_ID##_item-cat-row__item-list">##item_list##</div>##endif##
</span>
"-->

##-- ---------------------------------------------------------------------------------- --##
##-- --------------------------- Item row & item details ------------------------------ --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Item list
 */--##

<!--#set var="item_list;sticky_item_list" value="
<div class="##AMI_CONF_ID##_item-list__list">##list##</div>
<div class="##AMI_CONF_ID##_item-list__pager">##pager##</div>
"-->

##--
/**
 * Item row
 */--##

<!--#set var="item_row;subitem_row;sticky_item_row" value="
<span class="##AMI_CONF_ID##_item-row global_cols_##_cols##">
    ##if(AMI_CONF_ID == 'blog')####ftime####endif####if(AMI_CONF_ID != 'articles')####fdate####endif##
    <div class="##AMI_CONF_ID##_item-row__header">##IF(no_cat_mode)##<a href="##front_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_header##</a> - ##ENDIF####header##</div>
    ##if(AMI_CONF_ID == 'articles')##<span class="articles_item-row__fdate-block">##fdate## |</span>##endif##
    ##author##
    ##source##
    ##img_small##
    ##announce##
    ##if(ext_custom_fields_enabled)##<div class="ext_common-cf ##AMI_CONF_ID##_item-row__ext_common-cf">##common_cf_list##</div>##endif##
    ##if(ext_rating_enabled)##<div class="ext_rating ##AMI_CONF_ID##_item-row__ext_rating">##rating_block## ##votes_block## ##rating_form##</div>##endif##
    ##if(ext_discussion_enabled)##<a href="##www_root####script_link##/##catid_sublink##/##sublink##?forum_ext=1#forumForm" class="##AMI_CONF_ID##_control-panel__comments">##if(count_replies != 0)##<div class="##AMI_CONF_ID##_control-panel__comments-count">##count_replies##</div>##endif##</a>##endif##
    ##if(ext_tags_enabled)##<div class="ext_tags ##AMI_CONF_ID##_item-row__ext_tags">##tags_extension##</div>##endif##
</span>
"-->

##--
/**
 * Item details
 */--##

<!--#set var="item_details" value="
<script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
<div class="##AMI_CONF_ID##_item-detailed">
    ##--
    <div class="##AMI_CONF_ID##_item-detailed__header">
        <h1>##if(cat_link != '')####cat_link## ##item_link## / ##else##<a href="##front_link##">##page_name##</a> / ##endif####header##</h1>
    </div>
    --##
    <div class="##AMI_CONF_ID##_item-detailed__path"><h3>##g_pages_path## ##item_link##</h3></div>
    ##if(previos_link != '')##<div class="##AMI_CONF_ID##_item-detailed__nav">##previos_link## ##if(AMI_CONF_ID == 'blog')##&nbsp;|&nbsp;<a href="##script_link##">%%main%%</a>&nbsp;|&nbsp;##endif## ##next_link##</div>##endif##
    <h1 class="##AMI_CONF_ID##_item-detailed__header-name" itemprop="name">##header##</h1>
    ##if(AMI_CONF_ID == 'blog')####ftime####endif####if(AMI_CONF_ID != 'articles')####fdate####endif##
    ##if(AMI_CONF_ID == 'articles')##<span class="articles_item-detailed__fdate-block">##fdate##</span>##endif##
    ##author##
    ##source##
    ##img##
    ##announce##
    <div class="##AMI_CONF_ID##_item-detailed__description" itemprop="description">##body##</div>
    ##if(ext_custom_fields_enabled)##<div class="ext_common-cf ##AMI_CONF_ID##_item-detailed__ext_common-cf">##common_cf_list##</div>##endif##
    ##if(AMI_CONF_ID == 'articles')##<div class="##AMI_CONF_ID##_item-detailed__path ##AMI_CONF_ID##_item-detailed__path-bottom">##if(cat_link != '')####cat_link## ##item_link####else##<a href="##front_link##">##page_name##</a>##endif##</div>##endif##
    ##if(ext_rating_enabled)##<div class="ext_rating ##AMI_CONF_ID##_item-detailed__ext_rating">##rating_block## ##votes_block## ##rating_form##</div>##endif##
    ##if(ext_discussion_enabled)##<a href="##www_root####script_nav_link##?forum_ext=1#forumForm" class="##AMI_CONF_ID##_control-panel__comments">##if(count_replies != 0)##<div class="##AMI_CONF_ID##_control-panel__comments-count">##count_replies##</div>##endif##</a>##endif##
    <div class="yashare-auto-init ##AMI_CONF_ID##_social-btn" data-yashareL10n="ru" data-yashareType="button" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,lj,friendfeed,moikrug,gplus,pinterest,surfingbird"></div>
    ##if(ext_tags_enabled)##<div class="ext_tags ##AMI_CONF_ID##_item-detailed__ext_tags">##tags_extension##</div>##endif##
</div>
"-->

<!--#set var="item_details_empty" value="
<div class="##AMI_CONF_ID##_item-detailed__empty-link"><a href="##front_link##?##front_cats_link##">%%back_categoty_list%%</a> / <a href="##front_link####cat_nav_data##offset=##offset##&catoffset=##catoffset##">##cat_header##</a></div>
<div class="##AMI_CONF_ID##_item-detailed__empty-no_item">%%no_item%%</div>
"-->

##--
/**
 * Item lastN list
 */--##

<!--#set var="item_lastN_list" value="
<div class="##AMI_CONF_ID##_item-list__lastn-list">##list##</div>
<div class="##AMI_CONF_ID##_item-list__lastn-top-link">##top_link##</div>
"-->

<!--#set var="item_lastN_list_empty" value="<div class="##AMI_CONF_ID##_item-list__lastn-empty">%%item_lastN_list_empty%%</div>"-->
<!--#set var="item_list_empty" value="<div class="##AMI_CONF_ID##_item-list__empty">%%item_list_empty%%</div>"-->

##--
/**
 * Item lastN item row
 */--##

<!--#set var="item_lastN_row" value="
<span class="##AMI_CONF_ID##_item-row__lastn global_cols_##_cols##">
    <div class="##AMI_CONF_ID##_item-row__lastn-cat-header">##cat_header##</div>
    ##fdate##
    <div class="##AMI_CONF_ID##_item-row__lastn-header"><h1>##header##</h1></div>
    ##author##
    ##source##
    ##announce##
    <div class="##AMI_CONF_ID##_item-row__lastn-more">##more##</div>
</span>
"-->

##--
/**
 * Browse item list
 */--##

<!--#set var="browse_item_list" value="
<div class="##AMI_CONF_ID##_browse-item-list">
    ##list##
    <br><br>
    <div class="##AMI_CONF_ID##_browse-item-list__pager">
        ##previos_link## ##if(AMI_CONF_ID == 'blog')##&nbsp;|&nbsp;<a href="##script_link##">%%main%%</a>&nbsp;|&nbsp;##endif## ##next_link##
        <br>
        ##pager##
    </div>
</div>
"-->

<!--#set var="browse_item_previous_link" value="&larr; <a href="##script_link####prev_nav_data##">##--%%previous_item_link%%--####header##</a>"-->
<!--#set var="browse_item_next_link" value="<a href="##script_link####next_nav_data##">##--%%next_item_link%%--####header##</a> &rarr;"-->
<!--#set var="browse_item_next_link_na" value="%%next_item_link%% &rarr;"-->
<!--#set var="browse_item_previous_link_na" value="&larr; %%previous_item_link%%"-->

##--
/**
 * Browse item row
 */--##

<!--#set var="browse_item_row" value="
<span class="##AMI_CONF_ID##_browse-item-row global_cols_##_cols##">
    <h3>##header##</h3>
    ##small_picture##
    ##announce##
    <div class="##AMI_CONF_ID##_browse-item-row__full-read"><a href="##script_link####nav_data##offset=##offset##">%%details%%</a></div>
</span>
"-->

##-- ---------------------------------------------------------------------------------- --##
##-- ------------------------------------- Page type ---------------------------------- --##
##-- ---------------------------------------------------------------------------------- --##

##--
/**
 * Page body items
 */--##

<!--#set var="body_items" value="
##--<div class="##AMI_CONF_ID##_item-list__cat-header"><h1>##if(cat_header == '')####page_name####else##<a name=ccat href="##script_link##?##front_cats_link##">##page_name##</a> / ##cat_header####endif##</h1></div>--##
<div class="##AMI_CONF_ID##_item-row__path">##if(cat_header == '')##<h3>##g_pages_path##</h3><h1>##page_name##</h1>##else##<h3>##g_pages_path##</h3><h1>##cat_header##</h1>##endif##</div>
##if(AMI_CONF_ID == 'articles')####sort####endif##
##--list_header--##
##if(cat_body != '')##<div class="##AMI_CONF_ID##_item-list__cat-body">##cat_img## ##cat_body##</div>##endif##
##if(sticky_item_list != '')##<div class="##AMI_CONF_ID##_item-list__sticky-item-list">##sticky_item_list##</div>##endif##
<div class="##AMI_CONF_ID##_item-list__item-list">##item_list##</div>
<div class="##AMI_CONF_ID##_item-list__rss-generate">##rss_generate##</div>
"-->

##--
/**
 * Page body sticky items
 */--##

<!--#set var="body_sticky_items" value="<div class="##AMI_CONF_ID##_item-list__sticky-list">##item_list##</div>"-->

##--
/**
 * Page body cat details lastN
 */--##

<!--#set var="body_catD_lastN" value="
<div class="##AMI_CONF_ID##_item-cat-detailed__lastm-detail">##cat_detail##</div>
<div class="##AMI_CONF_ID##_item-cat-detailed__lastm-list">##item_list##</div>
"-->

##--
/**
 * Page body item detail
 */--##

<!--#set var="body_itemD" value="
<div class="##AMI_CONF_ID##_item-detailed__item-details" itemscope itemtype="http://schema.org/ImageObject">##item_details##</div>
##browse_item_list##
<div class="ext_discussion ##AMI_CONF_ID##_item-detailed__ext_discussion">##discussion_extension##</div>
"-->

##--
/**
 * Page body category detail
 */--##

<!--#set var="body_catD" value="
<div class="ext_discussion ##AMI_CONF_ID##_cat-detailed__ext_discussion">##discussion_extension##</div>
"-->

##--
/**
 * Page body filtered
 */--##

<!--#set var="body_filtered" value="
<div class="##AMI_CONF_ID##_item-list__filtered-back-cat-link"><a name="ccat" href="##front_link##?##front_cats_link##">%%back_categoty_list%%</a></div>
<div class="##AMI_CONF_ID##_item-list__filtered-day-articles">%%day_articles%% ##flt_date_from##</div>
<div class="##AMI_CONF_ID##_item-list__filtered-item-list">##item_list##</div>
"-->

##--
/**
 * Page body empty
 */--##

<!--#set var="body_empty" value="<div class="##AMI_CONF_ID##_item-list__body-empty">%%no_item%%</div>"-->

##--
/**
 * Page body
 */--##

<!--#set var="main_body" value="
<script>
<!--
  var _cms_document_form = 'artsform';
  var _cms_script_link = '##script_link##?';
-->
</script>

<div class="##AMI_CONF_ID##_item">##body##</div>
<script>
    if(AMI.$('#amiroTEdDivEditor').length > 0) {
        AMI.$('#amiroTEdDivEditor').attr('placeholder', '%%post_comment_D%%...');
    }
</script>
"-->
