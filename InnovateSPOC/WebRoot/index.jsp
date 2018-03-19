<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   	<meta charset="utf-8" /> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>思博客创新实验室</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
		<meta name="renderer" content="webkit">
		<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<link href="css/video-js.min.css" type="text/css" rel="stylesheet"/>
		<link href="css/common.css" type="text/css" rel="stylesheet"/>
		<link href="css/index.css" type="text/css" rel="stylesheet"/>

  </head>
  
 <body>
		<div class="header">

			<div class="Indextitle" id="J_m_nav">
					<div class="cc_c">
					  <div class="logo">
						<div class="logo_bg">						  
							<img src="images/index/logo.png" width="200px">						
						</div>
					  </div>
					  <div class="menu">
						<ul>
						<li>
						  <a class="nav_stop" href="index.jsp">
							<span class="name_ch">首页</span>
						  </a>
						</li>
                         <li>
							<a href="jsp/program.jsp">
							  <span class="name_ch">程序组</span>
							</a>
						  </li>
                         <li>
							<a href="jsp/UI.jsp">
							  <span class="name_ch">UI组</span>
							</a>
						  </li>
						<li>
							<a href="jsp/3D.jsp">
							  <span class="name_ch">3D组</span>
							</a>
						  </li>							
							 <li>
							<a href="jsp/CG.jsp">
						  	  <span class="name_ch">影视特效</span>
							</a>
						  </li>
							 <li>
							<a href="jsp/downloadfile.jsp">
						  	  <span class="name_ch">文件分享</span>
							</a>
						  </li>
							 <li>
							<a href="jsp/group_project.jsp">
						  <span class="name_ch">团队作品</span>
							</a>
						  </li>
						  <li class="dropdown">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="name_ch ">管理入口</span></a>
					          <ul class="dropdown-menu">
					            <li><a href="login.html" target="_blank">登　　录</a></li>
					            <li><a href="http://office" target="_blank">协同办公</a></li>
					            <li><a href="http://video" target="_blank">视频教程</a></li>
					          </ul>
						  </li>							 
							  </ul>
					  </div>
					  <div class="clear"></div>
					</div>
				</div>
		</div>
        

		<!--图片轮播-->
		<div class="top banner_top_large">
			<div class=" carousel  slide" id="myCarousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class=""></li>
					<li data-target="#myCarousel" data-slide-to="1" class=""></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				</ol>
				<div class="carousel-inner">
					<div class="item  active">
						<a href="#">
							<div style="background-image:url(images/index/haibao2.jpg);overflow: hidden"></div>
						</a>
					</div>
					<div class="item">
						<a href="#">
							<div style="background-image:url(images/index/haibao.jpg);overflow: hidden"></div>
						</a>
					</div>
					<div class="item">
						<a href="#">
							<div style="background-image:url(images/index/haibao3.jpg);overflow: hidden"></div>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<!--课程体系-->
		<div class="wrap about-hxsd">
			<div class="fl ">
				<div class="text-center aboutus">
					关于思博客
				</div>
				<div class="about-detail">
					<p class="fz20">
						思博客实训基地
					</p>
					<p class="fz14">
						思博客实训基地目前共有四大专业，20多种门类的专业课程，包括UI设计、游戏设计、影视特效、程序开发课程等，课室配置多媒体平台，拥有多台高配置PC电脑
					</p>
					<a href="#" class="radius-link center-block">阅读更多</a>
				</div>
			</div>
		</div>
		<!--<div id="Fadvantage">-->
			<div class="wrap">
				<div class="fr major">
					<h1 class="title1">技能领域</h1>
					<ul class="contentfl">
						<li class="text-center">
							<a href="jsp/UI.jsp"  >
								<img class="in" src="images/index/1.png" style="width:76px" alt="">
								<p>交互设计</p>
								<p>Interaction design</p>
							</a>
						</li>
						<li class="text-center">
							<a href="jsp/3D.jsp"  >
								<img class="in" src="images/index/2.png" style="width:76px" alt="">
								<p>三维设计</p>
								<p>3D design</p>
							</a>
						</li>
						<li class="text-center">
							<a href="jsp/program.jsp"  >
								<img class="in" src="images/index/3.png" style="width:76px" alt="">
								<p>程序设计</p>
								<p>The Program design</p>
							</a>
						</li>
						<li class="text-center">
							<a href="jsp/CG.jsp"  >
								<img class="in" src="images/index/4.png" style="width:76px" alt="">
								<p>影视特效设计</p>
								<p>CG design</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		<!--</div>-->
		<!--创新班视频-->
		<div class="official-video">
			<div class="wrap text-center">
				<h1 class="title1">思博客团队官方视频</h1>
				<a class="ma videobt" data-toggle="modal" data-target="#myModal"></a>
			</div>
		</div>
		<!--视频弹出框-->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header" style="border-bottom: none">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  </div>
			  <div class="modal-body text-center">
			 	 <div class="playVideo">
			 	 	 <video id="example_video_2" class="video-js vjs-default-skin vjs-big-play-centered vjs-fullscreen-control" controls ="none" width="565" height="410" poster="images/index/video.jpg" data-setup="{}">
					<source id="1" src="http://1252367251.vod2.myqcloud.com/93046229vodtransgzp1252367251/d2192d319031868223455643878/v.f30.mp4" type='video/mp4' />
					</video>
			 	 </div>
			  </div>
			</div>
		  </div>
		</div>
		
		
		<!--新闻中心-->
		<div class="campusnews">
			<div class="wrap">
			<h1 class="title1">团队动态</h1>
			
			<div class=" carousel  slide" id="myCarousel4">
				<ol class="carousel-indicators" id="showListNew">
					
				</ol>
				
				<div class="carousel-inner" id="showNews">
					
					
					
				</div>
			</div>
			 <div class="fr moreNews"><p><a href="jsp/showNewList.do" target="_blank">更多&gt;&gt;</a></p></div> 
		</div>
	</div>

	<!--产品制作流程-->
	<div class="product">
		<div class="product_bg1">
			
			<div class="row product_content">
				<div class="col-md-4 col-xs-4 col-md-offset-1 col-xs-offset-1">
					<img src="images/index/product1.png" class="img-responsive center-block"> 
				</div>
				<div class="col-md-6 col-xs-6 number">
					<div class="product_num1">
						<img src="images/index/number1.png" class="img-responsive">
					</div>
					<div class="product_title">
						<span  class="product_title_white">
							<img src="images/index/cloud.png">原画设计师
						</span>
					</div>
					<div class="product_text">一个创造性的综合信息处理过程，通过线条、符号、数字、色彩等把产品显现人们面前。它将人的某种目的或需要转换为一个具体的物理形式或工具的过程，把一种计划、规划设想、问题解决的方法，通过具体的载体，以美好的形式表达出来。
					</div>
				</div>
			</div>
		</div>
		
		<div class="product_bg2">
			
			<div class="row product_content">
				<div class="col-md-6 col-xs-6  col-md-offset-1 col-xs-offset-1">
					<div class="product_title">
						<span class="product_title_red">
							<img src="images/index/cloud_red.png">交互设计师
						</span>
					</div>
					<div  class="product_text">完成对产品与它的使用者之间的互动机制进行分析、预测、定义、规划、描述和探索的过程的设计师。交互指的是产品与它的使用者之间的互动过程，而交互设计师则是秉承以用户为中心的设计理念，以用户体验度为原则，对交互过程进行研究并开展设计的工作人员
					</div>
				</div>
				<div class="col-md-4 col-xs-4">
					<img src="images/index/product2.png" class="img-responsive"> 
				</div>
			</div>
		</div>
		
		<div class="product_bg1 number">
			<div class="product_num2">
				<img src="images/index/number2.png" class="img-responsive center-block">
			</div>
			
			<div class="row product_content">
				<div class="col-md-4 col-xs-4 col-md-offset-1 col-xs-offset-1">
					<img src="images/index/product3.png" class="img-responsive center-block"> 
				</div>
				<div class="col-md-6 col-xs-6">
					<div class="product_title">
						<span  class="product_title_white">
							<img src="images/index/cloud.png">3D模型师
						</span>
					</div>
					<div class="product_text">是设计制作动画图案、角色造型、上色、建模等一系列工序，是三维动画设计制作的灵魂。在计算机中首先建立一个虚拟的世界，设计师在这个虚拟的三维世界中按照要表现的对象的形状尺寸建立模型以及场景，再根据要求设定模型的运动轨迹、虚拟摄影机的运动和其它动画参数，最后按要求为模型赋上特定的材质，并打上灯光。当这一切完成后就可以让计算机自动运算，生成最后的画面。
					</div>
				</div>
			</div>
		</div>
		
		<div class="product_bg2 number" style="border-bottom: solid #ec433d 2px">
			<div class="product_num3">
				<img src="images/index/number3.png" class="img-responsive">
			</div>
			<div class="row product_content">
				<div class="col-md-6 col-xs-6  col-md-offset-1 col-xs-offset-1">
					<div class="product_title">
						<span class="product_title_red">
							<img src="images/index/cloud_red.png">特效师
						</span>
					</div>
					<div  class="product_text">就是在动画制作过程中，使用数字虚拟技术添加虚拟场景、虚拟道具、虚拟角色以及用常规方法无法实现的特效镜头。为现代VR的制作提供各种虚拟元素，给观众带来最强视觉冲击力的视听享受.

					</div>
				</div>
				<div class="col-md-4 col-xs-4">
					<img src="images/index/product4.png" class="img-responsive"> 
				</div>
			</div>
		</div>
		
		<div class="product_bg2">
			
			<div class="row product_content">
				<div class="col-md-6 col-xs-6  col-md-offset-1 col-xs-offset-1">
					<div class="product_title">
						<span class="product_title_red">
							<img src="images/index/cloud_red.png">地形编辑师
						</span>
					</div>
					<div  class="product_text">使用3D MAX进行角色骨胳的绑定，使用IK、骨骼系统制作复杂角色动画，使所做的模型随着控制器运动，左右身体各部位的移动,达到模拟真人的效果。
					</div>
				</div>
				<div class="col-md-4 col-xs-4">
					<img src="images/index/product6.png" class="img-responsive"> 
				</div>
			</div>
		</div>
		
		<div class="product_bg1 number">
			<div class="product_num2">
				<img src="images/index/number4.png" class="img-responsive">
			</div>
			<div class="row product_content">
				<div class="col-md-4 col-xs-4 col-md-offset-1 col-xs-offset-1">
					<img src="images/index/product5.png" class="img-responsive center-block"> 
				</div>
				<div class="col-md-6 col-xs-6 number">
					<div class="product_num5">
						<img src="images/index/number5.png" class="img-responsive">
					</div>
					<div class="product_title">
						<span  class="product_title_white">
							<img src="images/index/cloud.png">动作设计师
						</span>
					</div>
					<div class="product_text">应用3ds max制作软件以及其它各类动画制作软件制作和设计3D角色和怪物的各类动作，创建真实的有机和无机组织的动作，达到效果逼真的目的，将更多的动作以优美，和谐，自然，细腻的动画形态表现于游戏之中。
					</div>
				</div>
			</div>
		</div>
		
		<div class="product_bg2">
			<div class="row product_content">
				<div class="col-md-6 col-xs-6  col-md-offset-1 col-xs-offset-1">
					<div class="product_title">
						<span class="product_title_red">
							<img src="images/index/cloud_red.png">Unity程序员
						</span>
					</div>
					<div  class="product_text">使用Unity等游戏开发引擎以及脚本语言（如C#），前期根据游戏规划编写代码，以及运用开发套件，实现相应的功能，开发出游戏程序，后期需要根据玩家需求，扩展游戏功能，增强稳定性，最终确保玩家有一个沉浸式的良好游戏体验。
					</div>
				</div>
				<div class="col-md-4 col-xs-4">
					<img src="images/index/code.png" class="img-responsive"> 
				</div>
			</div>
		</div>
		<div class="row">
			<img src="images/index/product8.png" class="img-responsive" width="100%">
		</div>
	</div>
	
	<!--班级荣誉-->
	<div class="glory">
		<div class="wrap">
			<h1 class="title1 text-center">思博客风采</h1>
			<div class="contentfl">
				<div class=" carousel  slide" id="myCarousel5">
					<div class="carousel-inner">
						<div class="item  active">
							<div class="imgFloat">
								<img src="images/index/active1-1.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active1-2.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active1-3.jpg" alt="" width="300px">
							</div>
						</div>
						<div class="item">
							<div class="imgFloat">
								<img src="images/index/active1-4.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active7.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active8.jpg" alt="" width="300px">
							</div>
						</div>
						<div class="item">
							<div class="imgFloat">
								<img src="images/index/active9.jpg" alt="" width="300px" height="225px;">
							</div>
							<div class="imgFloat">
								<img src="images/index/active.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active2.jpg" alt="" width="300px">
							</div>
						</div>
						<div class="item">
							<div class="imgFloat">
								<img src="images/index/active4.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active5.jpg" alt="" width="300px">
							</div>
							<div class="imgFloat">
								<img src="images/index/active6.jpg" alt="" width="300px">
							</div>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--页脚-联系我们-->
	<div class="foot">
		<div class="foot_content">
			<div class="foot_team">
				<h2>思博客团队</h2>
				<p>思博客重点在实践，是湖南农业大学的创新实验室<br>
					特色在以工程观为理念来教学生，致力于VR</p>
				<p>© 2017 <a href="http://www.miibeian.gov.cn/" target="_blank">湘ICP备17014171号</a></p>
			</div>
			<div class="foot_about">
				<p>关于我们</p>
				<p>1747266224@qq.com</p>
				<p>湖南农业大学第13教学楼4楼<br>思博客工作室</p>
			</div>
			<div class="foot_wechart">
				<p>关注我们</p>
				<img src="images/index/WeChat.jpg" width="130px">
			</div>
		</div>
	</div>
	
	
	<!--登录-->
		<div class="modal fade" id="Login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document" style="width: 400px;">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title text-center" id="myModalLabel2">Login</h4>
			  </div>
			  <form method="post">
				  <div class="modal-body" style="padding: 15px;">

							  <div class="input-group" style="margin-top:15px;">
								<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
								<input type="test" class="form-control" name="admin" id="admin" placeholder="账号">
							  </div>
							  <div class="input-group" style="margin-top:30px;">
								<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
								<input type="password" class="form-control" id="password" name="password" placeholder="密码">
							  </div>
				  </div>
				  <div class="text-center" style="margin:20px 0 40px 0">
					<button type="submit" class="btn btn-danger"   style="width:20%;">登录</button>
				  </div>
			  </form>


			</div>
		  </div>
		</div>
	</body>	
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/video.min.js" type="text/javascript"></script>
	<script src="js/index.js" type="text/javascript"></script>
	<script>
		var myPlayer = videojs("example_video_2");
		
		$('#myModal').on('show.bs.modal', function (e) {
			myPlayer.player_.requestFullscreen();
			myPlayer.play();
		});
		$('#myModal').on('hidden.bs.modal', function (e) {
				myPlayer.pause();
		});
	</script>
</html>
