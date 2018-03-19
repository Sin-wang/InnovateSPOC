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
		<title>SPOC创新实验室三维组</title>
		<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/common.css" type="text/css" rel="stylesheet"/>
		<link href="../css/resume.css" type="text/css" rel="stylesheet"/>
		<link rel="stylesheet" href="../css/3D.css" />
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
							<a class="nav_stop" href="3D.jsp">
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
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					
				</ol>
				<div class="carousel-inner">
					<div class="item  active">
						<a href="#">
							<div style="background-image:url(../images/3D/haibao_3D.jpg)"></div>
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
						<dt><a style="cursor: pointer;"><img src="../images/3D/box1.png" alt="可免费试学"></a></dt>
						<h5>自主学习</h5>
						<dd>
							梯队培养 <br>
							专业引导
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/3D/box2.png" alt="赠送北美预科" style="margin-bottom: 2px"></a></dt>
						<h5>技能融合</h5>
							<dd>
							技术美术 <br>
							目标全栈
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/3D/box3.png" alt="与大师零距离"></a></dt>
						<h5>团队协作</h5>
						<dd>
							专业互补 <br>
							合作共赢
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/3D/box4.png" alt="全国就业网络"></a></dt>
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
	  		<h3>VR来袭，逼真3D引领设计潮流</h3>
	  		<p class="design_p">
			所谓3D技术即三维设计技术，它从各个角度把人物或事物进行建模，从而使人感觉有立体感。现如今，各种娱乐游戏、摄影动画、网络技术等大型项目几乎都离不开3D技术。
			</p> 
           <div class="left_right">          
             <div class="left_two">
              <div class="study_li_left" >
                <img src="../images/3D/qqMusic_3D.png" />
				<div class="study_bg">
				  <img src="../images/3D/qqMusicIcon_3D.png" class="study_bgimg2"/>
				</div>
              </div>
               <div class="study_li_left">
                <img src="../images/3D/shoe3_3D.png" />
				<div class="study_bg">
				  <img src="../images/3D/NewBalance_3D.png" class="study_bgimg2"/>
				</div>
              </div>             
             </div>
           <div class="right_three">
             <div class="up_two">
              <div class="study_li_right">
              	<img src="../images/3D/shoe1_3D.png" />
				<div class="study_bg">
					<img src="../images/3D/Jordan_3D.png" class="study_bgimg2"/>
				</div>
              </div>
              <div class="study_li_right">
                <img src="../images/3D/shoe2_3D.png"/>
				<div class="study_bg">
				  <img src="../images/3D/Adidas_3D.png" class="study_bgimg2"/>
				</div>
              </div>
              </div> 
            <div class="under_one">              
                <img src="../images/3D/musicWar_3D.png" />
				<div class="study_bg">
				  <img src="../images/3D/Netease_3D.png" class="study_bgimg2_under"/>
				</div>              
            </div>
            </div>          
           </div>			          
		</div>
		
		<!--程序组职业-->
		<div class="kgbox">
			<div class="wrap boxbg">
				<div class="box-con con2 clear">
					<h3>三维组 创造“世界”</h3>
					<p class="p1">
					技术单一、知识面窄是大学生就业难的通病，通常能否胜任一个岗位并不只是考量一种技能。三维组的课程涵盖3DS MAX、MAYA、ZBRUSH等多种软件，同时重点培养三维能力，让学员成为一专多能的三维师，实现行业就业。</p>
					<ul class="clear">
						<li>
							<img src="../images/3D/simple_3D.jpg" alt="">
							<p>3D建模师</p>
						</li>
						<li>
							<img src="../images/3D/simple2_3D.jpg" alt="">
							<p>动作设计师</p>
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
                  <img src="../images/3D/3DComputer.png" alt="">
                </div>
				<div class="team_right">
                  <h3>思博客三维组</h3>
                  <p>思博客三维组是由一群搞笑且无厘的"大师"们组成</p>
                  <p>我们的宗旨是200%还原现场，120%打造心中所想，99%做出别人所想. </p>                 
                </div>
			</div>
                                 
			<div class="team_title2">
               <img src="../images/3D/teamTitle.png" alt="">
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
        
        <!--作品介绍-->
        <div class="work">
			<div class="work_title">
				<img src="../images/program/GroupWork.png" width="100%">
			</div>
			<div class="work_item" id="work_show">
					
			</div>
			
		</div>      
        
        <!--3D组口号-->
       <div class="slogan">
         <img src="../images/3D/slogan_3D.png">
       </div>
        
        <!--就业明星-->
		<div class="employeeStar">
			<h1 class="starTitle">就业学员</h1>
			<div id="Loading_member">
					<img src="../images/Loading.png">
				</div>
			<div id="carouselEmployeeStar" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="employeeCarousel">
						<!--<li data-target="#carouselEmployeeStar" data-slide-to="0" class="active"></li>
						<li data-target="#carouselEmployeeStar" data-slide-to="1"></li>-->
					  </ol>					
					  <div class="carousel-inner" id="show_employee">					  


													
				  	</div>                 
			</div>
            
		</div>
        
        <!--关于指导老师-->
        <div class="teacher">
			<div class="teacher_title">
				<img src="../images/3D/aboutTeacher.png">
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
        
        <!--企业对接-->
       <!-- <div class="enterprise">
        <h3 class="enterpriseSlogan">企业对接交流</h3>
        <div class="enterpriseBlock">
          <div class="enterpriseLeft">
            <div class="enterpriseLeftItem" >
              <div class="leftItemDescOne">
                <p id="Etitle1">企业交流管理</p>
              </div>
              <div class="leftItemPicOne">
                <img src="" id="Eimg1">
              </div>
              
            </div>
            <div class="enterpriseLeftItem" >
              <div class="leftItemPicTwo">
                <img src="" id="Eimg2">
              </div>
              <div class="leftItemDescTwo">
                <p id="Etitle2"></p> 
              </div>              
            </div>
            <div class="enterpriseLeftItem" >
              <div class="leftItemDescThree">
                <p id="Etitle3"></p> 
              </div>
              <div class="leftItemPicThree">
                <img src="" id="Eimg3">
              </div>
            </div>
          </div>
          <div class="enterpriseRight">
            <div class="enterpriseRightItem">             
              <div class="rightItemPicOne">
                <img src="" id="Eimg4">
              </div>
               <div class="rightItemDesc">
                <p id="Etitle4"></p> 
              </div>
            </div>
            <div class="enterpriseRightItem">
              <div class="rightItemDesc">
                <p id="Etitle5"></p> 
              </div>
              <div class="rightItemPicTwo">
                <img src="" id="Eimg5">
              </div>
            </div>
          </div>
        </div>
	  </div> -->
      
      <!--课程安排-->
      <div class="course">
        <h3 style="padding-bottom:30px;">精心设计的课程，每一天都学有所成</h3>
        <div class="courseArrange">
          <table class="table_course">
           <tbody>
            <tr>
              <td colspan="2">三维组</td>
            </tr>
            <tr>
              <td>模块</td>
              <td>培训项目</td>
            </tr>
            <tr>
              <td>场景，角色建模</td>
              <td>多边形建模</td>
            </tr>
             <tr>
              <td>场景，角色建模</td>
              <td>讲解各自用多边形建模的模型</td>
            </tr> <tr>
              <td>场景，角色建模</td>
              <td>样线条建模</td>
            </tr>
             <tr>
              <td>场景，角色建模</td>
              <td>讲解各自用样条线建模的模型</td>
            </tr>
             <tr>
              <td>场景，角色建模</td>
              <td>修改器命令</td>
            </tr>
             <tr>
              <td>场景，角色建模</td>
              <td>综合前几周的内容建模，讲解各自模型</td>
            </tr>
             <tr>
              <td>场景，角色建模</td>
              <td>复合建模</td>
            </tr>
             <tr>
              <td>场景，角色建模</td>
              <td>其他建模方式</td>
            </tr>
            <tr>
              <td>场景，角色建模</td>
              <td>讲解自己的模型</td>
            </tr>
            <tr>
              <td>贴图</td>
              <td>材质编辑器与贴图</td>
            </tr>
            <tr>
              <td>动画</td>
              <td>骨骼</td>
            </tr>
            <tr>
              <td>动画</td>
              <td>动画制作</td>
            </tr>
           </tbody>
          </table>
        </div>
        <div class="competition">
           <table class="table_competition"> 
            <tr>  
              <td>比赛名</td>
              <td>比赛时间</td>
              <td>准备周期</td>
              <td>创意</td>
              <td>官网</td>
            </tr>      
            <tr>
              <td>中国软件杯大学生软件设计大赛</td>
              <td>7-8月</td>
              <td>3个月</td>
              <td>官方题目</td>
              <td>http://www.cnsoftbei.com/</td>
            </tr>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>                   
          </table>
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
	<script src="../js/3D.js" type="text/javascript"></script>   
</html>
