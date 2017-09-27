   // JavaScript Document
$(document).ready(function() {
	$(document).on("click",".thumbnail",function (){
		var stuId=$(this).attr("id");
//		$("#resume_myModal").modal('show');
				//获取简历信息的请求
				$.ajax({
					type : 'POST',
					dataType : 'json',
					url : 'get_resume.do',
					data:{
						"sid":stuId
					},
					error : function(request) {
						bootbox.alert({
							  message: "请求异常",
							  size: 'small'
						  });
					},
					success : function(data) {
						//基本个人信息
						$("#headshot").attr("src",data[0][0].headshot);
						$("#resumeName").text(data[0][0].sname);
						$("#resumeMajor").text(data[0][0].major);
						$("#resumeIntroduce").text(data[0][0].student_introduce);
						$("#resumeQQ").text("QQ:"+data[0][0].qq);
						$("#resumeEqq").text("QQ:"+data[0][0].qq);
						$("#resumeTel").text("手机号码："+data[0][0].phone);
						$("#resumeEtel").text("Phone Number"+data[0][0].phone);
						$("#resumeAdress").text(data[0][0].chinese_address);
						$("#resumeEadre").text(data[0][0].enlish_address);
						
						//专业技能
						var skillStr='<div class="intro_title"><div id="icon6" class="icon1"></div><div class="text">专业技能<span>MY SKILLS</span></div></div>';
						
						for(var a=0;a<data[4].length;a++){
							skillStr=skillStr+'<div class="intro_cotent2"><div class="icon5 icon2 float_left"></div><div class="contact float_left"><p>'+data[4][a].skill_name+'</p><div style="width: 150px; height: 10px;"><div class="progress progress_style" ><div class="progress-bar bar_style" role="progressbar" aria-valuenow="'+data[4][a].skill_exp+'" aria-valuemin="0" aria-valuemax="100" style="width:'+data[4][a].skill_exp+'%;"></div></div></div></div></div>';
						}
						
						$("#resumeSkill").append(skillStr);
						
						//实习经历
						var practiceStr='<div class="sec2_title"><div id="icon7" class="icon3"></div><div class="text2">实习经历<span>WORK EXPERIENCE</span></div></div>';
						
						for(var b=0;b<data[3].length;b++){
							practiceStr=practiceStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>'+data[3][b].practice_location+'<span>'+data[3][b].begin_time+'-'+data[3][b].end_time+'</span></h1><br><p>'+data[3][b].practice_description+'</p></div></div>';
						}
						
						$("#resumeExe").append(practiceStr);
						
						//教育经历		
						var educationStr='<div class="sec2_title"><div class="icon3"></div><div class="text2">教育经历<span>EDUCATION EXPERIENCE</span></div></div>';
						
						for(var c=0;c<data[1].length;c++){
							educationStr=educationStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>'+data[1][c].school+'<span>'+data[1][c].begin_time+'-'+data[1][c].end_time+'</h1><br><p>'+data[1][c].education_description+'</p></div></div>';
						}
						$("#resumeEdu").append(educationStr);
						//兴趣爱好
						var interestingStr='<div class="sec2_title"><div class="icon3"></div><div class="text2">兴趣爱好<span>MY HOBBIES</span></div></div>';
						
						for(var d=0;d<data[2].length;d++){
							interestingStr=interestingStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>'+data[2][d].hobby+'<span>'+data[2][d].begin_time+'-'+data[2][d].end_time+'</h1><br><p>'+data[2][d].hobby_description+'</p></div></div>';
						}
						$("#resumIntr").append(interestingStr);
						
						
						//简历表作品
						$.ajax({
				        	type : 'POST',
				 			dataType : 'json',
				 			url : 'getAllWorkInfoBysid.do',
				 			data:{
								"sid":stuId
							},
				 			error : function(request) {
				 				bootbox.alert({
				         			  message: "请求异常666",
				         			  size: 'small'
				         		  });
				 			},
				 			success : function(data) {
				 				var Jcontstr="";
				 				var Gstr="";
				 				for(var g=0;g<data[0].length;g++){
				 					if(data[1][g].header == '是')
									Gstr=Gstr+'<div class="content" style="background:url('+data[0][g].photo_address+') no-repeat;"><div class="intro"><h1>'+data[0][g].project_introduce+'</h1><p>'+data[0][g].project_introduce+'</p></div></div>';
								
							}
				 				for(var f=0;f<data[0].length;f++){

			 						Jcontstr=Jcontstr+'<div class="content" style="background:url('+data[0][f].photo_address+') no-repeat;"><div class="intro"><h1>'+data[0][f].project_introduce+'</h1><p>'+data[0][f].project_introduce+'</p></div></div>';
			 					
							}
								$("#guideProject").append(Gstr);
								$("#joinproject").append(Jcontstr);
								
								
				 			}
				        });
						
					}
					
					
					
				});
				
				
				$("#resume_myModal").modal('show');
	});
	
	$('#resume_myModal').on('hidden.bs.modal', function () {
				$("#resumeName").text("");
				$("#resumeMajor").text("");
				$("#resumeIntroduce").text("");
				$("#resumeAdress").text("");
				$("#resumeEadre").text("");
				$("#resumeExe").html("");
				$("#resumeEdu").html("");
				$("#resumIntr").html("");
				$("#resumeSkill").html("");
				$("#guideProject").html("");
				$("#joinproject").html("");
		});
			
	
	
});