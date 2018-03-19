<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8" />
    <title>SPOC创新实验室程序组</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="renderer" content="webkit">
    <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
    
	<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<link href="../css/common.css" type="text/css" rel="stylesheet"/>
	<link href="../css/resume.css" type="text/css" rel="stylesheet"/>
	<link rel="stylesheet" href="../css/program.css" />

  </head>
  
  <body>
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
						  <a href="../index.jsp">
							<span class="name_ch">首页</span>
						  </a>
						</li>
                         <li>
							<a class="nav_stop" href="program.jsp">
							  <span class="name_ch">程序组</span>
							</a>
						  </li>
                         <li>
							<a href="UI.jsp">
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
		<!--图片轮播，大图部分-->
		<div class="top banner_top_large">
			<div class=" carousel  slide" id="myCarousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				</ol>
				
				<div class="carousel-inner">
					<div class="item  active">
						<a href="#">
							<div style="background-image:url(../images/program/haibao.jpg)"></div>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<!--思博客四大学习特色-->
		<div class="floor">
			<h3 class="pt60">思博客&nbsp;四大学习特色 </h3>
			<ul class="ult">
				<li>
					<dl>
						<dt><img src="../images/program/box1.png" alt="可免费试学"></dt>
						<h5>自主学习</h5>
						<dd>梯队培养<br>
							专业引导<br>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="../images/program/box2.png" alt="赠送北美预科" style="margin-bottom: 2px"></dt>
						<h5>技能融合</h5>
						<dd>技术美术<br>
							目标全栈
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="../images/program/box3.png" alt="与大师零距离"></dt>
						<h5>团队协作</h5>
						<dd>
						专业互补 <br>
						合作共赢
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="../images/program/box4.png" alt="全国就业网络"></dt>
						<h5>顶岗实习</h5>
						<dd>
						商业项目 <br>
						职场素质
						</dd>
					</dl>
				</li>
			</ul>
	  </div>
	  
	  <!--学习的技能-->
	  <div id="study">
	  		<h3>计算机视觉来袭，学行业未来技术</h3>
	  		<p class="design_p">
			虚拟现实技术是一种可以创建和体验虚拟世界的计算机仿真系统，它利用计算机生成一种模拟环境，是一种多源信息融合的、交互式的三维动态视景和实体行为的系统仿真使用户沉浸到该环境中。
			</p>
			<ul id="study_imgs">
				<li class="study_li2">
					<img src="../images/program/img_des_03.png" />
					<div class="study_bg">
						<img src="../images/program/VR.png" class="study_bgimg2"/>
					</div>
				</li>
				<li class="study_li2">
					<img src="../images/program/img_des_02.png" />
					<div class="study_bg">
						<img src="../images/program/MR.png" class="study_bgimg2"/>
					</div>
				</li>
				<li class="study_li2">
					<img src="../images/program/img_des_01.jpg"/>
					<div class="study_bg">
						<img src="../images/program/AR.png" class="study_bgimg2"/>
					</div>
				</li>
			</ul>
		</div>
		
		<!--程序组职业-->
		<div class="kgbox">
			<div class="wrap boxbg">
				<div class="box-con con2 clear">
					<h3>程序组，改变“世界”</h3>
					<p class="p1">
					技术单一、知识面窄是大学生就业难的通病，通常能否胜任一个岗位并不只是考量一种技能。程序组的课程涵盖JavaEE、JavaSE、unity3D、AI算法、JS，同时重点培养程序开发能力，让学员成为一专多能的程序员，实现全行业就业。</p>
					<ul class="clear">
						<li>
							<img src="../images/program/a1.png" alt="">
							<p>软件设计师</p>
						</li>
						<li>
							<img src="../images/program/a2.png" alt="">
							<p>AI工程师</p>
						</li>
						<li>
							<img src="../images/program/a3.png" alt="">
							<p>引擎工程师</p>
						</li>
						<li>
							<img src="../images/program/a4.png" alt="">
							<p>数据库工程师</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		
		<!--程序组介绍团员-->
		<div class="team_Intro">
			<div class="team_title"></div>
			<div class="team_content">
				<div class="team_left">
					<img src="../images/program/computer.png">
				</div>
				<div class="team_right">
					<h3>思博客程序组</h3>
					<p style="padding-top:20px;">我们使用代码书写世界</p>
					<p>我们是灵魂的工程师</p>
					<p>这里有一群程序爱好者</p>
					<p>我们激情活力</p>
					<p>挥洒青春</p>
				</div>
			</div>
			<div class="team_title2">
				<img src="../images/program/title2.png">
			</div>
			<div class="team_menber">
				<div id="carousel_menber" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="team_list">
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="show_teamMumber">
														
				  	 </div>
				</div>
			</div>
		</div>
		
		<!--组员作品-->
		<div class="work">
			<div class="work_title">
				<img src="../images/program/GroupWork.png" width="100%">
			</div>
			<div class="work_item" id="work_show">
					
			</div>
			
		</div>
		
		<!--口号-->
		<div class="slogan">
			<img src="../images/program/Bullets.png">
		</div>
		
		<!--就业明星-->
		<div class="employee">
			<h1 class="employee_title">就业学员</h1>
			<div id="Loading_member">
					<img src="../images/Loading.png">
				</div>
			<div id="carousel_employee" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="employee_list">
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="show_employee">
							
				  	</div>
			</div>
		</div>
		
		<!--知道老师-->
		<div class="teacher">
			<div class="teacher_title">
				<img src="../images/program/title3.png">
			</div>
		
			<div id="carousel_teacher" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="teacher_list">
						
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="show_teacher">
					  														
				  	  </div>
			</div>
		</div>
		
		<!--企业对接交流-->
		<div class="caress">
			<div class="caress_content">
				<div class="caress_left">
					<div class="caress_item">
						<img src="" id="img1" width="298px" height="157px">
						<span id="title1"></span>
					</div>
					<div class="caress_item text-right">
						<span id="title2" class="text-left"></span>
						<img src="" id="img2" width="291px" height="164px">
					</div>
					<div class="caress_item">
						<img src="" id="img3" width="280px" height="158px">
						<span id="title3"></span>
					</div>
				</div>
				<div class="caress_right">
					<div class="caress_item2">
						<img src="" id="img4" width="288" height="163"><br>
						<span id="title4"></span>
					</div>
					<div class="caress_item2">
						<img src="" id="img5" width="298" height="198"><br>
						<span id="title5"></span>
					</div>
				</div>
			</div>
		</div>
		
		<!--培训计划-->
		<div class="plan text-center">
			<h2 style="padding-bottom:30px;">精心设计的课程，每一天都学有所成</h2>
			<table class="table" id="plan_chart1">
				<tr>
					<td  class="plan_table_title" colspan="2">程序组</td>
				</tr>
				<tr>
					<td class="plan_table_title2">模块</td>
					<td class="plan_table_title2">培训项目</td>
				</tr>
				<tr>
					<td>HTML/CSS</td>
					<td>Bootstrap框架</td>
				</tr>
				<tr>
					<td>jQuery</td>
					<td>datatable控件</td>
				</tr>
				<tr>
					<td>jQuery</td>
					<td>Echarts插件</td>
				</tr>
				<tr>
					<td>JavaScript</td>
					<td>表单js控制和验证</td>
				</tr>
				<tr>
					<td>HTML5</td>
					<td>H5页面布局及动画</td>
				</tr>
				<tr>
					<td>jQuery</td>
					<td>过渡性动画和弹出层</td>
				</tr>
				<tr>
					<td>servlet</td>
					<td>servlet配置，访问，过滤器，乱码问题，获取表单数据</td>
				</tr>
				<tr>
					<td>JSP</td>
					<td>jsp访问，乱码问题，ajax技术</td>
				</tr>
				<tr>
					<td>JDBC</td>
					<td>数据库增删改查基本操作，数据源，事务</td>
				</tr>
				<tr>
					<td>会话技术</td>
					<td>session,application,request对象存储数据，cookies</td>
				</tr>
				<tr>
					<td>SpringMVC</td>
					<td>界面控制跳转</td>
				</tr>
				<tr>
					<td>Spring</td>
					<td>对象的注入</td>
				</tr>
				<tr>
					<td>hibernate</td>
					<td>DAO对象与表的映射，数据库操作</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>unity资源管理</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>编辑器操作</td>
				</tr>
				<tr>
					<td>数学</td>
					<td>矩阵论</td>
				</tr>
				<tr>
					<td>数学</td>
					<td>四元数</td>
				</tr>
				<tr>
					<td>数学</td>
					<td>3D坐标</td>
				</tr>
				<tr>
					<td>数学</td>
					<td>向量</td>
				</tr>
				<tr>
					<td>数学</td>
					<td>奇次坐标</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>unity脚本</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>输入输出控制</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>GUI开发</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>Shader开发</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>UNET网络引擎</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>脚本优化</td>
				</tr>
				<tr>
					<td>VR</td>
					<td>AI学习</td>
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
					<td>中国软件杯大学生软件设计大赛</td>
					<td>7-8月</td>
					<td>3个月</td>
					<td>官方题目</td>
					<td>http://www.cnsoftbei.com/</td>
				</tr>
				<tr>
					<td>互联网+大学生创新创业大赛</td>
					<td>3-4月</td>
					<td>12个月</td>
					<td>学生自创</td>
					<td>http://cy.ncss.org.cn/</td>
				</tr>
				<tr>
					<td>中国大学生服务外包创新创业大赛</td>
					<td>4-5月</td>
					<td>6个月</td>
					<td>学生自创</td>
					<td>http://www.fwwb.org.cn/</td>
				</tr>
				<tr>
					<td>湖南省程序程序设计大赛开发组</td>
					<td>7-8月</td>
					<td>3个月</td>
					<td>学生自创</td>
					<td></td>
				</tr>
				<tr>
					<td>谷歌开发支持</td>
					<td></td>
					<td>3个月</td>
					<td>学生自创</td>
					<td></td>
				</tr>
			</table>
		</div>
		
		<!--简历表-->
		<!-- Modal -->
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
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/bootbox.min.js" type="text/javascript"></script>
	<script src="../js/program.js" type="text/javascript"></script>
</html>
