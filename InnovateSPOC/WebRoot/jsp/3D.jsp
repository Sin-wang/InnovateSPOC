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
							<img src="#" width="100px">						
						</div>
					  </div>
					  <div class="menu">
						<ul>
						<li>
						  <a href="index.html">
							<span class="name_ch">首页</span>
						  </a>
						</li>
                         <li>
							<a href="html/about.html">
							  <span class="name_ch">程序组</span>
							</a>
						  </li>
                         <li>
							<a href="html/teaching-model.html">
							  <span class="name_ch">UI组</span>
							</a>
						  </li>
						<li>
							<a class="nav_stop" href="html/course_feature.html">
							  <span class="name_ch">3D组</span>
							</a>
						  </li>							
							 <li>
							<a href="html/teachers.html">
						  	  <span class="name_ch">CG特效组</span>
							</a>
						  </li>
							 <li>
							<a href="html/employment.html">
						  	  <span class="name_ch">企业招聘</span>
							</a>
						  </li>
							 <li>
							<a href="html/major.html">
						  <span class="name_ch">团队作品</span>
							</a>
						  </li>
						  <li>
							<a href="html/major.html">
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
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item  active">
						<a href="#">
							<div style="background-image:url(../images/3D/haibao_3D.jpg)"></div>
						</a>
					</div>
					<div class="item">
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
						<h5>可免费试学</h5>
						<dd>4大专业方向<br>
							可免费试学<br>
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/3D/box2.png" alt="赠送北美预科"></a></dt>
						<h5>专职指导</h5>
						<dd>专业老师面<br>
							对面教学
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><a style="cursor: pointer;"><img src="../images/3D/box3.png" alt="与大师零距离"></a></dt>
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
						<dt><a style="cursor: pointer;"><img src="../images/3D/box4.png" alt="全国就业网络"></a></dt>
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
				  <img src="../images/3D/Adidas_3D.png" class="study_bgimg2"/>
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
                <img src="../images/3D/shoe2_3D.jpg"/>
				<div class="study_bg">
				  <img src="../images/3D/NewBalance_3D.png" class="study_bgimg2"/>
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
					<h3>三维组课程，让你产业链就业</h3>
					<p class="p1">
					技术单一、知识面窄是大学生就业难的通病，通常能否胜任一个岗位并不只是考量一种技能。三维组的课程涵盖3DS MAX、MAYA、ZBRUSH等多种软件，同时重点培养三维能力，让学员成为一专多能的三维师，实现行业就业。</p>
					<ul class="clear">
						<li>
							<img src="../images/3D/simple_3D.jpg" alt="">
							<p>3D建模师</p>
						</li>
						<li>
							<img src="../images/3D/simple2_3D.jpg" alt="">
							<p>骨骼设计师</p>
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
            
			<div class="team_member">            
            <div class=" carousel  slide" id="myCarousel2">
				<ol class="carousel-indicators" id="myCarousel2Ol">
					<!--<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel2" data-slide-to="1" class=""></li>-->
				</ol>
				<div class="carousel-inner" id="show_teamMumber">
					<!--<div class="item  active">
					   <div class="row">
						   <div class="col-md-2 col-sm-2 col-md-offset-1 col-sm-offset-1">
						   	 <div class="thumbnail">
							     <img src="../images/3D/3Dmember1.png" alt="">
								 <div class="caption">
									<h4>三维设计师 谢缘</h4>
									<p>喜欢日，喜欢动漫，也喜欢设计，虽然不会画画。性格开朗，思维跳跃，平时有点小二但做事是很认真的哦！虽然有时候莽莽撞撞。</p>
								  </div>
							 </div>
						   </div>
						   <div class="col-md-2 col-sm-2">
						     <div class="thumbnail">
							     <img src="../images/3D/3Dmember2.png" alt="">
								 <div class="caption">
									<h4>三维设计师  赵玄玉</h4>
									<p>成绩中等 喜欢看书 会P图 视频剪辑 3dmax建模 喜欢摄影 对待工作较为认真负责，喜欢认识新朋友，性格有点内向但是对人很热</p>
								 </div>
							 </div>
						   </div>
						   <div class="col-md-2 col-sm-2">
						   	 <div class="thumbnail">
								 <img src="../images/3D/3Dmember3.png" alt="">
								 <div class="caption">
									 <h4>三维设计师  颜沙</h4>
									 <p>开朗，稳重，有活力，待人热情，真诚。有较强的组织能力，和团队协作精神，良好的社交能力，较强的责任心和使命感</p>
								 </div>
						     </div>
						   </div>
						   <div class="col-md-2 col-sm-2">
						     <div class="thumbnail">
								 <img src="../images/3D/3Dmember4.png" alt="">
								 <div class="caption">
									 <h4>三维设计师  伍丽君</h4>
									 <p>本人性格开朗，稳重有活力，待人热情，真诚。工作认真负责，积极主动，能吃苦耐劳 有较强的实际动手能力和团体协作精神。</p>
								 </div>
						     </div>
						   </div>  
						   <div class="col-md-2 col-sm-2">
						     <div class="thumbnail">
								 <img src="../images/3D/3Dmember4.png" alt="">
								 <div class="caption">
									 <h4>三维设计师  伍丽君</h4>
									 <p>本人性格开朗，稳重有活力，待人热情，真诚。工作认真负责，积极主动，能吃苦耐劳 有较强的实际动手能力和团体协作精神。</p>
								 </div>
						     </div>
						   </div>              
						 </div>	
					</div>
					<div class="item">
						 <div class="row col-md-12">
						   <div class="col-md-2 col-sm-2 col-md-offset-1 col-sm-offset-1">
						   	 <div class="thumbnail">
							     <img src="../images/3D/3Dmember1.png" alt="">
								 <div class="caption">
									<h4>三维设计师 谢缘</h4>
									<p>喜欢日，喜欢动漫，也喜欢设计，虽然不会画画。性格开朗，思维跳跃，平时有点小二但做事是很认真的哦！虽然有时候莽莽撞撞。</p>
								  </div>
							 </div>
						   </div>
						   <div class="col-md-2 col-sm-2">
						     <div class="thumbnail">
							     <img src="../images/3D/3Dmember2.png" alt="">
								 <div class="caption">
									<h4>三维设计师  赵玄玉</h4>
									<p>成绩中等 喜欢看书 会P图 视频剪辑 3dmax建模 喜欢摄影 对待工作较为认真负责，喜欢认识新朋友，性格有点内向但是对人很热</p>
								 </div>
							 </div>
						   </div>
						   <div class="col-md-2 col-sm-2">
						   	 <div class="thumbnail">
								 <img src="../images/3D/3Dmember3.png" alt="">
								 <div class="caption">
									 <h4>三维设计师  颜沙</h4>
									 <p>开朗，稳重，有活力，待人热情，真诚。有较强的组织能力，和团队协作精神，良好的社交能力，较强的责任心和使命感</p>
								 </div>
						     </div>
						   </div>
						   <div class="col-md-2 col-sm-2">
						     <div class="thumbnail">
								 <img src="../images/3D/3Dmember4.png" alt="">
								 <div class="caption">
									 <h4>三维设计师  伍丽君</h4>
									 <p>本人性格开朗，稳重有活力，待人热情，真诚。工作认真负责，积极主动，能吃苦耐劳 有较强的实际动手能力和团体协作精神。</p>
								 </div>
						     </div>
						   </div>  
						   <div class="col-md-2 col-sm-2">
						     <div class="thumbnail">
								 <img src="../images/3D/3Dmember4.png" alt="">
								 <div class="caption">
									 <h4>三维设计师  伍丽君</h4>
									 <p>本人性格开朗，稳重有活力，待人热情，真诚。工作认真负责，积极主动，能吃苦耐劳 有较强的实际动手能力和团体协作精神。</p>
								 </div>
						     </div>
						   </div>              
						 </div>	
					</div>-->
				</div>
			 </div>            
         	
			</div>
		</div>
        
        <!--作品介绍-->
        <div class="memberCreations">
          <div class="CreationPartOne">
            <div class="PartOne">
              <img src="" alt="" id="img1">
              <div class="creationIcon">
                <img src="../images/3D/3DActive.png" alt="">
              </div>
            </div>
            <div class="PartOne">
              <img src="" alt="" id="img2">
            </div>
            <div class="PartOne">
              <img src="" alt="" id="img3">
            </div>
          </div>
          <div class="CreationPartTwo">
            <div class="PartTwo">
              <img src="" alt="" id="img4">
            </div>
            <div class="PartTwo">
              <img src="" alt="" id="img5">
            </div>
            <div class="PartTwo">
              <img src="" alt="" id="img6">
            </div>
          </div>
        </div>        
        
        <!--3D组口号-->
       <div class="slogan">
         <img src="../images/3D/slogan_3D.png">
       </div>
        
        <!--就业明星-->
		<div class="employeeStar">
			<h1 class="starTitle">就业学员</h1>
			<div id="carouselEmployeeStar" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="employeeCarousel">
						<!--<li data-target="#carouselEmployeeStar" data-slide-to="0" class="active"></li>
						<li data-target="#carouselEmployeeStar" data-slide-to="1"></li>-->
					  </ol>					
					  <div class="carousel-inner" id="show_employee">					  
<!--
							<div class="item active">
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student1_3D.png">
									</div>
									<h3>朱锐锋</h3>
									<p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p>
								</div>
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student2_3D.png">
									</div>
									<h3>刘安奇</h3>
									<p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p>
								</div>
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student3_3D.png">
									</div>
									<h3>曾　婷</h3>
									<p>2015级视觉传达专业本科生，曾多次获得高校学年展大奖，擅长手绘与交互设计。</p>
								</div>
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student4_3D.png">
									</div>
									<h3>梁统荣</h3>
									<p>2015级视觉传达专业本科生，这是思博客里面最丑的作品，我很自卑，大家多疼爱我。</p>
								</div>
							</div>
-->

							<!--<div class="item">
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student1_3D.png">
									</div>
									<h3>朱锐锋</h3>
									<p>2014级产品专业本科生，思博客设计团队首席负责人，主要擅长平面设计与手绘。</p>
								</div>
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student2_3D.png">
									</div>
									<h3>刘安奇</h3>
									<p>2015级视觉传达专业本科生，曾获中日环亚杯金奖，高校学年展大奖，擅长插画设计。</p>
								</div>
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student3_3D.png">
									</div>
									<h3>曾　婷</h3>
									<p>2015级视觉传达专业本科生，曾多次获得高校学年展大奖，擅长手绘与交互设计。</p>
								</div>
								<div class="memberStar">
									<div class="memberPhoto">
										<img src="../images/3D/student4_3D.png">
									</div>
									<h3>梁统荣</h3>
									<p>2015级视觉传达专业本科生，这是思博客里面最丑的作品，我很自卑，大家多疼爱我。</p>
								</div>
							</div>-->							
				  	</div>                 
			</div>
            
		</div>
        
        <!--关于指导老师-->
        <div class="teacher">
			<div class="teacher_title">
				<img src="../images/3D/aboutTeacher.png">
			</div>
			<p class="brief">学院多个重点教师组合授课。每位教师只讲授自己擅长的领域，让成员博采众家之长。指导教师还会传授国际新技术和设计理念，让成员刚加入SPOC就具有行业视野。</p>
		
			<div id="carousel_teacher" class="carousel slide">
				  <!-- Indicators -->
					  <ol class="carousel-indicators" id="teacher_list">
						<!--<li data-target="#carousel_teacher" data-slide-to="0" class="active"></li>
						<li data-target="#carousel_teacher" data-slide-to="1"></li>-->
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" id="show_teacher">
					  
							<!--<div class="item active">
								<div class="teacher_item">
									<div class="teacher_left">
										<img src="../images/3D//teacher.png">
									</div>
									<div class="teacher_bg">
										<div class="teacher_right">
											<h3 class="text-left">谢青伶</h3>
											<p>湖南农业大学体育艺术学院环境设计系讲师</p>
											<p class="p2">思博客创新实验室3D建模团队导师。 主讲室内设计、照明设计、电脑制图等室内设计、装饰装修课程。 同时也担任绘画、书法等课程的教学。</p>
										</div>
									</div>
								</div>
							</div>

							<div class="item">
								<div class="teacher_item">
									<div class="teacher_left">
										<img src="../images/3D//teacher.png">
									</div>
									<div class="teacher_bg">
										<div class="teacher_right">
											<h3 class="text-left">谢青伶</h3>
											<p>湖南农业大学体育艺术学院环境设计系讲师</p>
											<p class="p2">思博客创新实验室3D建模团队导师。 主讲室内设计、照明设计、电脑制图等室内设计、装饰装修课程。 同时也担任绘画、书法等课程的教学。</p>
										</div>
									</div>
								</div>
							</div>-->
							
				  	</div>
			</div>
		</div>
        
        <!--企业对接-->
       <div class="enterprise">
        <h3 class="enterpriseSlogan">企业对接交流</h3>
        <div class="enterpriseBlock">
          <div class="enterpriseLeft">
            <div class="enterpriseLeftItem" >
              <div class="leftItemDescOne">
                 <p></p>  
              </div>
              <div class="leftItemPicOne">
                <img src="../images/3D/employee1.png">
              </div>
            </div>
            <div class="enterpriseLeftItem" >
              <div class="leftItemPicTwo">
                <img src="../images/3D/employee2.png">
              </div>
              <div class="leftItemDescTwo">
                <p></p> 
              </div>              
            </div>
            <div class="enterpriseLeftItem" >
              <div class="leftItemDescThree">
                <p></p> 
              </div>
              <div class="leftItemPicThree">
                <img src="../images/3D/employee3.png">
              </div>
            </div>
          </div>
          <div class="enterpriseRight">
            <div class="enterpriseRightItem">             
              <div class="rightItemPicOne">
                <img src="../images/3D/employee4.png">
              </div>
               <div class="rightItemDesc">
                <p></p> 
              </div>
            </div>
            <div class="enterpriseRightItem">
              <div class="rightItemDesc">
                <p></p> 
              </div>
              <div class="rightItemPicTwo">
                <img src="../images/3D/employee5.png">
              </div>
            </div>
          </div>
        </div>
	  </div>
      
      <!--课程安排-->
      <div class="course">
        <h3>精心设计的课程，每一天都学有所成</h3>
        <p>海量建模案例提供，为三维动画制作提供有力保障</p>
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
              <td>HTML/CSS</td>
              <td>Bootstrap框架</td>
            </tr>
             <tr>
              <td></td>
              <td></td>
            </tr> <tr>
              <td></td>
              <td></td>
            </tr>
             <tr>
              <td></td>
              <td></td>
            </tr>
             <tr>
              <td></td>
              <td></td>
            </tr>
             <tr>
              <td></td>
              <td></td>
            </tr>
             <tr>
              <td></td>
              <td></td>
            </tr>
             <tr>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
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
  </body>
  
  <script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/3D.js" type="text/javascript"></script>   
</html>
