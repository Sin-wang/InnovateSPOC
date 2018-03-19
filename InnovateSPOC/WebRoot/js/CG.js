// JavaScript Document
$(document).ready(function() {
//学员介绍获取数据的请求	
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getStudentByGid.do',
 			data :{
 				gid :6
 			},
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><a href="resume.jsp?sid='+data[0][5*(i-1)+j].sid+'" target="_blank"><div class="thumbnail" id="'+data[0][5*(i-1)+j].sid+'"><img src="'+data[0][5*(i-1)+j].headshot+'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+j].sname +'</h4><p class="limitWord">'+ data[0][5*(i-1)+j].student_introduce +'</p></div></div></a></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><a href="resume.jsp?sid='+data[0][5*(i-1)+j].sid+'" target="_blank"><div class="thumbnail" id="'+data[0][5*(i-1)+j].sid+'"><img src="'+data[0][5*(i-1)+j].headshot+'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+j].sname +'</h4><p class="limitWord">'+ data[0][5*(i-1)+j].student_introduce +'</p></div></div></a></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=data[0].length-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><a href="resume.jsp?sid='+data[0][5*(i-1)+a].sid+'" target="_blank"><div class="thumbnail" id="'+data[0][5*(i-1)+a].sid+'"><img src="'+data[0][5*(i-1)+a].headshot+'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+a].sname +'</h4><p class="limitWord">'+ data[0][5*(i-1)+a].student_introduce +'</p></div></div></a></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><a href="resume.jsp?sid='+data[0][5*(i-1)+a].sid+'" target="_blank"><div class="thumbnail" id="'+data[0][5*(i-1)+a].sid+'"><img src="'+data[0][5*(i-1)+a].headshot+'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+a].sname +'</h4><p class="limitWord">'+ data[0][5*(i-1)+a].student_introduce +'</p></div></div></a></div>';
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
 			url : 'getEmployeeStudent.do',
 			data :{
 				gid :6
 			},
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
			    var total2=data[0].length;
				var Pstring='';
				var Liststring='';
				
				if(data[0].length==0){
					$("#Loading_member").show();
					 
				}else{
					Estr='<li data-target="#carousel_students" data-slide-to="0" class="active"></li>';
				}
				
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
								str1='<div class="row"><div class="col-md-offset-1 col-sm-offset-1"><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="'+data[0][j].headshot+'"></div><h3>'+data[0][j].sname+'</h3><p>'+data[0][j].student_introduce+'届毕业生</p></div></div></div>';
							}else{
								str1='<div><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="'+data[0][j].headshot+'"></div><h3>'+data[0][j].sname+'</h3><p>'+data[0][j].student_introduce+'届毕业生</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNumber=total2-(number-1)*4;
						for(var a=0;a<maxNumber;a++){
							if(a===0){
								str1='<div class="row"><div class="col-md-offset-1 col-sm-offset-1"><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="'+data[0][a].headshot+'"></div><h3>'+data[0][a].sid+'</h3><p>'+data[0][a].graduation_year+'届毕业生</p></div></div></div>';
							}else{
								str1='<div><div class="member_item"><div class="img-thumbnail"><div class="member_pic"><img src="'+data[0][a].headshot+'"></div><h3>'+data[0][a].sid+'</h3><p>'+data[0][a].graduation_year+'届毕业生</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}
					Pstring=Pstring+'</div></div>';
				}
				$("#employee_list").append(Liststring);
 				$("#show_employee").append(Pstring);	
			}
        });
		
	//团队教师获取数据的请求
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getTeacher.do',
 			data :{
 				gid :6
 			},
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
						Tstring=Tstring+'<div class="item active"><div class="teacher_item"><div class="teacher_left"><img src="'+ data[0][i].photo_address +'"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">'+ data[0][i].tname +'</h3><p>'+data[0][i].position+'</p><p class="p2">'+ data[0][i].teacher_introduce +'</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="teacher_item"><div class="teacher_left"><img src="'+ data[0][i].photo_address +'"></div><div class="teacher_bg"><div class="teacher_right"><h3 class="text-left">'+ data[0][i].tname +'</h3><p>'+data[0][i].position+'</p><p class="p2">'+ data[0][i].teacher_introduce +'</p></div></div></div></div>';
						Liststr=Liststr+'<li data-target="#carousel_teacher" data-slide-to="'+i+'"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#show_teacher").append(Tstring);
 			}
        });
	
	//获得作品信息
	$.ajax({
    	type : 'POST',
			dataType : 'json',
			url : 'getWorkInfoBygid.do',
			data :{
 				gid :6
 			},
			error : function(request) {
				bootbox.alert({
     			  message: "请求异常",
     			  size: 'small'
     		  });
			},
			success : function(data) {


				var Wstring='';
				var showLength=0;
				if(data[0].length>4){
					showLength=4;
				}else{
					showLength=data[0].length;
				}
					for (var i=0;i<showLength;i++){
						Wstring=Wstring+'<div class="work_content" style="background: url('+data[0][i].photo_address+') no-repeat;"><div class="intro workName"><h1>'+data[0][i].project_name+'</h1></div></div>';
					}
				
				$("#work_show").append(Wstring);
							
			}
    });
	
	
	
					
});