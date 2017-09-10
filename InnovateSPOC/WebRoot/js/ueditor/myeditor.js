$(document).ready(function() {

	$(document).on("click", "#sendNotifitation", function() {
		
    	var title=$("#title").val();
    	var newContent=$("#Newcontent").val();
    	var photo=$("#file").val();
		if(title==""){
			bootbox.alert({
			message : "请填写新闻标题",
			size : 'small'
			});	
			return;
		}else if(newContent==""){
			bootbox.alert({
			message : "请填写新闻内容",
			size : 'small'
			});	
			return;
		}else if(photo==""){
			bootbox.alert({
				message : "请上传图片",
				size : 'small'
				});	
			return;
		}
		$("#majoreditform").submit();
	  });



});
