// JavaScript Document
$(document).ready(function(){
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getEmployeeAllInfo.do',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
 				alert(data[0].length);
				var ProgramStr="";
				var UIStr="";
				var ThreeStr="";
				var CGStr="";
				for(var i=0;i<data[0].length;i++){
					
					if(data[1][i].gid===1){
						
						ProgramStr=ProgramStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="'+data[1][i].headshot+'"></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[1][i].sname+'</h3><br><p>'+data[1][i].student_introduce+'</p></div></div>';
						continue;
					}
					if(data[1][i].gid===2){
						
						UIStr=UIStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="'+data[1][i].headshot+'"></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[1][i].sname+'</h3><br><p>'+data[1][i].student_introduce+'</p></div></div>';
						continue;
					}
					if(data[1][i].gid===5){
						
						ThreeStr=ThreeStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="'+data[1][i].headshot+'"></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[1][i].sname+'</h3><br><p>'+data[1][i].student_introduce+'</p></div></div>';
						continue;
					}
					if(data[1][i].gid===4 || data[1][i].gid===6){
						
						CGStr=CGStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="'+data[1][i].headshot+'"></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[1][i].sname+'</h3><br><p>'+data[1][i].student_introduce+'</p></div></div>';
						continue;
					}
					
				}
				
				$("#program").append(ProgramStr);
				$("#UI").append(UIStr);
				$("#3D").append(ThreeStr);
				$("#CG").append(CGStr);
 			}
        });
	
	
	
});