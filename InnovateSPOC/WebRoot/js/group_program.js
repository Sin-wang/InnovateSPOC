$("#types").click(function(){
	$("#type").toggle(200);
});
		var ContStr="";
		for(var i=0;i<7;i++){
			ContStr=ContStr+'<div class="content" style="background: url(../images/group_program/bg.png) no-repeat;"><div class="intro"><h1>软件工程师</h1><p>主导人：李彩</p><p>参与人：潘葛&nbsp;赵勇</p><p>类型：软件工程师</p></div></div>';
		}
		$("#contents").append(ContStr);
	
