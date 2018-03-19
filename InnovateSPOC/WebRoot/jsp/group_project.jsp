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
        <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<title>思博客创新实验室作品</title>
		<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/video-js.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/group_program.css" type="text/css" rel="stylesheet" />
		<link href="../css/common.css" type="text/css" rel="stylesheet"/>
    
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
							<a  class="nav_stop" href="group_project.jsp">
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
	
		<div class="wrap">
			<!-- <div id="head">
				<div id="types"><span class="c">类型</span></div>
				<div id="type"></div>
				<div id="search_author">作者<input id="searh"/> </div>
			</div> -->
			<div id="contents">
				
			</div>
		</div>
		
		<div class="modal fade" id="Login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document" style="width: 800px;">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title text-center" id="myModalLabel2">作品详情</h3>
			  </div>
			  
			 <div class="modal-body" style="padding: 0px;">
				
				<div id="work_window">
					<img id="work_img" src="../images/group_program/Clipboard01.png" width="800px">
					<div id="work_title">
						<p id="work_name"></p>
						<p id="work_belong"></p>
					</div>	
				</div>
						  
				<div id="work_introduce">
					<div id="introduce_title">
						<p>项目介绍</p>
					</div>
				</div>
				
				<div id="introduce_content">
					<p id="work_intro"></p>
				</div>			  
				
						  
				<div id="work_menber">
					<p>制作成员</p>
				</div>	
				
				<div id="menber_list">
					<p id="menber_name"></p>
				</div>
					  
			 </div>

			</div>
		  </div>
		</div>
		
		
		
		<div class="modal fade" id="showVideo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document" style="width: 800px;">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title text-center" id="myModalLabel">作品详情</h3>
			  </div>
			  
			 <div class="modal-body" style="padding: 0px;">
				
				<div id="work_window2">
					<video id="example_video_2" class="video-js vjs-default-skin vjs-big-play-centered vjs-fullscreen-control" controls ="none" width="800" height="425" poster="images/index/video.jpg" data-setup="{}">
					<source id="1" src="http://1252367251.vod2.myqcloud.com/dedcbf81vodgzp1252367251/994917589031868223332412181/WZKA0v5jNmcA.mp4" type='video/mp4' />
					</video>
					<div id="work_title2">
						<p id="work_name2"></p>
						<p id="work_belong2"></p>
					</div>	
				</div>
						  
				<div id="work_introduce2">
					<div id="introduce_title2">
						<p>项目介绍</p>
					</div>
				</div>
				
				<div id="introduce_content2">
					<p id="work_intro2"></p>
				</div>			  
				
						  
				<div id="work_menber2">
					<p>制作成员</p>
				</div>	
				
				<div id="menber_list2">
					<p id="menber_name2"></p>
				</div>
					  
			 </div>

			</div>
		  </div>
		</div>
		
		
	</body>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/video.min.js" type="text/javascript"></script>
	<script src="../js/group_program.js"></script>
</html>
