// JavaScript Document
$(document).ready(function() {
	//获取团队成员的请求
	 $.ajax({
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
				var Liststring='<li data-target="#carousel_menber" data-slide-to="0" class="active"></li>';
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
        });
	//获取团队教师的请求
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
						Tstring=Tstring+'<div class="item active"><div class="teacher_item"><div class="teacher_left"><img src="../images/program/teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">罗旭</h3><p>湖南农业大学 互联网+移动应用创新班</p><p class="p2">2我是一个对理想有着执着追求的人，坚信是金子总会发光。大学毕业后的工作，让我在文案策划方面有了很大的提高，文笔流畅，熟悉传媒工作、广告学制作与设计等工作方面。为人热情，活泼，大方， 本人好学上进，诚信、敬业、责任心强，有强烈的团体精神，对工作认真积极，严谨负责。</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="teacher_item"><div class="teacher_left"><img src="../images/program/teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">罗旭</h3><p>湖南农业大学 互联网+移动应用创新班</p><p class="p2">2我是一个对理想有着执着追求的人，坚信是金子总会发光。大学毕业后的工作，让我在文案策划方面有了很大的提高，文笔流畅，熟悉传媒工作、广告学制作与设计等工作方面。为人热情，活泼，大方， 本人好学上进，诚信、敬业、责任心强，有强烈的团体精神，对工作认真积极，严谨负责。</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);
 			}
        });
	//获取组员作品的请求
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
			var Wstring='';
			var Wstr='';
				for (var i=0;i<data.length;i++){
					if(i===0){
					Wstr=Wstr+'<li data-target="#carousel_work" data-slide-to="0" class="active"></li>';
					Wstring=Wstring+'<div class="item active"><div class="work_item"><img src="../images/program/work1.png"></div></div>';
				}else{
					Wstr=Wstr+'<li data-target="#carousel_work" data-slide-to="'+i+'"></li>';
					Wstring=Wstring+'<div class="item"><div class="work_item"><img src="../images/program/work1.png"></div></div>';
				}
				}
			$("#work_list").append(Wstr);
			$("#show_work").append(Wstring);
			}
    });		
				
	//获取就业学员的请求
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
			var Estr='<li data-target="#carousel_employee" data-slide-to="0" class="active"></li>';
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
				Estr=Estr+'<li data-target="#carousel_employee" data-slide-to="'+k+'"></li>';
			}
			
			for(var i=1;i<=num;i++){
				if(i===1){
					Estring=Estring+'<div class="item active">';
				}else{
					Estring=Estring+'<div class="item">';
				}
				if(i!==num){
					for(var j=0;j<4;j++){
						
							Estring=Estring+'<div class="employee_item"><div class="employee_pic"><img src="../images/program/people1.png"></div><h3 class="employee_h3">朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div>';
					}
				}else{
					var maxNum=data.lenght-(num-1)*4;
					for(var a=0;a<maxNum;a++){
						
							Estring=Estring+'<div class="employee_item"><div class="employee_pic"><img src="../images/program/people1.png"></div><h3 class="employee_h3">朱锐锋</h3><p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p></div>';
					}
				}
				
				Estring=Estring+'</div></div>';
			}
			$("#employee_list").append(Estr);
				$("#show_employee").append(Estring);
			}
    });
});