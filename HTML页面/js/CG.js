// JavaScript Document
$(document).ready(function() {
				var total1=10;
				var Pstring='';
				var Liststring='<li data-target="#carousel_menber" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=total1/5;
				var num2=total1%5;
				var str1="";
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Liststring=Liststring+'<li data-target="#carousel_menber" data-slide-to="'+k+'"></li>';
				}
				for(var i=1;i<=num;i++){
					if(i===1){
						Pstring=Pstring+'<div class="item active">';
					}else{
						Pstring=Pstring+'<div class="item">';
					}
					if(i!==num){
						for(var j=0;j<5;j++){
							if(j===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/CG/member1.png" alt="..."><div class="caption"><h4>影视特效师  彭欣雨</h4><p class="limitWord">我是计算机专业的学生彭欣雨，乐于奋斗，追求卓越，曾获得国家励志、校一等奖学金两项，掌握交互设计、ppt美化、后期制作等技能三项，代表作13项。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/CG/member2.png" alt="..."><div class="caption"><h4>影视特效师  黄智诚</h4><p class="limitWord">15级计算机一班，平常没什么特别的爱好，但是什么都是爱好。喜欢拍点自己喜欢的东西做成视频，感觉忒有成就感，热爱影视方面的事物。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=total1-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/CG/member1.png" alt="..."><div class="caption"><h4>影视特效师  彭欣雨</h4><p>我是计算机专业的学生彭欣雨，乐于奋斗，追求卓越，曾获得国家励志、校一等奖学金两项，掌握交互设计、ppt美化、后期制作等技能三项，代表作13项。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/CG/member2.png" alt="..."><div class="caption"><h4>影视特效师  黄智诚</h4><p>15级计算机一班，平常没什么特别的爱好，但是什么都是爱好。喜欢拍点自己喜欢的东西做成视频，感觉忒有成就感，热爱影视方面的事物。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					Pstring=Pstring+'</div></div>';
				}
				$("#team_list").append(Liststring);
 				$("#team_Mumber").append(Pstring);
	
				var total2=8;
				var Pstring='';
				var Liststring='<li data-target="#carousel_students" data-slide-to="0" class="active"></li>';
				var number=0;
				var number1=total2/4;
				var number2=total2%4;
				var str1="";
				if(number2===0){
					number=number1;
				}
				else{
					number=parseInt(number1)+1;
				}
				for(var k=1;k<number;k++){
					Liststring=Liststring+'<li data-target="#carousel_students" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=number;i++){
					if(i===1){
						Pstring=Pstring+'<div class="item active">';
					}else{
						Pstring=Pstring+'<div class="item">';
					}
					if(i!==number){
						for(var j=0;j<4;j++){
							if(j===0){
								str1='<div class="row"><div class="col-md-offset-1 col-sm-offset-1"><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div></div></div>';
							}else{
								str1='<div><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>刘安奇</h3><p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNumber=total2-(number-1)*4;
						for(var a=0;a<maxNumber;a++){
							if(a===0){
								str1='<div class="row"><div class="col-md-offset-1 col-sm-offset-1"><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div></div></div>';
							}else{
								str1='<div><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>刘安奇</h3><p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					Pstring=Pstring+'</div></div>';
				}
				$("#students_list").append(Liststring);
 				$("#show_students").append(Pstring);
			
				var Tstring="";
				var Liststr="";
 				for(var m=0;m<2;m++){
					if(m===0){
						Tstring=Tstring+'<div class="item active"><div class="media col-sm-offset-1 col-sm-10"><div class="media-left"><img class="media-object" src="../images/CG/07 teacher2.png"></div><div class="media-body" ></br></br><h2 class="media-heading">张引琼</h2><h4>讲师</h4><p5>张引琼，女，1980年生，讲师，硕士研究生。2001年开始从事计算机专业教学，湖南农业大学信息科学技术学院信息工程专业专职教师。2015年到2017年间，获得湖南省普通高校教师课堂教学竞赛一等奖，湖南省普通高校教学能手，湖南省第二届微课微课大赛一等奖，全国多媒体课件大赛三等奖，湖南农业大学优秀实习指导教师，湖南农业大学优秀教师，信科学院"信科名师"荣誉称号。是信息工程专业《JAVA程序设计（双语）》《信息工程专业英语》等课程的主讲教师和课程负责人，曾先后获得东方科技学院优秀任课老师，湖南农业大学教学成果奖二等奖，多次课堂教学质量评价"优秀"。</p5></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+m+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="media col-sm-offset-1 col-sm-10"><div class="media-left"><img class="media-object" src="../images/CG/07 teacher2.png"></div><div class="media-body" ></br></br><h2 class="media-heading">张引琼</h2><h4>讲师</h4><p5>张引琼，女，1980年生，讲师，硕士研究生。2001年开始从事计算机专业教学，湖南农业大学信息科学技术学院信息工程专业专职教师。2015年到2017年间，获得湖南省普通高校教师课堂教学竞赛一等奖，湖南省普通高校教学能手，湖南省第二届微课微课大赛一等奖，全国多媒体课件大赛三等奖，湖南农业大学优秀实习指导教师，湖南农业大学优秀教师，信科学院"信科名师"荣誉称号。是信息工程专业《JAVA程序设计（双语）》《信息工程专业英语》等课程的主讲教师和课程负责人，曾先后获得东方科技学院优秀任课老师，湖南农业大学教学成果奖二等奖，多次课堂教学质量评价"优秀"。</p5></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+m+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);
				
	/*$.ajax({			
		type : 'POST',
 			dataType : 'json',
 			url : '../html/resume.css',
        });	*/
//学员介绍获取数据的请求	
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
				var total1=10;
				var Pstring='';
				var Liststring='<li data-target="#carousel_menber" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=total1/5;
				var num2=total1%5;
				var str1="";
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Liststring=Liststring+'<li data-target="#carousel_menber" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=num;i++){
					if(i===1){
						Pstring=Pstring+'<div class="item active">';
					}else{
						Pstring=Pstring+'<div class="item">';
					}
					if(i!==num){
						for(var j=0;j<5;j++){
							if(j===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/CG/member1.png" alt="..."><div class="caption"><h4>影视特效师  彭欣雨</h4><p>我是计算机专业的学生彭欣雨，乐于奋斗，追求卓越，曾获得国家励志、校一等奖学金两项，掌握交互设计、ppt美化、后期制作等技能三项，代表作13项。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/CG/member2.png" alt="..."><div class="caption"><h4>影视特效师  黄智诚</h4><p>15级计算机一班，平常没什么特别的爱好，但是什么都是爱好。喜欢拍点自己喜欢的东西做成视频，感觉忒有成就感，热爱影视方面的事物。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=total1-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/CG/member1.png" alt="..."><div class="caption"><h4>影视特效师  彭欣雨</h4><p>我是计算机专业的学生彭欣雨，乐于奋斗，追求卓越，曾获得国家励志、校一等奖学金两项，掌握交互设计、ppt美化、后期制作等技能三项，代表作13项。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/CG/member2.png" alt="..."><div class="caption"><h4>影视特效师  黄智诚</h4><p>15级计算机一班，平常没什么特别的爱好，但是什么都是爱好。喜欢拍点自己喜欢的东西做成视频，感觉忒有成就感，热爱影视方面的事物。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					Pstring=Pstring+'</div></div>';
				}
				$("#team_list").append(Liststring);
 				$("#team_Mumber").append(Pstring);
			}
        });		
	
//就业学员获取数据的请求	
	$.ajax({
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
			    var total2=8;
				var Pstring='';
				var Liststring='<li data-target="#carousel_students" data-slide-to="0" class="active"></li>';
				var number=0;
				var number1=total2/4;
				var number2=total2%4;
				var str1="";
				if(number2===0){
					number=number1;
				}
				else{
					number=parseInt(number1)+1;
				}
				for(var k=1;k<number;k++){
					Liststring=Liststring+'<li data-target="#carousel_students" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=number;i++){
					if(i===1){
						Pstring=Pstring+'<div class="item active">';
					}else{
						Pstring=Pstring+'<div class="item">';
					}
					if(i!==number){
						for(var j=0;j<4;j++){
							if(j===0){
								str1='<div class="row"><div class="col-md-offset-1 col-sm-offset-1"><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div></div></div>';
							}else{
								str1='<div><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>刘安奇</h3><p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNumber=total2-(number-1)*4;
						for(var a=0;a<maxNumber;a++){
							if(a===0){
								str1='<div class="row"><div class="col-md-offset-1 col-sm-offset-1"><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div></div></div>';
							}else{
								str1='<div><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="../images/CG/people1.png"></div><h3>刘安奇</h3><p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					Pstring=Pstring+'</div></div>';
				}
				$("#students_list").append(Liststring);
 				$("#show_students").append(Pstring);	
			}
        });
		
//团队教师获取数据的请求
	$.ajax({
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
				
				var Tstring="";
				var Liststr="";
 				for(var m=0;m<2;m++){
					if(m===0){
						Tstring=Tstring+'<div class="item active"><div class="media col-sm-offset-1 col-sm-10"><div class="media-left"><img class="media-object" src="../images/CG/07 teacher2.png"></div><div class="media-body" ></br></br><h2 class="media-heading">张引琼</h2><h4>讲师</h4><p5>张引琼，女，1980年生，讲师，硕士研究生。2001年开始从事计算机专业教学，湖南农业大学信息科学技术学院信息工程专业专职教师。2015年到2017年间，获得湖南省普通高校教师课堂教学竞赛一等奖，湖南省普通高校教学能手，湖南省第二届微课微课大赛一等奖，全国多媒体课件大赛三等奖，湖南农业大学优秀实习指导教师，湖南农业大学优秀教师，信科学院"信科名师"荣誉称号。是信息工程专业《JAVA程序设计（双语）》《信息工程专业英语》等课程的主讲教师和课程负责人，曾先后获得东方科技学院优秀任课老师，湖南农业大学教学成果奖二等奖，多次课堂教学质量评价"优秀"。</p5></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+m+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="media col-sm-offset-1 col-sm-10"><div class="media-left"><img class="media-object" src="../images/CG/07 teacher2.png"></div><div class="media-body" ></br></br><h2 class="media-heading">张引琼</h2><h4>讲师</h4><p5>张引琼，女，1980年生，讲师，硕士研究生。2001年开始从事计算机专业教学，湖南农业大学信息科学技术学院信息工程专业专职教师。2015年到2017年间，获得湖南省普通高校教师课堂教学竞赛一等奖，湖南省普通高校教学能手，湖南省第二届微课微课大赛一等奖，全国多媒体课件大赛三等奖，湖南农业大学优秀实习指导教师，湖南农业大学优秀教师，信科学院"信科名师"荣誉称号。是信息工程专业《JAVA程序设计（双语）》《信息工程专业英语》等课程的主讲教师和课程负责人，曾先后获得东方科技学院优秀任课老师，湖南农业大学教学成果奖二等奖，多次课堂教学质量评价"优秀"。</p5></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+m+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);
 			}
        });*/
					
});