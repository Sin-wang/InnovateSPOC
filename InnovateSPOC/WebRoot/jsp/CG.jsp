<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="renderer" content="webkit">
        <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
		<title>SPOC创新实验室CG特效组</title>
		<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/video-js.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/common.css" type="text/css" rel="stylesheet"/>
        <link href="../css/resume.css" type="text/css" rel="stylesheet"/>
		<link rel="stylesheet" href="../css/CG.css" />
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      		<script src="../js/html5shiv.min.js"></script>
      		<script src="../js/respond.min.js"></script>
    	<![endif]-->
        
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
							<a href="program.jsp">
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
							<a href="CG.jsp" class="nav_stop">
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
<!-- 01 AE -->
	<img src="../images/CG/AE.jpg" class="img-responsive" alt="Responsive image">
<!-- 02 思博课 4大学习特色 -->
	<div class="study">
			<h3 class="pt60">思博客&nbsp;四大学习特色 </h3>
			<ul class="ult">
				<li>
					<dl>
						<dt><img src="../images/program/box1.png" alt="可免费试学"></dt>
						<h5>自主学习</h5>
						<p>梯队培养<br>
							专业引导<br>
						</p>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="../images/program/box2.png" alt="赠送北美预科" style="margin-bottom: 2px"></dt>
						<h5>技能融合</h5>
						<p>技术美术<br>
							目标全栈
						</p>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="../images/program/box3.png" alt="与大师零距离"></dt>
						<h5>团队协作</h5>
						<p>
						专业互补 <br>
						合作共赢
						</p>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="../images/program/box4.png" alt="全国就业网络"></dt>
						<h5>顶岗实习</h5>
						<p>
						商业项目 <br>
						职场素质
						</p>
					</dl>
				</li>
			</ul>
	</div>
<!-- 03 风格 -->
	<div class="video" align="center">
 		<br><br><h1 align="center">影视行业全面颠覆,特效制作成为主流</h1><br>
  		<div class="row" align="center">
    		<div class="col-sm-offset-3 col-sm-6">
    			<p1>电影行业迎来爆炸式发展，2016年中国电影票房达到了470亿元。而其中绝大多数的电影都运用了特效技能。影视特效师正成为改变电影行业的重要岗位！<br><br><br></p1>
    		</div>
  		</div>
  		<div>
   			<video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" width="640" height="364" poster="../images/CG/video.jpg" data-setup="{}">
    		<source src="http://1252367251.vod2.myqcloud.com/dedcbf81vodgzp1252367251/7ba26c669031868223335227791/dKYULQIIJs0A.mp4" type='video/mp4' />
			</video>
  		</div><br><br><br>
	</div>
<!-- 04 特效组介绍 -->
	<div class="job">
  		<br><br><h3 align="center">影视特效组，让你产业链就业</h3><br>
  		<div class="row">
 			<div class="col-sm-offset-4 col-sm-4">
  				<p2>技术单一，知识面窄是大学生就业难的通病，通常能否胜任一个岗位并不只是考量一种技能。特效组课程涵盖AE,MAYA同时重点培养程序开发能力让学员成为一专多能的特效师，实现行业就业<br><br><br></p2>
  			</div>
  		</div>
  		<div class="row" align="center">
    		<div class="col-sm-offset-3 col-sm-1 col-sm-1">
      			<div class="img-thumbnail">
        			<img src="../images/CG/04 box1.png" width="55" />
                </div>
        		<div align="center">
          			<p3>动作设计师</p3>
        		</div> 
    		</div>
    		<div class="col-sm-1 col-sm-1" >
      			<div class="img-thumbnail">
        			<img src="../images/CG/04 box2.png" height="55" />
                </div>
        		<div align="center">
          			<p3>影视特效师</p3>
        		</div> 
    		</div>
    		<div class="col-sm-1 col-sm-1" >
      			<div class="img-thumbnail">
        			<img src="../images/CG/04 box3.png" height="55" />
        		</div>
                <div align="center">
          			<p3>全景摄影师</p3>
        		</div> 
   			 </div>
             <div class="col-sm-1 col-sm-1" >
             	<div class="img-thumbnail">
        			<img src="../images/CG/04 box4.png" height="55" />
        		</div>
                <div align="center">
          			<p3>视频剪辑师</p3>
        		</div> 
    		</div>
    		<div class="col-sm-1 col-sm-1" >
      			<div class="img-thumbnail">
        			<img src="../images/CG/04 box5.png" height="55" />
        		</div>
                <div align="center">
          			<p3>PPT讲稿设计师</p3>
        		</div> 
    		</div>
    		<div class="col-sm-1 col-sm-1" >
      			<div class="img-thumbnail">
        			<img src="../images/CG/04 box6.png" height="55" />
        		</div>
                <div align="center">
          			<p3>游戏特效师</p3>
        		</div> 
    		</div>
  		</div><br><br><br>
    </div>
<!-- 05 思博课学员介绍 -->
	<img src="../images/CG/05 background.png" class="img-responsive" alt="Responsive image">
	<div class="team_Intro"><br><br><br><br>
        <div class="row">
            <div class="col-sm-offset-2 col-sm-3">
                <img class="media-object" src="../images/CG/computer.png" width="350"/>
            </div>
            <div class="col-sm-offset-1 col-sm-4">
                <br><h2 class="media-heading" style="font-size:38px;">思博课影视特效组</h2><br>
                <p>集审美和技术于一身，默契而不失华丽。<br><br>
               	  以计算机为主要工具进行视觉设计和生产，结合现实拍摄和虚拟制作，让“五毛钱”特效持续升级。</p>
           </div>
        </div>
	<div align="center">
		<br><br><br><img src="../images/CG/05 team.png"><br><br>
	</div>
    <div class="team_menber">
				<div id="carousel_menber" class="carousel slide">
				      <!-- Indicators -->
					  <ol class="carousel-indicators"  id="team_list">
						
					  </ol>
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="team_Mumber">
							
				      </div>
			    </div>
    </div>
    </div>
<!-- 06 组员作品 -->
   	`<div class="work">
			<div class="work_title">
				<img src="../images/program/GroupWork.png" width="100%">
			</div>
			<div class="work_item" id="work_show">
					
			</div>	
	</div>
	<div align="center">
       <div style="margin-top:40px;">
            <a href="group_project.jsp"><img src="../images/CG/06 work7.png" height="130" /></a>
        </div>
        <div style="margin-top:40px;">
            <img src="../images/CG/06 work8.png" class="img-responsive" alt="Responsive image"/>
        </div>
 
        <div style="margin-top:80px; margin-bottom:30px;">
            <h2 align="center" style="padding-bottom:40px;">就业学员</h2>
            <div id="Loading_member">
					<img src="../images/Loading.png">
			</div>
        </div>
    </div>
        
    <div class="member">
        <div id="carousel_students" class="carousel slide">
				  <!-- Indicators -->
				  <ol class="carousel-indicators" id="employee_list">
				  </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" id="show_employee">
                
            </div>
        </div>
    </div>
<!-- 07 指导老师 -->
	<div class="teacher">
			<div class="teacher_title">
				<img src="../images/CG/07 teacher1.png">
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
    <!-- <div class="teather row">
        <div class="col-sm-offset-3 col-sm-6" align="center">
            </br></br></br><img src="../images/CG/07 teacher1.png" /></br></br>
        </div>
    </div> -->
    
    <!-- <div id="carousel_teacher" class="carousel slide" data-ride="carousel">
		Indicators
		<ol class="carousel-indicators" id="teacher_list">
			
		</ol>
						
		Wrapper for slides
		<div class="carousel-inner" id="show_teacher">
            
        </div> -->

<!-- 08 培训计划 -->
    <div class="plan col-sm-offset-1 col-sm-10">
			</br></br></br><h1>精心设计的课程，每一天都学有所成</h1></br>
			<table class="table" id="plan_list1">
				<tr>
					<td  class="plan_table_title1" colspan="2">影视特效组</td>
				</tr>
				<tr>
					<td class="plan_table_title2">模块</td>
					<td class="plan_table_title2">培训项目</td>
				</tr>
				<tr>
					<td>EDIUS</td>
					<td>EDIUS的基本操作</td>
				</tr>
				<tr>
					<td>AE</td>
					<td>AE的基本操作</td>
				</tr>
				<tr>
					<td>AE</td>
					<td>遮罩的使用</td>
				</tr>
				<tr>
					<td>AE</td>
					<td>追踪及稳定</td>
				</tr>
				<tr>
					<td>AE</td>
					<td>模板的修改</td>
				</tr>
				<tr>
					<td>录屏软件</td>
					<td>CAMTASIA &nbsp; STUDIO的使用技巧</td>
				</tr>
				<tr>
					<td>动画</td>
					<td>CRAZY &nbsp; TALK基本使用</td>
				</tr>
				<tr>
					<td>手绘</td>
					<td>EASYSKETCH的基本使用</td>
				</tr>
				<tr>
					<td>PPT</td>
					<td>布局和动画的设置</td>
				</tr>
				<tr>
					<td>unity特效</td>
					<td>粒子系统&nbsp;timeliness</td>
				</tr>
			</table>
			<table class="table" id="plan_list2">
				<tr>
					<td class="plan_table_title2">比赛名</td>
					<td class="plan_table_title2">比赛时间</td>
					<td class="plan_table_title2">准备周期</td>
					<td class="plan_table_title2">创意</td>
					<td class="plan_table_title2">官网</td>
				</tr>
				<tr>
					<td>中国大学生计算机设计大赛</td>
					<td>3-5月</td>
					<td>3个月</td>
					<td>学生自创</td>
					<td>HTTP://WWW.JSJDS.ORG/</td>
				</tr>
				<tr>
					<td>大广赛</td>
					<td>3-6月</td>
					<td>3个月</td>
					<td>官方题目</td>
					<td>HTTP://WWW.SUN-ADA.NET/</td>
				</tr>
				<tr>
					<td>全国数字媒体科技作品大赛</td>
					<td>9-11月</td>
					<td>3个月</td>
					<td>官方题目</td>
					<td>HTTP://WWW.CCAIMIT.ORG/</td>
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
		
		


    
    
</body>
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/bootbox.min.js" type="text/javascript"></script>
	<script src="../js/video.min.js" type="text/javascript"></script>
	<script src="../js/CG.js" type="text/javascript"></script>
</html>
