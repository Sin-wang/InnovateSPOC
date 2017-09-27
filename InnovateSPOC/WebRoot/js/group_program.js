$("#types").click(function(){
	$("#type").toggle(200);
});
		
		//获取组员作品的请求
		$.ajax({
			async : false,
	    	type : 'POST',
				dataType : 'json',
				url : 'getAllWorkInfo.do',
				error : function(request) {
	 				bootbox.alert({
	         			  message: "请求异常",
	         			  size: 'small'
	         		  });
	 			},
				success : function(data) {
					var ContStr="";
					for(var i=0;i<data[0].length;i++){
						ContStr=ContStr+'<div class="content" style="background: url('+data[0][i].photo_address+') no-repeat;"><div class="intro workName"><h1>'+data[0][i].project_name+'</h1><p>主导人：'+data[0][i].sid+'</p><p class="menbername">参与人：'+data[0][i].participants+'</p><p class="work_type">类型：'+data[0][i].work_name+'</p></div><p class="work_group">（'+data[0][i].gname+'作品）</p><p class="work_intro">'+data[0][i].project_introduce+'</p></div>';
					}
					$("#contents").append(ContStr);
				}
	    
	    });		
		
		
		
		$(document).on("click",".content",function(){
			var menbername=$(this).find(".menbername").text();//项目成员
			var workName=$(this).find("h1").text();//项目名称
			var workGroup=$(this).find(".work_group").text();//所属组别
			var workIntro=$(this).find(".work_intro").text();
			/*项目图片地址*/
			var linkAddress=$(this).attr("style");
			var linkStar=linkAddress.indexOf("(")+1;
			var linkEnd=linkAddress.lastIndexOf(")");
			var str=linkAddress.substring(linkStar,linkEnd);
			$("#work_img").attr("src",str);
			$("#work_name").text(workName);
			$("#work_belong").text(workGroup);
			$("#menber_name").text(menbername);
			$("#work_intro").text(workIntro);
			$("#Login").modal('show');
		});
		