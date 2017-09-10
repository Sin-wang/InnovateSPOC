// JavaScript Document
$(document).ready(function() {
	//团队成员获取数据的请求
	 $.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'get_student.do',
 			data :{
 				gid :2
 			},
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
				var num1=data[0].length/5;
				var num2=data[0].length%5;
				//alert(num1);
				//alert(num2);
				var str1="";
				if(num2===0){
					num=num1;
				}
				else{
					num=parseInt(num1)+1;
				}
				for(var k=1;k<num;k++){
					Liststring=Liststring+'<li data-target="#mycarousel2" data-slide-to="'+k+'"></li>';
					//alert(num+" "+k+" "+Liststring);
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
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="'+ data[0][5*(i-1)+j].headshot +'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+j].sname +'</h4><p>'+ data[0][5*(i-1)+j].student_introduce +'</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="'+ data[0][5*(i-1)+j].headshot +'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+j].sname +'</h4><p>'+ data[0][5*(i-1)+j].student_introduce +'</p></div></div></div>';
							}
							Pstring=Pstring+str1;
						}
					}else{
						var maxNum=data[0].length-(num-1)*5;
						for(var a=0;a<maxNum;a++){
							if(a===0){
								str1='<div class="row"><div class="col-sm-2 col-md-2 col-md-offset-1 col-sm-offset-1"><div class="thumbnail" data-toggle="modal" data-target="#resume_myModal"><img src="'+ data[0][5*(i-1)+a].headshot +'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+a].sname +'</h4><p>'+ data[0][5*(i-1)+a].student_introduce +'</p></div></div></div>';
							}else{
								str1='<div class="col-sm-2 col-md-2"><div class="thumbnail"><img src="'+ data[0][5*(i-1)+a].headshot +'" alt="..."><div class="caption"><h4>'+ data[0][5*(i-1)+a].sname +'</h4><p>'+ data[0][5*(i-1)+a].student_introduce +'</p></div></div></div>';
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
	
	
	//团队教师获取数据的请求
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getTeacher.do',
 			data :{
 				gid :2
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
						Tstring=Tstring+'<div class="item  active"><div class="p8_con1"><div class="p8_conbg"><div class="p8_text"><h1>'+ data[0][i].tname +'</h1><p>高级讲师</p><p>'+ data[0][i].teacher_introduce +'</p></div></div><div class="p8_teacher1" style="background: url('+data[0][i].photo_address+') no-repeat;background-size: cover;"></div></div></div>';
						Liststr=Liststr+'<li data-target="#mycarousel4" data-slide-to="0" class="active"></li>';
					}else{
						Tstring=Tstring+'<div class="item"><div class="p8_con1"><div class="p8_conbg"><div class="p8_text"><h1>'+ data[0][i].tname +'</h1><p>高级讲师</p><p>'+ data[0][i].teacher_introduce +'</p></div></div><div class="p8_teacher1" style="background: url('+data[0][i].photo_address+') no-repeat;background-size: cover;"></div></div></div>';
						Liststr=Liststr+'<li data-target="#mycarousel4" data-slide-to="'+i+'" style="margin: 0;"></li>';
					}
				}
				$("#teacher_list").append(Liststr);
				$("#p8_inner").append(Tstring);
 			}
        });
	
//	//组员作品获取数据的请求
	$.ajax({
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
				var Wstring='<ul><li><img src="'+data[0][0].photo_address+'" style="width: 420px; height: 378px;"/><div id="p5_con1_bg"><p>组员作品</p></div></li><li><img src="'+data[0][1].photo_address+'" style="width: 537px; height: 378px;"/></li><li><img src="'+data[0][2].photo_address+'" style="width: 210px; height: 210px;"/><img src="'+data[0][0].photo_address+'" style="width: 210px; height: 294px;"/></li><li><img src="'+data[0][3].photo_address+'" style="width: 520px; height: 520px;"/></li><li><img src="'+data[0][4].photo_address+'" style="width: 210px; height: 210px;"/><img src="'+data[0][5].photo_address+'" style="width: 210px; height: 294px;"/></li></ul>';
				
				$("#p5_content").append(Wstring);
 			}
        
        });
//				
//	//就业成员获取数据的请求
	 $.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getEmploy.do',
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
				var num1=data[0].length/4;
				var num2=data[0].length%4;
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
							
								Estring=Estring+'<li><p class="p7_conname">'+data[0][j].sid+'</p><p class="p7_condate">Dec 04,2014</p><p class="p7_conintro">'+data[0][j].graduation_year+'毕业生</p></li>';
						}
					}else{
						var maxNum=data[0].length-(num-1)*4;
						for(var a=0;a<maxNum;a++){
							
								Estring=Estring+'<li><p class="p7_conname">'+data[0][j].sid+'</p><p class="p7_condate">Dec 06,2014</p><p class="p7_conintro">'+data[0][j].graduation_year+'毕业生</p></li>';
						}
					}
					
					Estring=Estring+'</ul></div>';
				}
				$("#employee_list").append(Estr);
 				$("#show_employee").append(Estring);
 			}
        
        });
	//企业交流管理
		$.ajax({
	    	type : 'POST',
				dataType : 'json',
				url : 'getUcompany.do',
				error : function(request) {
					bootbox.alert({
	     			  message: "请求异常",
	     			  size: 'small'
	     		  });
				},
				success : function(data) {
					
					$("#img1").attr("src",data[0][0].photo);
					$("#img2").attr("src",data[0][1].photo);
					$("#img3").attr("src",data[0][2].photo);
					$("#img4").attr("src",data[0][3].photo);
					$("#img5").attr("src",data[0][4].photo);
					
					$("#title1").text(data[0][0].title);
					$("#title2").text(data[0][1].title);
					$("#title3").text(data[0][2].title);
					$("#title4").text(data[0][3].title);
					$("#title5").text(data[0][4].title);
				}
	    });			
	
});