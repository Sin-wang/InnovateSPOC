// JavaScript Document
$(document).ready(function() {
	
				var zy=8;
				var Pstring='';
				var Liststring='<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=zy/5;
				var num2=zy%5;
				var str1="";
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Liststring=Liststring+'<li data-target="#myCarousel2" data-slide-to="'+k+'"></li>';
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/3D/3Dmember1.png" alt=""><div class="caption"><h4>三维设计师 谢缘</h4><p>喜欢日，喜欢动漫，也喜欢设计，虽然不会画画。性格开朗，思维跳跃，平时有点小二但做事是很认真的哦！虽然有时候莽莽撞撞。</p></div></div></div>';
							}else{
								str1='<div class="col-md-2 col-sm-2"><div class="thumbnail"><img src="../images/3D/3Dmember1.png" alt=""><div class="caption"><h4>三维设计师  赵玄玉</h4><p>成绩中等 喜欢看书 会P图 视频剪辑 3dmax建模 喜欢摄影 对待工作较为认真负责，喜欢认识新朋友，性格有点内向但是对人很热</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=zy-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/3D/3Dmember1.png" alt=""><div class="caption"><h4>三维设计师  颜沙</h4><p>开朗，稳重，有活力，待人热情，真诚。有较强的组织能力，和团队协作精神，良好的社交能力，较强的责任心和使命感</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/3D/3Dmember1.png" alt=""><div class="caption"><h4>三维设计师  伍丽君</h4><p>本人性格开朗，稳重有活力，待人热情，真诚。工作认真负责，积极主动，能吃苦耐劳 有较强的实际动手能力和团体协作精神。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					
					Pstring=Pstring+'</div></div>';
				}
				$("#myCarousel2Ol").append(Liststring);
 				$("#show_teamMumber").append(Pstring);
 			
	
	
				/*var Tstring="";
				var Liststr="";
 				for(var m=0;m<2;m++){
					if(m===0){
						Tstring=Tstring+'<div class="item active"><div class="teacher_item"><div class="teacher_left"><img src="../images/3D//teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">谢青伶</h3><p>湖南农业大学体育艺术学院环境设计系讲师</p><p class="p2">思博客创新实验室3D建模团队导师。 主讲室内设计、照明设计、电脑制图等室内设计、装饰装修课程。 同时也担任绘画、书法等课程的教学。</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+m+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="teacher_item"><div class="teacher_left"><img src="../images/3D//teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">谢青伶</h3><p>湖南农业大学体育艺术学院环境设计系讲师</p><p class="p2">思博客创新实验室3D建模团队导师。 主讲室内设计、照明设计、电脑制图等室内设计、装饰装修课程。 同时也担任绘画、书法等课程的教学。</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+m+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);*/
	
	
				/*var Wstring='';
				var Wstr='';
 				for (var b=0;b<2;b++){
 					if(b===0){
						Wstr=Wstr+'<li data-target="#carousel_work" data-slide-to="0" class="active"></li>';
						Wstring=Wstring+'<div class="item active"><div class="work_item"><img src="../images/program/work1.png"></div></div>';
					}else{
						Wstr=Wstr+'<li data-target="#carousel_work" data-slide-to="'+b+'"></li>';
						Wstring=Wstring+'<div class="item"><div class="work_item"><img src="../images/program/work1.png"></div></div>';
					}
 				}
				$("#work_list").append(Wstr);
				$("#show_work").append(Wstring);*/
				var Estring='';
				var Estr='<li data-target="#carouselEmployeeStar" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=8/4;
				var num2=8%4;
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Estr=Estr+'<li data-target="#carouselEmployeeStar" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=num;i++){
					if(i===1){
						Estring=Estring+'<div class="item active">';
					}else{
						Estring=Estring+'<div class="item">';
					}
					if(i!==num){
						for(var j=0;j<4;j++){
							
								Estring=Estring+'<div class="memberStar"><div class="memberPhoto"><img src="../images/3D/student1_3D.png"></div><h3>朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div>';
						}
					}else{
						var maxNum=8-(num-1)*4;
						for(var a=0;a<maxNum;a++){
							
								Estring=Estring+'<div class="memberStar"><div class="memberPhoto"><img src="../images/3D/student2_3D.png"></div><h3>刘安奇</h3><p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></div>';
						}
					}
					
					Estring=Estring+'</div></div>';
				}
				$("#employeeCarousel").append(Estr);
 				$("#show_employee").append(Estring);
	
	//团队成员获取数据的请求
	 /*$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : '',
 			async : false,
 			cache : false,
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				var Pstring='';
				var Liststring='<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=data.length/5;
				var num2=data.length%5;
				var str1="";
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Liststring=Liststring+'<li data-target="#myCarousel2" data-slide-to="'+k+'"></li>';
					alert(num+" "+k+" "+Liststring);
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/3D/3Dmember1.png" alt=""><div class="caption"><h4>三维设计师 谢缘</h4><p>喜欢日，喜欢动漫，也喜欢设计，虽然不会画画。性格开朗，思维跳跃，平时有点小二但做事是很认真的哦！虽然有时候莽莽撞撞。</p></div></div></div>';
							}else{
								str1='<div class="col-md-2 col-sm-2"><div class="thumbnail"><img src="../images/3D/3Dmember2.png" alt=""><div class="caption"><h4>三维设计师  赵玄玉</h4><p>成绩中等 喜欢看书 会P图 视频剪辑 3dmax建模 喜欢摄影 对待工作较为认真负责，喜欢认识新朋友，性格有点内向但是对人很热</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=data.length-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/3D/3Dmember3.png" alt=""><div class="caption"><h4>三维设计师  颜沙</h4><p>开朗，稳重，有活力，待人热情，真诚。有较强的组织能力，和团队协作精神，良好的社交能力，较强的责任心和使命感</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/3D/3Dmember4.png" alt=""><div class="caption"><h4>三维设计师  伍丽君</h4><p>本人性格开朗，稳重有活力，待人热情，真诚。工作认真负责，积极主动，能吃苦耐劳 有较强的实际动手能力和团体协作精神。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					
					Pstring=Pstring+'</div></div>';
				}
				$("#myCarousel2Ol").append(Liststring);
 				$("#show_teamMumber").append(Pstring);
 			}
        });*/
	
	
	//团队教师获取数据的请求
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
				var Tstring="";
				var Liststr="";
 				for(var i=0;i<data.length;i++){
					if(i===0){
						Tstring=Tstring+'<div class="item active"><div class="teacher_item"><div class="teacher_left"><img src="../images/3D//teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">谢青伶</h3><p>湖南农业大学体育艺术学院环境设计系讲师</p><p class="p2">思博客创新实验室3D建模团队导师。 主讲室内设计、照明设计、电脑制图等室内设计、装饰装修课程。 同时也担任绘画、书法等课程的教学。</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="teacher_item"><div class="teacher_left"><img src="../images/3D//teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">谢青伶</h3><p>湖南农业大学体育艺术学院环境设计系讲师</p><p class="p2">思博客创新实验室3D建模团队导师。 主讲室内设计、照明设计、电脑制图等室内设计、装饰装修课程。 同时也担任绘画、书法等课程的教学。</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);
 			}
        });*/
	
	//组员作品获取数据的请求
	/*$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'Checkdept.do',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				$("#img1").attr("src","../images/3D/partOne_1.png");
				$("#img2").attr("src","../images/3D/partOne_2.png");
				$("#img3").attr("src","../images/3D/partOne_3.png");
				$("#img4").attr("src","../images/3D/partTwo_1.png");
				$("#img5").attr("src","../images/3D/partTwo_2.png");
				$("#img6").attr("src","../images/3D/partTwo_3.png");
 			}
        });
			*/	
	//就业成员获取数据的请求
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
				var Estring='';
				var Estr='<li data-target="#carouselEmployeeStar" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=data.length/4;
				var num2=data.length%4;
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Estr=Estr+'<li data-target="#carouselEmployeeStar" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=num;i++){
					if(i===1){
						Estring=Estring+'<div class="item active">';
					}else{
						Estring=Estring+'<div class="item">';
					}
					if(i!==num){
						for(var j=0;j<4;j++){
							
								Estring=Estring+'<div class="memberStar"><div class="memberPhoto"><img src="../images/3D/student1_3D.png"></div><h3>朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div>';
						}
					}else{
						var maxNum=data.lenght-(num-1)*4;
						for(var a=0;a<maxNum;a++){
							
								Estring=Estring+'<div class="memberStar"><div class="memberPhoto"><img src="../images/3D/student2_3D.png"></div><h3>刘安奇</h3><p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></div>';
						}
					}
					
					Estring=Estring+'</div></div>';
				}
				$("#employeeCarousel").append(Estr);
 				$("#show_employee").append(Estring);
 			}
        });*/
				
	
});