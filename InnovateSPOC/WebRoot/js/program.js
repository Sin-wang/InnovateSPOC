// JavaScript Document
$(document).ready(function() {
	//获取团队成员的请求
	 $.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'get_Pstudent.do',
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
				var num1=data[0].length/5;
				var num2=data[0].length%5;
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" id="'+data[0][5*(i-1)+j].sid+'"><img src="../images/program/member1.png" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+j].sname +'</h4><p>'+ data[0][5*(i-1)+j].student_introduce +'</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail" id="'+data[0][5*(i-1)+j].sid+'"><img src="../images/program/member2.png" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+j].sname +'</h4><p>'+ data[0][5*(i-1)+j].student_introduce +'</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=data[0].length-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" id="'+data[0][5*(i-1)+a].sid+'"><img src="../images/program/member1.png" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+a].sname +'</h4><p>'+ data[0][5*(i-1)+a].student_introduce +'</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail" id="'+data[0][5*(i-1)+a].sid+'"><img src="../images/program/member2.png" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+a].sname +'</h4><p>'+ data[0][5*(i-1)+a].student_introduce +'</p></div></div></div>';
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
 			url : 'getTeacher.do',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				var Tstring="";
				var Liststr="";
 				for(var i=0;i<data[0].length;i++){
					if(i===0){
						Tstring=Tstring+'<div class="item active"><div class="teacher_item"><div class="teacher_left"><img src="../images/program/teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">'+ data[0][i].tname +'</h3><p>湖南农业大学 互联网+移动应用创新班</p><p class="p2">'+ data[0][i].teacher_introduce +'</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="teacher_item"><div class="teacher_left"><img src="../images/program/teacher.png"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">'+ data[0][i].tname +'</h3><p>湖南农业大学 互联网+移动应用创新班</p><p class="p2">'+ data[0][i].teacher_introduce +'</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);
 			}
        });
//	//获取组员作品的请求
	$.ajax({
		async : false,
    	type : 'POST',
			dataType : 'json',
			url : 'getWork.do',
			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
			success : function(data) {
			var Wstring='';
			var Wstr='';
				for (var i=0;i<data[0].length;i++){
					if(i===0){
					Wstr=Wstr+'<li data-target="#carousel_work" data-slide-to="0" class="active"></li>';
					Wstring=Wstring+'<div class="item active"><div class="work_item"><img src="'+data[0][i].photo_address+'"></div></div>';
				}else{
					Wstr=Wstr+'<li data-target="#carousel_work" data-slide-to="'+i+'"></li>';
					Wstring=Wstring+'<div class="item"><div class="work_item"><img src="'+data[0][i].photo_address+'"></div></div>';
				}
				}
			$("#work_list").append(Wstr);
			$("#show_work").append(Wstring);
			}
    
    });		
				
//	//获取就业学员的请求
	$.ajax({
    	type : 'POST',
			dataType : 'json',
			url : 'getEmploy.do',
			async : false,
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
				var num1=data[0].length/4;
				var num2=data[0].length%4;
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
							
								Estring=Estring+'<div class="employee_item"><div class="employee_pic"><img src="../images/program/people1.png"></div><h3 class="employee_h3">'+data[0][j].sid+'</h3><p>'+data[0][j].graduation_year+'届毕业生</p></div>';
						}
					}else{
						var maxNum=data[0].length-(num-1)*4;
						for(var a=0;a<maxNum;a++){
							
								Estring=Estring+'<div class="employee_item"><div class="employee_pic"><img src="../images/program/people1.png"></div><h3 class="employee_h3">'+data[0][a].sid+'</h3><p>'+data[0][a].graduation_year+'届毕业生</p></div>';
						}
					}
					
					Estring=Estring+'</div></div>';
				}
				$("#employee_list").append(Estr);
 				$("#show_employee").append(Estring);
	
	
			}
    
    });
	
	
	//企业交流管理
	$.ajax({
    	type : 'POST',
			dataType : 'json',
			url : 'getPcompany.do',
			error : function(request) {
				bootbox.alert({
     			  message: "请求异常",
     			  size: 'small'
     		  });
			},
			success : function(data) {
				/*alert(data[0].length);*/
				alert(data[0].length+"****"+data[0][0].photo+"****"+data[0][0].title);
				
				/*$("#img1").attr("src",data[0][0].photo);
				$("#img2").attr("src",data[0][1].photo);
				$("#img3").attr("src",data[0][2].photo);
				$("#img4").attr("src",data[0][3].photo);
				$("#img5").attr("src",data[0][4].photo);
				
				$("#title1").attr("src",data[0][0].title);
				$("#title2").attr("src",data[0][1].title);
				$("#title3").attr("src",data[0][2].title);
				$("#title4").attr("src",data[0][3].title);
				$("#title5").attr("src",data[0][4].title);*/
			}
    });
	
	
	
	
	
});