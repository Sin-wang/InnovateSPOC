// JavaScript Document
$(document).ready(function(){
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'get_3Dstudent.do',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				var ProgramStr="";
				var UIStr="";
				var ThreeStr="";
				var CGStr="";
				for(var i=0;i<data[0].length;i++){
					if(data[0][i].gid===1 && data[0][i].graduation == '是' && data[0][i].employed == '否'){
						$("#Loading_member1").hide();
						ProgramStr=ProgramStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><a href="resume.jsp?sid='+data[0][i].sid+'" target="_blank"><img src="'+data[0][i].headshot+'"></a></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[0][i].sname+'</h3><br><p>'+data[0][i].student_introduce+'</p></div></div>';
						continue;
					}
					if(data[0][i].gid===2 && data[0][i].graduation == '是' && data[0][i].employed == '否') {
						$("#Loading_member2").hide();
						UIStr=UIStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><a href="resume.jsp?sid='+data[0][i].sid+'" target="_blank"><img src="'+data[0][i].headshot+'"></a></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[0][i].sname+'</h3><br><p>'+data[0][i].student_introduce+'</p></div></div>';
						continue;
					}
					if(data[0][i].gid===5 && data[0][i].graduation == '是' && data[0][i].employed == '否'){
						$("#Loading_member3").hide();
						ThreeStr=ThreeStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><a href="resume.jsp?sid='+data[0][i].sid+'" target="_blank"><img src="'+data[0][i].headshot+'"></a></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[0][i].sname+'</h3><br><p>'+data[0][i].student_introduce+'</p></div></div>';
						continue;
					}
					if((data[0][i].gid===4 || data[0][i].gid===6 ) && data[0][i].graduation == '是' && data[0][i].employed == '否'){
						$("#Loading_member4").hide();
						CGStr=CGStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><a href="resume.jsp?sid='+data[0][i].sid+'" target="_blank"><img src="'+data[0][i].headshot+'"></a></div><div class="recruit_body"><br><h3 class="recruit-heading">'+data[0][i].sname+'</h3><br><p>'+data[0][i].student_introduce+'</p></div></div>';
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