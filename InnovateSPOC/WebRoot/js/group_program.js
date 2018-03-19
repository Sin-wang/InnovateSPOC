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
					var ContStr='<div class="content"><img src="../images/run.png" height="180px"><div class="intro workName"><h1>鸡场漫游</h1><p>主导人：罗旭</p><p class="menbername">参与人：</p><p class="work_type">类型：仿真</p></div><p class="work_group">（程序组作品）</p><p class="work_intro"></p><p class="expression"></p><p class="project_address">http://1252367251.vod2.myqcloud.com/93046229vodtransgzp1252367251/d21930ca9031868223455643925/v.f30.mp4</p></div>';
					ContStr=ContStr+'<div class="content"><img src="../images/tiger.png" height="180px"><div class="intro workName"><h1>仿真推土机</h1><p>主导人：罗旭</p><p class="menbername">参与人：</p><p class="work_type">类型：仿真</p></div><p class="work_group">（程序组作品）</p><p class="work_intro"></p><p class="expression"></p><p class="project_address">http://1252367251.vod2.myqcloud.com/93046229vodtransgzp1252367251/0a9ad8099031868223459834531/v.f30.mp4</p></div>'
					for(var i=0;i<data[0].length;i++){
						if(data[0][i].header=="是")
						ContStr=ContStr+'<div class="content"><img src="'+data[0][i].photo_address+'" height="180px"><div class="intro workName"><h1>'+data[0][i].project_name+'</h1><p>主导人：'+data[0][i].sname+'</p><p class="menbername">参与人：'+data[0][i].participants+'</p><p class="work_type">类型：'+data[0][i].work_name+'</p></div><p class="work_group">（'+data[0][i].gname+'作品）</p><p class="work_intro">'+data[0][i].project_introduce+'</p><p class="expression">'+data[0][i].expression+'</p><p class="project_address">'+data[0][i].project_address+'</p></div>';
					}
					$("#contents").append(ContStr);
				}
	    
	    });		
		
		
		
		$(document).on("click",".content",function(){
			var menbername="";//项目成员
			var workName="";//项目名称
			var workGroup="";//所属组别
			var workIntro="";
			var project_address="";//项目地址
			var expression=$(this).find(".expression").text();
			if(expression==="静帧图"){
				menbername=$(this).find(".menbername").text();//项目成员
				workName=$(this).find("h1").text();//项目名称
				workGroup=$(this).find(".work_group").text();//所属组别
				workIntro=$(this).find(".work_intro").text();
				/*项目图片地址*/
				var linkAddress=$(this).find("img").attr("src");
				/*var linkStar=linkAddress.indexOf("(")+1;
				var linkEnd=linkAddress.lastIndexOf(")");
				var str=linkAddress.substring(linkStar,linkEnd);*/
				$("#work_img").attr("src",linkAddress);
				$("#work_name").text(workName);
				$("#work_belong").text(workGroup);
				$("#menber_name").text(menbername);
				$("#work_intro").text(workIntro);
				$("#Login").modal('show');
			}else{
				menbername=$(this).find(".menbername").text();//项目成员
				workName=$(this).find("h1").text();//项目名称
				workGroup=$(this).find(".work_group").text();//所属组别
				workIntro=$(this).find(".work_intro").text();
				project_address=$(this).find(".project_address").text();
				//alert(project_address);
				var myPlayer = videojs("example_video_2");
				$("#example_video_2").attr("src",project_address);
				myPlayer.src(project_address);
		        myPlayer.load(project_address);
				myPlayer.play();
				
				$("#work_name2").text(workName);
				$("#work_belong2").text(workGroup);
				$("#menber_name2").text(menbername);
				$("#work_intro2").text(workIntro);
				$("#showVideo").modal('show');
			}
		});
		
		$('#showVideo').on('hidden.bs.modal', function () {
			var myPlayer = videojs("example_video_2");
			myPlayer.pause();
		});
		