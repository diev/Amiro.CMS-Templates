%%include_template "templates/search.tpl"%%
%%include_language "templates/lang/stickers.lng"%%

##-- minisets --##

<!--#set var="small_header" value="##header##"-->
<!--#set var="small_announce" value="<div class="##__SET_NAME__##">##announce##</div>"-->
<!--#set var="small_picture" value="##picture##"-->
<!--#set var="small_fdate" value="##fdate##"-->

##-- end minisets --##


##-- ================== Item small block sets =========================== --##

<!--#set var="small_row" value="
<td class="##__SET_NAME__##" id="##rand_id##_td">
	<div class="small_header">
		<a href='#' onclick='ShowHideSticker("##rand_id##"); return false;' class='header_link' id="##rand_id##_text">##header##</a>
	</div>

	<div id="##rand_id##" style="display: none;">
		##small_picture##
		##announce##
	</div>
</td>
"-->

<!--#set var="small_list_list" value="

<script language=javascript>

function ShowHideSticker(id){
	var sbl = document.getElementById(id);
	var sbl_t = document.getElementById(id + '_text');
	var sbl_td = document.getElementById(id + '_td');

	if(sbl.style.display == 'none') {
		sbl.style.display = 'block';
		sbl_td.className = 'small_row_dashed';
	}
	else {
		sbl.style.display = 'none';
		sbl_td.className = 'small_row';
	}
}
</script>


<table width=100% border="0" cellpadding="0" cellspacing="0" class="stickers">
<tr>
  ##list##
</tr>
</table>
"-->

<!--#set var="small_list_empty" value="%%no_items%%"-->

##-- splitters --##

<!--#set var="small_Vsplitter" value="</tr><tr><td class="##__SET_NAME__##"><img src="_img/spacer.gif"></td></tr><tr>"-->
<!--#set var="small_Hsplitter" value="</td><td class="##__SET_NAME__##"><img src="_img/spacer.gif"></td><td>"-->

##-- ****************** Pages types *************************************** --##

<!--#set var="body_small" value="##small_list_list##"-->
