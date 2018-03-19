<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
        <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
		<title>SPOC创新实验室交互组</title>
		<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/common.css" type="text/css" rel="stylesheet"/>
		<link href="../css/resume.css" type="text/css" rel="stylesheet"/>
		<link href="../css/UI.css" type="text/css" rel="stylesheet" />
		
	</head>
	<body>
		<!--<div id="contain">-->
			<div class="header">

			<div class="Indextitle" id="J_m_nav">
					<div class="cc_c">
					  <div class="logo">
						<div class="logo_bg">						  
							<img src="../images/index/logo.png" width="200px">						
						</div>
					  </div>
					  <div class="menu">
						<ul>
						<li>
						  <a href="../index.html">
							<span class="name_ch">首页</span>
						  </a>
						</li>
                         <li>
							<a href="program.jsp">
							  <span class="name_ch">程序组</span>
							</a>
						  </li>
                         <li>
							<a class="nav_stop" href="UI.jsp">
							  <span class="name_ch">UI组</span>
							</a>
						  </li>
						<li>
							<a href="3D.jsp">
							  <span class="name_ch">3D组</span>
							</a>
						  </li>							
							 <li>
							<a href="CG.jsp">
						  	  <span class="name_ch">影视特效</span>
							</a>
						  </li>
							 <li>
							<a href="downloadfile.jsp">
						  	  <span class="name_ch">文件分享</span>
							</a>
						  </li>
						  <li>
							<a href="group_project.jsp">
						  <span class="name_ch">团队作品</span>
							</a>
						  </li>
						  <li class="dropdown">
						  	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="name_ch ">管理入口</span></a>
					          <ul class="dropdown-menu">
					            <li><a href="../login.html" target="_blank">登　　录</a></li>
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
			
			<!--//轮播-->
			<div class="top banner_top_large">
				<div class=" carousel  slide" id="myCarousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item  active">
							<a href="#">
								<div style="background-image:url(../images/UI/top.jpg)" class="banner"></div>
							</a>
						</div>
					</div>
				</div>
			</div>
			
			<!--part1-->
			<div id="part1">
				<h1>思博课&nbsp;4大学习特色</h1>
				<ul>
					<li>
						<dl>
							<dt><a style="cursor: pointer;"><img src="../images/program/box1.png" alt="全国就业网络"></a></dt>
							<h5>自主学习</h5>
							<dd>
							梯队培养 <br>
							专业引导
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a style="cursor: pointer;"><img src="../images/program/box2.png" alt="全国就业网络"></a></dt>
							<h5>技能融合</h5>
							<dd>
							技术美术 <br>
							目标全栈
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a style="cursor: pointer;"><img src="../images/program/box3.png" alt="全国就业网络"></a></dt>
							<h5>团队协作</h5>
							<dd>
							专业互补 <br>
							合作共赢
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt><a style="cursor: pointer;"><img src="../images/program/box4.png" alt="全国就业网络"></a></dt>
							<h5 class="grey">顶岗实习</h5>
							<dd>
							商业项目 <br>
							职场素质
							</dd>
						</dl>
					</li>
				</ul>
			</div>
			
			<!--part2-->
			<div id="part2">
				<h1>极简风格来袭，著名设计师引领的设计潮流趋势</h1>
				<p class="p2_design_p">
				设计的减法，其实指的是视觉上的减法，实际设计的过程不一定就是偷懒。极简的设计核心其实并不是减法，而是交集（创意、思路的交集），随后将这部分提炼出来。有点像是，你有一块“拼版”，这块“拼版”能嵌入好几个拼图里使其完整，这块“拼版”就是极简的核心设计。
				</p>
				<ul id="p2_imgs">
					<li class="p2_img">
						<img src="../images/UI/ad2.png" />
						<div class="p2_bg">
							<img src="../images/UI/ad.png" class="p2_bgimg1"/>
						</div>
					</li>
					<li class="p2_img">
						<img src="../images/UI/vans1.png" />
						<div class="p2_bg">
							<img src="../images/UI/vans.png" class="p2_bgimg1"/>
						</div>
					</li>
					<li class="p2_img">
						<img src="../images/UI/muji2.png" />
						<div class="p2_bg">
							<img src="../images/UI/muji.png" class="p2_bgimg1"/>
						</div>
					</li>
					<li class="p2_img">
						<img src="../images/UI/icon42.png" />
						<div class="p2_bg">
							<img src="../images/UI/icon4.png" class="p2_bgimg1"/>
						</div>
					</li>
					<li class="p2_img">
						<img src="../images/UI/nike1.png" />
						<div class="p2_bg">
							<img src="../images/UI/nike.png" class="p2_bgimg1"/>
						</div>
					</li>
				</ul>
			</div>
			
			<!--part3-->
			<div id="part3">
				<h1>UI交互组  美化“世界”</h1>
				<p class="subtitle">技术单一，知识面窄是大学生就业难的通病，通常能否胜任一个岗位并不知识考量一种技能。交互设计组的课程涵盖平面、网页、手绘、UI、产品交互等多种设计，同时重点培养交互设计能力，同时重点培养交互设计能力，让学院成为一专多能的设计师，实现行业就业。</p>
				<ul class="clear">
					<li>
						<img src="../images/UI/book.png" alt="">
						<p class="center">原画设计</p>
					</li>
					<li>
						<img src="../images/UI/store.png" alt="">
						<p class="center">产品交互</p>
					</li>
					<li>
						<img src="../images/UI/paint.png" alt="">
						<p class="center">UI设计</p>
					</li>
					<li>
						<img src="../images/UI/UI.png" alt="">
						<p class="center">材质贴图</p>
					</li>
				</ul>
			</div>
			
			<!--part4-->
			<div id="part4">
				<div id="p4_banner">
					<div id="p4_banner_cover">
						<div id="p4_part4_ti">
							<span>关于</span>
							<h1>思博课UI组介绍</h1>
						</div>
					</div>
				</div>
				<div id="p4_team_intro">
					<div style="float: left;"><img src="../images/UI/computer.jpg" /></div>
					<div id="p4_intro">
						<h5>思博课UI组</h5>
						<p>思博课UI交互组是由一群有着研发精神和创新精神的小伙伴组成的。</p>
						<p>我们一直主要专注于UI设计，截止目前我们已经成功完成多个项目的交互设计。不论是品牌官网、企业官网、还是信息应用平台，我们都能提供精确的视觉设计方案。无论是策略创意还是视觉执行。</p>
						<p>专注创意与设计是我们永恒的追求！</p>
					</div>
				</div>
				<div id="p4_group">
					<div id="p4_group_ti">
						<h1>团队</h1>
						<span>最团结的力量</span>
					</div>
					
					<!--轮播-->
					<div class="p4_carousel">
						<div id="mycarousel2" style="height: 450px;" class="carousel slide p4_carousel" data-ride="carousel">
							<!-- Indicators -->
								<ol class="carousel-indicators " style="text-align: center;" id="team_list">
								    <!--<li data-target="#mycarousel2" data-slide-to="0" class="active"></li>
								    <li data-target="#mycarousel2" data-slide-to="1" style="margin: 0;"></li>-->
								</ol>
						
						  <!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox" id="show_teamMumber">
						    	
							</div>
						
						  
						</div>
					</div>
					
					
					
				</div>
			
			</div>	
			
			<!--part5-->
			<div class="work">
				<div class="work_title">
					<img src="../images/program/GroupWork.png" width="100%">
				</div>
				<div class="work_item" id="work_show">
						
				</div>
			
			</div>
			
			<!--part6-->
			<div id="part6">
				<img src="../images/UI/p6_bg.png" width="100%s">
			</div>
			
			<!--part7	就业明星-->
			<div id="part7">
				<h1 id="p7_title">就业明星</h1>
				<div id="Loading_member">
					<img src="../images/Loading.png">
				</div>
					
				<!--轮播-->
					<div class="p7_carousel">
						<div id="mycarousel3" class="carousel slide p4_carousel" data-ride="carousel">
							<!-- Indicators -->
								<ol class="carousel-indicators " style="text-align: center;" id="employee_list">
								   
								</ol>
						
						  <!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox" id="show_employee">
						    	
							</div>
						
						  
						</div>
					</div>
			</div>
			
			<!--part8-->
			<div id="part8">
				<div id="p8_title">
					<span>关于</span>
					<h1>UI组指导老师</h1>
				</div>
				
					
				<!--轮播-->
					<div class="p8_carousel">
						<div id="mycarousel4" class="carousel slide p4_carousel" data-ride="carousel">
							<!-- Indicators -->
								<ol class="carousel-indicators " style="text-align: center;" id="teacher_list">
								    <!--<li data-target="#mycarousel4" data-slide-to="0" class="active"></li>
								    <li data-target="#mycarousel4" data-slide-to="1" style="margin: 0;"></li>-->
								</ol>
						
						  <!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox" id="p8_inner">
						    	
							</div>
						
						  
						</div>
					</div>
			</div>
			
			<!--part9-->
			<div id="part9">
				<h1>企业对接交流</h1>
				<div id="p9_con">
					<div id="p9_conl">
						<div>
							<img class="p9_img left1" src="" id="img1"/>
							<p id="title1"></p>
						</div>
						<div>
							<p id="title2"></p>
							<img class="p9_img right1" src="" id="img2"/>
						</div>
						<div>
							<img class="p9_img left1" src="" id="img3"/>
							<p id="title3"></p>
						</div>
					</div>
					<div id="p9_conr">
						<div>
							<img src="" class="p9_img" id="img4"/>
							<p id="title4"></p>
						</div>
						<div>
							<p id="title5"></p>
							<img src="" class="p9_img" id="img5"/>
						</div>
					</div>
				</div>
			</div>

			
			<!--part10-->
			<div class="plan text-center">
				<h1 style="padding-bottom:30px;">精心设计的课程，每一天都学有所成</h1>
				<table id="plan_chart1" class="table">
					<tr>
					<td  class="plan_table_title" colspan="2">UI组</td>
				</tr>
				<tr>
					<td class="plan_table_title2">模块</td>
					<td class="plan_table_title2">培训项目</td>
				</tr>
					<tr>
						<td>PS</td>
						<td>PS基本操作</td>
					</tr>
					<tr>
						<td>PS</td>
						<td>材质贴图的制作</td>
					</tr>
					<tr>
						<td>3D Max</td>
						<td>3D Max的使用</td>
					</tr>
					<tr>
						<td>3D Max</td>
						<td>如何赋予材质</td>
					</tr>
					<tr>
						<td>3D Max</td>
						<td>漫反射的使用</td>
					</tr>
					<tr>
						<td>3D Max</td>
						<td>物体的发现贴图</td>
					</tr>
					<tr>
						<td>ZBRUSH</td>
						<td>ZBRUSH的基本使用</td>
					</tr>
					<tr>
						<td>ZBRUSH</td>
						<td>如何雕刻图像</td>
					</tr>
					<tr>
						<td>Unity</td>
						<td>Unity的基本操作</td>
					</tr>
				</table>
				
				<table class="table" id="plan_chart2">
				<tr>
					<td class="plan_table_title2">比赛名</td>
					<td class="plan_table_title2">比赛时间</td>
					<td class="plan_table_title2">准备周期</td>
					<td class="plan_table_title2">创意</td>
					<td class="plan_table_title2">官网</td>
				</tr>
				<tr>
					<td>“包豪斯奖”国际设计大赛</td>
					<td>3-4月</td>
					<td>3个月</td>
					<td>官方题目</td>
					<td>http://wwww.bhscn.net/</td>
				</tr>
				<tr>
					<td>互联网+大学生创新创业大赛</td>
					<td>3-6月</td>
					<td>3个月</td>
					<td>官方课题</td>
					<td>http://www.cfadnet.com</td>
				</tr>
				<tr>
					<td>中国大学生服务外包创新创业大赛</td>
					<td>4-6月</td>
					<td>3个月</td>
					<td>官方课题</td>
					<td>http://www.animation.bfa.edu.cn</td>
				</tr>
				
			</table>
			</div>
		<!--</div>-->
		
		<!--简历表-->
		<div class="modal fade" id="resume_myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document" style="width:980px">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Modal title</h4>
			  </div>
			  <div class="modal-body">
				<div class="resume_wrap">
					<div style="display: table;">
						<div id="section1">
							<div id="section1_1">
								<div id="portrait">
									<img src="../images/big.jpg" id="headshot">
								</div>
								<p id="resumeName"></p>
								<p id="resumeMajor"></p>
							</div>
							<div id="section1_2">
								<div class="information">
									<div class="intro_title">
										<div id="icon1" class="icon1"></div>
										<div class="text">自我介绍<span>ABOUT ME</span></div>
									</div>
									<div class="intro_cotent">
										<p id="resumeIntroduce"></p>
									</div>
								</div>
								<div class="information">
									<div class="intro_title">
										<div id="icon2" class="icon1"></div>
										<div class="text">联系方式<span>CONTACT ME</span></div>
									</div>
									<div class="intro_cotent2">
										<div id="icon3" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p id="resumeAdress"></p>
											<p id="resumeEadre" class="font-s"></p>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon4" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p id="resumeQQ"></p>
											<p id="resumeEqq" class="font-s"></p>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon5" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p id="resumeTel"></p>
											<p id="resumeEtel"></p>
										</div>
									</div>
								</div>
								<div class="information" id="resumeSkill">
									
								</div>
							</div>
						</div>
						<div id="section2">
							<div class="sec2_son" id="resumeExe">
								
							</div>
							<div class="sec2_son" id="resumeEdu">
								
							</div>
							<div class="sec2_son" id="resumIntr">
								
							</div>
						</div>
					</div>
					<div class="project">
						<div class="pro_title">
							<div class="icon5"><span>P</span></div>
							<p>我的主导项目<span>LEADING PROJECT</span></p>
						</div>
						<div class="pro_content" id="guideProject">
							
							
							
						</div>
					</div>
					<div class="project">
						<div class="pro_title">
							<div class="icon5"><span>P</span></div>
							<p>我参与的项目<span>PARTICIPATE IN THE PROJECT</span></p>
						</div>
						<div class="pro_content" id="joinproject">
													
						</div>
					</div>
				</div>
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			  </div>
			</div>
		  </div>
		</div>
		
		
	</body>
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/bootbox.min.js" type="text/javascript"></script>
	<script src="../js/UI.js" type="text/javascript"></script>
	<script>
			$('#mycarousel2').carousel({
				pause: true,
				interval: false
			})
			.carousel('pause')
		</script>
</html>
