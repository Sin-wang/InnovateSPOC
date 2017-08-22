// JavaScript Document
$(document).ready(function() {
	
				var zy=8;
				var Pstring='';
				var Liststring='<li data-target="#mycarousel2" data-slide-to="0" class="active"></li>';
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
					Liststring=Liststring+'<li data-target="#mycarousel2" data-slide-to="'+k+'"></li>';
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/program/member1.png" alt="..."><div class="caption"><h4>java工程师　李彩</h4><p>性格开朗、稳重、充满活力，有良好的社交能力，担任项目开发的组长，具备强烈的责任心、对外沟通和团队协作能力。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/program/member2.png" alt="..."><div class="caption"><h4>java工程师　潘葛</h4><p>喜欢新技术，性格开朗、生活规律、吃苦耐劳、做事认真讲求方法，有较强的沟通协调能力及团队协作精神。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=zy-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/program/member1.png" alt="..."><div class="caption"><h4>java工程师　李彩</h4><p>性格开朗、稳重、充满活力，有良好的社交能力，担任项目开发的组长，具备强烈的责任心、对外沟通和团队协作能力。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/program/member2.png" alt="..."><div class="caption"><h4>java工程师　潘葛</h4><p>喜欢新技术，性格开朗、生活规律、吃苦耐劳、做事认真讲求方法，有较强的沟通协调能力及团队协作精神。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					
					Pstring=Pstring+'</div></div>';
				}
				$("#team_list").append(Liststring);
 				$("#show_teamMumber").append(Pstring);
	
	
				var Tstring="";
				var Liststr="";
 				for(var m=0;m<2;m++){
					if(m===0){
						Tstring=Tstring+'<div class="item  active"><div class="p8_con1"><div class="p8_conbg"><div class="p8_text"><h1>蔺薛菲</h1><p>高级讲师</p><p>曾历任联想集团高级UI视觉设计师、交互设计师；大唐高鸿产品经理、系统运营总监；B2B电商平台联合创始人。目前有十余款APP在线上运营，专注用户体验和交互设计。</p></div></div><div class="p8_teacher1"></div></div></div>';
						Liststr=Liststr+'<li data-target="#mycarousel4" data-slide-to="0" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="p8_con1"><div class="p8_conbg"><div class="p8_text"><h1>蔺薛菲</h1><p>高级讲师</p><p>曾历任联想集团高级UI视觉设计师、交互设计师；大唐高鸿产品经理、系统运营总监；B2B电商平台联合创始人。目前有十余款APP在线上运营，专注用户体验和交互设计。</p></div></div><div class="p8_teacher1"></div></div></div>';
						Liststr=Liststr+'<li data-target="#mycarousel4" data-slide-to="'+m+'" style="margin: 0;"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#p8_inner").append(Tstring);
 			
	
	
				var Wstring='';
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
				$("#show_work").append(Wstring);
				
				/*var Estring='';
				var Estr='<li data-target="#mycarousel3" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=7/4;
				var num2=7%4;
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Estr=Estr+'<li data-target="#mycarousel3" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=num;i++){
					if(i===1){
						Estring=Estring+'<div class="item active"><ul class="p7_content">';
					}else{
						Estring=Estring+'<div class="item"><ul class="p7_content">';
					}
					if(i!==num){
						for(var j=0;j<4;j++){
							
								Estring=Estring+'<li><p class="p7_conname">朱锐锋</p><p class="p7_condate">Dec 04,2014</p><p class="p7_conintro">2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></li>';
						}
					}else{
						var maxNum=7-(num-1)*4;
						for(var a=0;a<maxNum;a++){
							
								Estring=Estring+'<li><p class="p7_conname">刘安奇</p><p class="p7_condate">Dec 06,2014</p><p class="p7_conintro">015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></li>';
						}
					}
					
					Estring=Estring+'</ul></div>';
				}
				$("#employee_list").append(Estr);
 				$("#show_employee").append(Estring);*/
	
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
				var Liststring='<li data-target="#mycarousel2" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=data.lenght/5;
				var num2=data.lenght%5;
				var str1="";
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Liststring=Liststring+'<li data-target="#mycarousel2" data-slide-to="'+k+'"></li>';
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/program/member1.png" alt="..."><div class="caption"><h4>java工程师　李彩</h4><p>性格开朗、稳重、充满活力，有良好的社交能力，担任项目开发的组长，具备强烈的责任心、对外沟通和团队协作能力。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/program/member2.png" alt="..."><div class="caption"><h4>java工程师　潘葛</h4><p>喜欢新技术，性格开朗、生活规律、吃苦耐劳、做事认真讲求方法，有较强的沟通协调能力及团队协作精神。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=data.lenght-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="../images/program/member1.png" alt="..."><div class="caption"><h4>java工程师　李彩</h4><p>性格开朗、稳重、充满活力，有良好的社交能力，担任项目开发的组长，具备强烈的责任心、对外沟通和团队协作能力。</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="../images/program/member2.png" alt="..."><div class="caption"><h4>java工程师　潘葛</h4><p>喜欢新技术，性格开朗、生活规律、吃苦耐劳、做事认真讲求方法，有较强的沟通协调能力及团队协作精神。</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					
					Pstring=Pstring+'</div></div>';
				}
				$("#team_list").append(Liststring);
 				$("#show_teamMumber").append(Pstring);
 			}
        });*/
	
	
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
 				for(var i=0;i<data.length;i++){
					if(i===0){
						Tstring=Tstring+'<div class="item  active"><div class="p8_con1"><div class="p8_conbg"><div class="p8_text"><h1>蔺薛菲</h1><p>高级讲师</p><p>曾历任联想集团高级UI视觉设计师、交互设计师；大唐高鸿产品经理、系统运营总监；B2B电商平台联合创始人。目前有十余款APP在线上运营，专注用户体验和交互设计。</p></div></div><div class="p8_teacher1"></div></div></div>';
						Liststr=Liststr+'<li data-target="#mycarousel4" data-slide-to="0" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="p8_con1"><div class="p8_conbg"><div class="p8_text"><h1>蔺薛菲</h1><p>高级讲师</p><p>曾历任联想集团高级UI视觉设计师、交互设计师；大唐高鸿产品经理、系统运营总监；B2B电商平台联合创始人。目前有十余款APP在线上运营，专注用户体验和交互设计。</p></div></div><div class="p8_teacher1"></div></div></div>';
						Liststr=Liststr+'<li data-target="#mycarousel4" data-slide-to="'+i+'" style="margin: 0;"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#p8_inner").append(Tstring);
 			}
        });
	
	//组员作品获取数据的请求
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
				var Wstring='<ul><li><img src="../images/UI/p5_con1.jpg" style="width: 420px; height: 378px;"/><div id="p5_con1_bg"><p>组员作品</p></div></li><li><img src="../images/UI/p5_con2.jpeg" style="width: 537px; height: 378px;"/></li><li><img src="../images/UI/p5_con3.jpeg" style="width: 210px; height: 210px;"/><img src="../images/UI/p5_con6.jpeg" style="width: 210px; height: 294px;"/></li><li><img src="../images/UI/p5_con4.jpeg" style="width: 520px; height: 520px;"/></li><li><img src="../images/UI/p5_con5.jpeg" style="width: 210px; height: 210px;"/><img src="../images/UI/p5_con7.jpeg" style="width: 210px; height: 294px;"/></li></ul>';
				
				$("#p5_content").append(Wstring);
 			}
        });
				
	//就业成员获取数据的请求
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
				var Estring='';
				var Estr='<li data-target="#mycarousel3" data-slide-to="0" class="active"></li>';
				var num=0;
				var num1=data.lenght/4;
				var num2=data.lenght%4;
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Estr=Estr+'<li data-target="#mycarousel3" data-slide-to="'+k+'"></li>';
				}
				
				for(var i=1;i<=num;i++){
					if(i===1){
						Estring=Estring+'<div class="item active"><ul class="p7_content">';
					}else{
						Estring=Estring+'<div class="item"><ul class="p7_content">';
					}
					if(i!==num){
						for(var j=0;j<4;j++){
							
								Estring=Estring+'<li><p class="p7_conname">朱锐锋</p><p class="p7_condate">Dec 04,2014</p><p class="p7_conintro">2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></li>';
						}
					}else{
						var maxNum=data.lenght-(num-1)*4;
						for(var a=0;a<maxNum;a++){
							
								Estring=Estring+'<li><p class="p7_conname">刘安奇</p><p class="p7_condate">Dec 06,2014</p><p class="p7_conintro">015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p></li>';
						}
					}
					
					Estring=Estring+'</ul></div>';
				}
				$("#employee_list").append(Estr);
 				$("#show_employee").append(Estring);
 			}
        });
				
	
});