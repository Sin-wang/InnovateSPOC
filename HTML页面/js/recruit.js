// JavaScript Document
$(document).ready(function(){
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
				var ProgramStr="";
				var UIStr="";
				var ThreeStr="";
				var CGStr="";
				for(var i=1;i<=12;i++){
					if(data[0][i].gid===1){
						ProgramStr=ProgramStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="../images/CG/recruit.png"></div><div class="recruit_body"><br><h3 class="recruit-heading">Program'+i+'</h3><br><p>热爱生活，喜欢足球，工作认真，主动，有较强责任心。我是思博课最丑的人，大家不要嘲笑我好嘛？我想找一份工作，就是在宾馆面前当保安。</p></div></div>';
						continue;
					}
					if(data[0][i].gid===2){
						UIStr=UIStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="../images/CG/recruit.png"></div><div class="recruit_body"><br><h3 class="recruit-heading">UI'+i+'</h3><br><p>热爱生活，喜欢足球，工作认真，主动，有较强责任心。我是思博课最丑的人，大家不要嘲笑我好嘛？我想找一份工作，就是在宾馆面前当保安。</p></div></div>';
						continue;
					}
					if(data[0][i].gid===3){
						ThreeStr=ThreeStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="../images/CG/recruit.png"></div><div class="recruit_body"><br><h3 class="recruit-heading">3D'+i+'</h3><br><p>热爱生活，喜欢足球，工作认真，主动，有较强责任心。我是思博课最丑的人，大家不要嘲笑我好嘛？我想找一份工作，就是在宾馆面前当保安。</p></div></div>';
						continue;
					}
					if(data[0][i].gid===4){
						CGStr=CGStr+'<div class="recruit"><div class="news-bottom"></div>	<div class="recruit_left"><img src="../images/CG/recruit.png"></div><div class="recruit_body"><br><h3 class="recruit-heading">CG'+i+'</h3><br><p>热爱生活，喜欢足球，工作认真，主动，有较强责任心。我是思博课最丑的人，大家不要嘲笑我好嘛？我想找一份工作，就是在宾馆面前当保安。</p></div></div>';
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