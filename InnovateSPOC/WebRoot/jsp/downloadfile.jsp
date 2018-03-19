<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8" />
    <title>SPOC创新实验室文件下载</title>
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
<style type="text/css">
	.fileContent{
		margin-top:60px;
		font-size:18px;
	}
	.linkSize{
	font-size:15px;
	}
	.fontSize{
		font-size:14px;
	}
</style>
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
							<a  class="nav_stop" href="downloadfile.jsp">
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
		
	<div class="wrap fileContent">
		<div class="row">
			<div class="col-xs-9 col-md-9 col-md-offset-1">VR经验交流PPT下载</div>
			<div class="col-xs-2 col-md-2">
				<a href="../images/VR.pptx">
					<span class="linkSize">下载</span>
					<span class="glyphicon glyphicon-download fontSize"></span>
				</a>
			</div>
		</div>
		<div class="row" style="margin-top:20px">
			<div class="col-xs-9 col-md-9 col-md-offset-1">《僵尸玩偶》游戏设计文档下载</div>
			<div class="col-xs-2 col-md-2">
				<a href="../images/game.pdf">
					<span class="linkSize">下载</span>
					<span class="glyphicon glyphicon-download fontSize"></span>
				</a>
			</div>
		</div>
 		<!-- <table class="table table-condensed">
			<tr>
				<td>
					<p>VR经验交流下载</p>
					<a class="glyphicon glyphicon-download" href="../images/VR.pptx"></a>
				</td>
			</tr>
		</table> -->
	</div>
		
		
	</body>	
	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/bootbox.min.js" type="text/javascript"></script>
	<script src="../js/program.js" type="text/javascript"></script>
</html>
