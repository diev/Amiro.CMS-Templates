%%include_language "templates/lang/pager.lng"%%

<!--#set var="first" value="<a href="##link##" class="pager__button pager__button_type_first">1</a>"-->

<!--#set var="last" value="<a href="##link##" class="pager__button pager__button_type_last">##page##</a>"-->

<!--#set var="prev" value="<a href="##link##" class="pager__button pager__button_type_prev">&larr;</a>"-->

<!--#set var="next" value="<a href="##link##" class="pager__button pager__button_type_next">&rarr;</a>"-->

<!--#set var="active" value="<span class="pager__button pager__button_state_active">##page##</span>"-->

<!--#set var="page" value="<a href="##link##" class="pager__button" tabindex="##page##">##page##</a>"-->

<!--#set var="spacer" value=""-->

<!--#set var="page_size_row" value="<option value="##value##" ##active##>##caption##</option>"-->

<!--#set var="page_tpl" value="##page_start## - ##page_end##"-->

<!--#set var="body" value="
<div class="pager">
	<div class="pager__content">
		##if(prev)##
			##prev##
		##else##
			<span class="pager__button pager__button_type_prev pager__button_state_inactive">&larr;</span>
		##endif##
		
		##if(first)##
			##first##
			<span class="pager__button pager__button_state_inactive">...</span>
		##endif##
				
		##page_before_active####active####page_after_active##

		##if(last)##
			<span class="pager__button pager__button_state_inactive">...</span>
			##last##
		##endif##
		
		##if(next)##
			##next##
		##else##
			<span class="pager__button pager__button_type_next pager__button_state_inactive">&rarr;</span>
		##endif##
	</div>
</div>
"-->

##-- Not used --##
<!--#set var="page_size" value="
<span class=small>%%page_size%%:</span>
##--<select name="limit" class="filter" onChange="go_pagesize(this.value)">
   [DATA]
</select>--##
<select name="limit" class="filter" onChange="window.location=frontBaseHref+'##link##&limit='+this.value">
   ##data##
</select>
"-->
