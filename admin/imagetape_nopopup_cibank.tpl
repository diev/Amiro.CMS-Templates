<!--#set var="image" value="##setglobalvar @nopopup = nopopup + 1##
<div class="image_item_nopopup" onclick="oImage_select_##group##(this.id); AMI.find('#image-##group##').src = '##if(popupsrc)####popupsrc####else####src####endif##'" id="imagetape_nopopap_##group##_##nopopup##" style="width:100px;height:100px;overflow:hidden;"><img style="max-height:100px; max-width:100px; //width: 100px; //height: 100px;" src="##src##"/></div>
"-->

<!--#set var="template" value="
##if(scroll != 1)##
    <table>
        <tr>
            <td>
                <div class="imagetapeControl left" style="height:##height##px;" id="prev-##group##"></div>
                <div id="slider-##group##" style="width:##width##px;height:##height##px;overflow:hidden;float:left;">
                    <div id="container-##group##" style="position:relative;width:##totalw##px;height:##totalh##px;">##imageset##</div>
                </div>
                <div class="imagetapeControl right" style="height:##height##px;" id="next-##group##"></div>
                <div style="clear:both;"></div>
            </td>
        </tr>
        <tr>
            <td align="center" class="it_main_image">
                <img src="##initial_image##" id="image-##group##"/>
            </td>
        </tr>
    </table>
##else##
    <div style="float:left;">
        <div class="imagetapeControl up" style="width:##width##px;" id="prev-##group##"></div>
        <div id="slider-##group##" style="width:##width##px;height:##height##px;overflow:hidden;clear:both;">
            <div id="container-##group##" style="position:relative;width:##totalw##px;height:##totalh##px;">##imageset##</div>
        </div>
        <div class="imagetapeControl down" style="width:##width##px;" id="next-##group##"></div>
    </div>
	<div style="float:left;padding:33px 15px 0 0" class="it_main_image">
        <img src="##initial_image##" id="image-##group##"/>
    </div>
    <div style="clear:both;"></div>
##endif##

<script type="text/javascript">
    var ##slidername## = new AMI.UI.Slider(AMI.find('#slider-##group##'), AMI.find("#prev-##group##"), AMI.find("#next-##group##"), ##scrollto##, ##if(scroll != 1)##true##else##false##endif##);
    document.getElementById('imagetape_nopopap_##group##_1').className = 'image_item_nopopup_selected';
    function oImage_select_##group##(id){
        var oContainer = document.getElementById('container-##group##');
        var aDivs = oContainer.getElementsByTagName('DIV');
            for(i = 0; i < aDivs.length; i++){
                aDivs[i].className = 'image_item_nopopup';
            }
        document.getElementById(id).className = 'image_item_nopopup_selected'
    }
</script>
"-->
