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
							<img src="images/index/logo.png" width="100px">						
						</div>
					  </div>
					  <div class="menu">
						<ul>
						<li>
						  <a class="nav_stop" href="index.html">
							<span class="name_ch">首页</span>
						  </a>
						</li>
                         <li>
							<a href="#">
							  <span class="name_ch">程序组</span>
							</a>
						  </li>
                         <li>
							<a href="#">
							  <span class="name_ch">UI组</span>
							</a>
						  </li>
						<li>
							<a href="#">
							  <span class="name_ch">3D组</span>
							</a>
						  </li>							
							 <li>
							<a href="#">
						  	  <span class="name_ch">CG特效组</span>
							</a>
						  </li>
							 <li>
							<a href="#">
						  	  <span class="name_ch">企业招聘</span>
							</a>
						  </li>
						  <li>
							<a href="#">
						  <span class="name_ch">团队作品</span>
							</a>
						  </li>
						  <li data-toggle="modal" data-target="#Login">
							<a href="#">
						  <span class="name_ch">登录</span>
							</a>
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
					<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				</ol>
				
				<div class="carousel-inner">
					<div class="item  active">
						<a href="#">
							<div style="background-image:url(../images/program/haibao.png)"></div>
						</a>
					</div>
					<div class="item">
						<a href="#">
							<div style="background-image:url(../images/program/haibao.png)"></div>
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
						<dt><a style="cursor: pointer;"><img src="../images/program/box1.png" alt="可免费试学"></a></dt>
						<h5>可免费试学</h5>
						<dd>4大专业方向<br>
							可免费试学<br>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/program/box2.png" alt="赠送北美预科"></a></dt>
						<h5>专职指导</h5>
						<dd>专业老师面<br>
							对面教学
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/program/box3.png" alt="与大师零距离"></a></dt>
						<h5>全国就业网络</h5>
						<dd>
						思博课免费为 <br>
						学院提供就业<br>
						服务
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/program/box4.png" alt="全国就业网络"></a></dt>
						<h5>名企直招</h5>
						<dd>
						招聘会为你免费 <br>
						提供工作岗位
						</dd>
					</dl>
				</li>
			</ul>
	  </div>
	  
	  <!--学习的技能-->
	  <div id="study">
	  		<h3>框架式风格来袭，学行业主流框架式网站开发</h3>
	  		<p class="design_p">
			其实网页本上就是一些代码，任何网页都可用记事本打开，计算机根据这些代码执行就得到我们看见的网页，插入代码应该算是一个动词吧，至于框架代码就是框架这个效果对应的代码。多看看网页的HTML就知道了。
			</p>
			<ul id="study_imgs">
				<li class="study_li2">
					<img src="../images/program/img_des_03.png" />
					<div class="study_bg">
						<img src="../images/program/springMVC.png" class="study_bgimg2"/>
					</div>
				</li>
				<li class="study_li2">
					<img src="../images/program/img_des_02.png" />
					<div class="study_bg">
						<img src="../images/program/MVC.png" class="study_bgimg2"/>
					</div>
				</li>
				<li class="study_li2">
					<img src="../images/program/img_des_01.png"/>
					<div class="study_bg">
						<img src="../images/program/bootstrap.png" class="study_bgimg2"/>
					</div>
				</li>
			</ul>
		</div>
		
		<!--程序组职业-->
		<div class="kgbox">
			<div class="wrap boxbg">
				<div class="box-con con2 clear">
					<h3>程序组，让你产业链就业</h3>
					<p class="p1">
					技术单一、知识面窄是大学生就业难的通病，通常能否胜任一个岗位并不只是考量一种技能。程序组的课程涵盖JavaEE、JavaSE、unity3D、AI算法、JS，同时重点培养程序开发能力，让学员成为一专多能的程序员，实现全行业就业。</p>
					<ul class="clear">
						<li>
							<img src="../images/program/a1.png" alt="">
							<p>软件设计师</p>
						</li>
						<li>
							<img src="../images/program/a2.png" alt="">
							<p>测试工程师</p>
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
					<p>我们使用代码书写世界</p>
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
				<p>组员作品</p>
			</div>
			<div id="carousel_work" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="work_list">
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="show_work">							
				  	  </div>
			</div>
		</div>
		
		<!--口号-->
		<div class="slogan">
			<img src="../images/program/Bullets.png">
		</div>
		
		<!--就业明星-->
		<div class="employee">
			<h1 class="employee_title">就业学员</h1>
			<div id="carousel_employee" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="employee_list">
					
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="show_employee">
					  </div>
							
				  	</div>
			</div>
		</div>
		
		<!--知道老师-->
		<div class="teacher">
			<div class="teacher_title">
				<img src="../images/program/title3.png">
			</div>
			<h5 class="text-center">
					学院多个重点教师组合授课。每位教师只讲授自己擅长的领域，让成员博采众家之长。<br><br>
					指导教师还会传授国际新技术和设计理念，让成员刚加入SPOC就具备行业视野。
			</h5>
		
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
						<img src="../images/program/employee1.png">
						<span>企业对接交流</span>
					</div>
					<div class="caress_item text-right">
						<span class="text-left">企业对接交流</span>
						<img src="../images/program/employee2.png">
					</div>
					<div class="caress_item">
						<img src="../images/program/employee3.png">
						<span>企业对接交流</span>
					</div>
				</div>
				<div class="caress_right">
					<div class="caress_item2">
						<img src="../images/program/employee4.png">
					</div>
					<div class="caress_item2">
						<img src="../images/program/employee5.png">
					</div>
				</div>
			</div>
		</div>
		
		<!--培训计划-->
		<div class="plan text-center">
			<h2>精心设计的课程，每一天都学有所成</h2>
			<h5>海量编程案例提供，为网站开发提供有力保障</h5>
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
								<div id="portrait"></div>
								<p>刘安奇</p>
								<p>视觉传达专业</p>
							</div>
							<div id="section1_2">
								<div class="information">
									<div class="intro_title">
										<div id="icon1" class="icon1"></div>
										<div class="text">自我介绍<span>ABOUT ME</span></div>
									</div>
									<div class="intro_cotent">
										<p>我平时喜欢看书和上网浏览信息。我的性格比较开朗、随和，能关心周围的任何事</p>
										<p>我以前在所以有一定的实践经验，在外地求学的四年中我养成了坚强的性格，这种性格使我克服了学习中和生活中。。。。。。</p>
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
											<p>上海市普陀区长椿街15号院</p>
											<p class="font-s">Shanghai city Putuo District Changchun Street No.15</p>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon4" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p>QQ：114391696</p>
											<p class="font-s">QQ：114391696</p>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon5" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p>手机号码：17866766789</p>
											<p>Phone number：17866766789</p>
										</div>
									</div>
								</div>
								<div class="information">
									<div class="intro_title">
										<div id="icon6" class="icon1"></div>
										<div class="text">专业技能<span>MY SKILLS</span></div>
									</div>
									<div class="intro_cotent2">
										<div id="icon5" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p>PHOTSHOP</p>
											<div style="width: 150px; height: 10px;">
												<div class="progress progress_style" >
												  <div class="progress-bar bar_style" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
												  </div>
												</div>
											</div>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon5" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p>PHOTSHOP</p>
											<div style="width: 150px; height: 10px;">
												<div class="progress progress_style" >
												  <div class="progress-bar bar_style" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
												  </div>
												</div>
											</div>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon5" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p>PHOTSHOP</p>
											<div style="width: 150px; height: 10px;">
												<div class="progress progress_style" >
												  <div class="progress-bar bar_style" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
												  </div>
												</div>
											</div>
										</div>
									</div>
									<div class="intro_cotent2">
										<div id="icon5" class="icon2 float_left"></div>
										<div class="contact float_left">
											<p>PHOTSHOP</p>
											<div style="width: 150px; height: 10px;">
												<div class="progress progress_style" >
												  <div class="progress-bar bar_style" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
												  </div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="section2">
							<div class="sec2_son">
								<div class="sec2_title">
									<div id="icon7" class="icon3"></div>
									<div class="text2">实习经历<span>WORK EXPERIENCE</span></div>
								</div>
								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>小橘子科技有限公司<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
										<p>参与设计体验、设计流程的制定，建立高效的设计语言与设计规范；</p>
									</div>
								</div>
								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>任我行旅游网<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
										<p>参与设计体验、设计流程的制定，建立高效的设计语言与设计规范；</p>
									</div>
								</div>
								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>美好未来婴幼儿教育<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
										<p>参与设计体验、设计流程的制定，建立高效的设计语言与设计规范；</p>
									</div>
								</div>
							</div>
							<div class="sec2_son">
								<div class="sec2_title">
									<div id="icon7" class="icon3"></div>
									<div class="text2">教育经历<span>EDUCATION EXPERIENCE</span></div>
								</div>
								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>北京大学<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
									</div>
								</div>

								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>中国人民大学<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
									</div>
								</div>
							</div>
							<div class="sec2_son">
								<div class="sec2_title">
									<div id="icon7" class="icon3"></div>
									<div class="text2">兴趣爱好<span>MY HOBBIES</span></div>
								</div>
								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>吉他乐器<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
									</div>
								</div>

								<div class="sec2_content">
									<div class="icon4"></div>
									<div class="sec2_text">
										<h1>上网读书<span>2008.09-2010.09</span></h1>
										<p>SMALL ORANGE TECHNOLOGY CO,LTD</p>
										<p>负责映客平台的视觉设计，参与产品设计方案，熟练运用可验证的设计方法和思路为满足和引领用户需求和期望输出高满意度设计作品；</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="project">
						<div class="pro_title">
							<div class="icon5"><span>P</span></div>
							<p>我的主导项目<span>LEADING PROJECT</span></p>
						</div>
						<div class="pro_content">
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
						</div>
					</div>
					<div class="project">
						<div class="pro_title">
							<div class="icon5"><span>P</span></div>
							<p>我参与的项目<span>PARTICIPATE IN THE PROJECT</span></p>
						</div>
						<div class="pro_content">
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
							<div class="content">
								<div class="intro">
									<h1>旅行的路上每一个异国建筑都是别样的风景</h1>
									<p>I whipped the Scotch tape from my pocket and said</p>
								</div>
							</div>
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
