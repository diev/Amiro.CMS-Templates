<!--#set var="image" value="##setglobalvar @imageTapeFull_counter = imageTapeFull_counter + 1##<span data-ami-mbdescr="##descr##" data-ami-mbpopup="##if(popupsrc)####popupsrc####else####src####endif##" alt="##alt##" title="##title##" data-ami-mbhdr="##header##" data-ami-mburl="##url##" data-ami-mburlcapt="##urlcapt##" data-ami-mbgrp="##groupname##" id="fullinfo_##imageTapeFull_counter##_##group##" onclick="imageTapeFullInfoSelect_##group##(this.id, true)" class="imagetape_fullinfo">##imageTapeFull_counter##</span>"-->

<!--#set var="template" value="

<div class="block_imagetape_fullinfo">
    <div class="left_imagetape_fullinfo">
        <div class="header_fullinfo" id="header_fullinfo_##group##"></div>
        <div class="description_fullinfo" id="description_fullinfo_##group##"></div>
        <a class="links_fullinfo" id="links_fullinfo_##group##" href="#"><span id="urlcapt_##group##"></span></a>
    </div>
    <div class="right_imagetape_fullinfo">
        <img src="/_img/spacer.gif" id="image-##group##"/>
    </div>
    <div id="container-##group##" class="bottom_imagetape_fullinfo">
        ##imageset##
    </div>
</div>
<div style="clear:both;"></div>

<script type="text/javascript">
        var imageTypeSlideShow_##group##;
        function imageTapeFullInfoSlideshow_##group##(num){
            imageTapeFullInfoSelect_##group##('fullinfo_'+num+'_##group##');
            num++;
            if(num > ##imageTapeFull_counter##) num = 1;
            imageTypeSlideShow_##group## = window.setTimeout(function(){imageTapeFullInfoSlideshow_##group##(num)}, 5000);
        }
    
        function imageTapeFullInfoSelect_##group##(id, bStopSlideShow){
            if(bStopSlideShow) window.clearTimeout(imageTypeSlideShow_##group##);
            AMI.UI.Effects.fadeOut(AMI.find('#image-##group##'), 1000, function() {
                AMI.find('#image-##group##').src = AMI.find('#'+id).getAttribute('data-ami-mbpopup');
                AMI.find('#header_fullinfo_##group##').innerHTML = AMI.find('#'+id).getAttribute('data-ami-mbhdr');
                AMI.find('#description_fullinfo_##group##').innerHTML = AMI.find('#'+id).getAttribute('data-ami-mbdescr');
                AMI.find('#links_fullinfo_##group##').href = AMI.find('#'+id).getAttribute('data-ami-mburl');
                AMI.find('#urlcapt_##group##').innerHTML = AMI.find('#'+id).getAttribute('data-ami-mburlcapt');
                AMI.find('#image-##group##').alt = AMI.find('#'+id).getAttribute('alt');
                AMI.find('#image-##group##').title = AMI.find('#'+id).getAttribute('title');
                window.setTimeout(function(){AMI.UI.Effects.fadeIn(AMI.find('#image-##group##'), 1000)}, 300);
            });
            var oContainer = AMI.find('#container-##group##');
            var aDivs = oContainer.getElementsByTagName('span');
            for(i = 0; i < aDivs.length; i++){
                aDivs[i].className = 'imagetape_fullinfo';
            }
            AMI.find('#'+id).className = 'imagetape_fullinfo_select';
        }
    	imageTapeFullInfoSelect_##group##('fullinfo_1_##group##');
        imageTapeFullInfoSlideshow_##group##(1);
</script>
"-->
