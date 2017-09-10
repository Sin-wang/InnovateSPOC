   // JavaScript Document
$(document).ready(function() {
	
	$('#resume_myModal').on('show.bs.modal', function () {
		
				$("#resumeName").text("赵勇");
				$("#resumeMajor").text("信息工程");
				$("#resumeIntroduce").text("data.introduce");
				$("#resumeAdress").text("湖南农业大学");
				$("#resumeEadre").text("huNan Agriculture Universety");
				var skillStr='<div class="intro_title"><div id="icon6" class="icon1"></div><div class="text">专业技能<span>MY SKILLS</span></div></div>';
						
						for(var a=0;a<4;a++){
							skillStr=skillStr+'<div class="intro_cotent2"><div class="icon5 icon2 float_left"></div><div class="contact float_left"><p>PHOTSHOP</p><div style="width: 150px; height: 10px;"><div class="progress progress_style" ><div class="progress-bar bar_style" role="progressbar" aria-valuenow="'+(a+10)+'" aria-valuemin="0" aria-valuemax="100" style="width:'+(a+10)+'%;"></div></div></div></div></div>';
						}
						
						$("#resumeSkill").append(skillStr);
						
						//实习经历
						var practiceStr='<div class="sec2_title"><div id="icon7" class="icon3"></div><div class="text2">实习经历<span>WORK EXPERIENCE</span></div></div>';
						
						for(var b=0;b<3;b++){
							practiceStr=practiceStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>小橘子科技有限公司<span>2008.09-2010.09</span></h1><br><p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品参与设计体验、设计流程的制定，建立高效的设计语言与设计规范；</p></div></div>';
						}
						
						$("#resumeExe").append(practiceStr);
						
						//教育经历		
						var educationStr='<div class="sec2_title"><div class="icon3"></div><div class="text2">教育经历<span>EDUCATION EXPERIENCE</span></div></div>';
						
						for(var c=0;c<2;c++){
							educationStr=educationStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>北京大学<span>2008.09-2010.09</h1><br><p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p></div></div>';
						}
						$("#resumeEdu").append(educationStr);
						//兴趣爱好
						var interestingStr='<div class="sec2_title"><div class="icon3"></div><div class="text2">兴趣爱好<span>MY HOBBIES</span></div></div>';
						
						for(var d=0;d<2;d++){
							interestingStr=interestingStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>吉他乐器<span>2008.09-2010.09</h1><br><p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p></div></div>';
						}
						$("#resumIntr").append(interestingStr);
						var Pcontstr="";
						for(var f=0;f<5;f++){
							Pcontstr=Pcontstr+'<div class="content" style="background:url(../images/resume/bg.png) no-repeat;"><div class="intro"><h1>旅行的路上每一个异国建筑都是别样的风景</h1><p>I whipped the Scotch tape from my pocket and said</p></div></div>';
						}
						$("#joinproject").append(Pcontstr);
		
		
				//获取简历信息的请求
				/*$.ajax({
					type : 'POST',
					dataType : 'json',
					url : '',
					error : function(request) {
						bootbox.alert({
							  message: "请求异常",
							  size: 'small'
						  });
					},
					success : function(data) {
						
						//基本个人信息
						$("#resumeName").text(data[0].name);
						$("#resumeMajor").text(data[0].major);
						$("#resumeIntroduce").text(data[0].introduce);
						$("#resumeQQ").text("QQ:"+data[0].qq);
						$("#resumeEqq").text("QQ:"+data[0].qq);
						$("#resumeTel").text("手机号码："+data[0].phone);
						$("#resumeEtel").text("Phone Number"+data[0].phone);
						$("#resumeAdress").text(data[0].Chinese_address);
						$("#resumeEadre").text(data[0].Enlish_address);
						
						//专业技能
						var skillStr='<div class="intro_title"><div id="icon6" class="icon1"></div><div class="text">专业技能<span>MY SKILLS</span></div></div>';
						
						for(var a=0;a<data[1].length;a++){
							skillStr=skillStr+'<div class="intro_cotent2"><div class="icon5 icon2 float_left"></div><div class="contact float_left"><p>'+data[1].skill_name+'</p><div style="width: 150px; height: 10px;"><div class="progress progress_style" ><div class="progress-bar bar_style" role="progressbar" aria-valuenow="'+data[1].skill_value+'" aria-valuemin="0" aria-valuemax="100" style="width:'+data[1].skill_value+'%;"></div></div></div></div></div>';
						}
						
						$("#resumeSkill").append(skillStr);
						
						//实习经历
						var practiceStr='<div class="sec2_title"><div id="icon7" class="icon3"></div><div class="text2">实习经历<span>WORK EXPERIENCE</span></div></div>';
						
						for(var b=0;b<data[2].length;b++){
							practiceStr=practiceStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>'+data[2].address+'<span>'+data[2].startTime+'-'+data[2].endTime+'</span></h1><br><p>'+data[2].content+'</p></div></div>';
						}
						
						$("#resumeExe").append(practiceStr);
						
						//教育经历		
						var educationStr='<div class="sec2_title"><div class="icon3"></div><div class="text2">教育经历<span>EDUCATION EXPERIENCE</span></div></div>';
						
						for(var c=0;c<data[3].length;c++){
							educationStr=educationStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>'+data[3].scholl+'<span>'+data[3].startTime+'-'+data[3].endTime+'</h1><br><p>'+data[3].content+'</p></div></div>';
						}
						$("#resumeEdu").append(educationStr);
						//兴趣爱好
						var interestingStr='<div class="sec2_title"><div class="icon3"></div><div class="text2">兴趣爱好<span>MY HOBBIES</span></div></div>';
						
						for(var d=0;d<data[4].length;d++){
							interestingStr=interestingStr+'<div class="sec2_content"><div class="icon4"></div><div class="sec2_text"><h1>'+data[4].hobby+'<span>'+data[4].startTime+'-'+data[3].endTime+'</h1><br><p>'+data[4].content+'</p></div></div>';
						}
						$("#resumIntr").append(interestingStr);
					}*/
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
		});
			
	
	
});