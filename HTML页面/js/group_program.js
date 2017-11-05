$("#types").click(function(){
	$("#type").toggle(200);
});
var ContStr="";
		
			ContStr=ContStr+'<div class="content" style="background: url(../images/group_program/bg.png) no-repeat;"><div class="intro workName"><h1>坦克模型1</h1><p>主导人：李彩</p><p class="menbername">参与人：潘葛 赵勇</p><p class="work_type">类型：软件工程师</p></div><p class="work_group">（3D组作品）</p><p class="work_intro">市场状况：保健品市场发展快，规模大，但竞争激烈，起伏大；“广告开路”是营养保健品营销的重要特点；市场价格普遍偏高，流通企业利润较大；最近两年保健品市场出现了较大的滑坡。产品状况：各类营养保健品有几百种，有进补养生类，人体平衡类，清除垃圾类，菌群平衡类等等。销路稍好的品种每盒价格在30-40元，零售价与出厂价的差额一般在30%；；包装多采用玻璃瓶或PVC。 (3) 竞争状况：竞争激烈，起伏大，经常出现“各领风骚两三年”的情况。</p><p class="expression">视频</p></div>';
		
			ContStr=ContStr+'<div class="content" style="background: url(../images/group_program/bg.png) no-repeat;"><div class="intro workName"><h1>坦克模型2</h1><p>主导人：彭心雨</p><p class="menbername">参与人：潘葛 赵勇</p><p class="work_type">类型：软件工程师</p></div><p class="work_group">（特效组作品）</p><p class="work_intro">市场状况：保健品市场发展快，规模大，但竞争激烈，起伏大；“广告开路”是营养保健品营销的重要特点；市场价格普遍偏高，流通企业利润较大；最近两年保健品市场出现了较大的滑坡。产品状况：各类营养保健品有几百种，有进补养生类，人体平衡类，清除垃圾类，菌群平衡类等等。销路稍好的品种每盒价格在30-40元，零售价与出厂价的差额一般在30%；；包装多采用玻璃瓶或PVC。 (3) 竞争状况：竞争激烈，起伏大，经常出现“各领风骚两三年”的情况。</p><p class="expression">静帧图</p></div>';

		$("#contents").append(ContStr);
	
$(document).on("click",".content",function(){
		var menbername="";//项目成员
		var workName="";//项目名称
		var workGroup="";//所属组别
		var workIntro="";
	var expression=$(this).find(".expression").text();
	if(expression==="静帧图"){
		menbername=$(this).find(".menbername").text();//项目成员
		workName=$(this).find("h1").text();//项目名称
		workGroup=$(this).find(".work_group").text();//所属组别
		workIntro=$(this).find(".work_intro").text();
	//	/*项目图片地址*/
		var linkAddress=$(this).attr("style");
		var linkStar=linkAddress.indexOf("(")+1;
		var linkEnd=linkAddress.lastIndexOf(")");
		var str=linkAddress.substring(linkStar,linkEnd);

		$("#work_name").text(workName);
		$("#work_belong").text(workGroup);
		$("#menber_name").text(menbername);
		$("#work_intro").text(workIntro);
		$("#Login").modal('show');
	}else{
		var str2="http://1252367251.vod2.myqcloud.com/dedcbf81vodgzp1252367251/994917589031868223332412181/WZKA0v5jNmcA.mp4";
		menbername=$(this).find(".menbername").text();//项目成员
		workName=$(this).find("h1").text();//项目名称
		workGroup=$(this).find(".work_group").text();//所属组别
		workIntro=$(this).find(".work_intro").text();
		var myPlayer = videojs("example_video_2");
		$("#example_video_2").attr("src",str2);
		myPlayer.src(str2);
        myPlayer.load(str2);
		myPlayer.play();
		$("#work_name2").text(workName);
		$("#work_belong2").text(workGroup);
		$("#menber_name2").text(menbername);
		$("#work_intro2").text(workIntro);
		$("#showVideo").modal('show');
	}
	
});

$('#showVideo').on('hidden.bs.modal', function () {
	var myPlayer = videojs("example_video_2");
	myPlayer.pause();
});