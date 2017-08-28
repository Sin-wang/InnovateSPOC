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
		<title>企业招聘</title>
		<link href="../css/recruit.css" type="text/css" rel="stylesheet" />
        <link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
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
						  <a class="nav_stop" href="../index.html">
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
						  	  <span class="name_ch">CG特效组</span>
							</a>
						  </li>
							 <li>
							<a href="recruit.jsp">
						  	  <span class="name_ch">企业招聘</span>
							</a>
						  </li>
						  <li>
							<a href="#">
						  <span class="name_ch">团队作品</span>
							</a>
						  </li>
						  <li>
							<a href="../login.html">
						  <span class="name_ch">登录</span>
							</a>
						  </li>						 
						</ul>
					  </div>
					  <div class="clear"></div>
					</div>
			</div>
		</div>
  
  
  <!-- Nav tabs -->
  <div class="row">
	  <div class="tab col-sm-offset-1 col-sm-10">

		<ul class="nav-tab">
		  <li class="active"><a href="#program" aria-controls="program" role="tab-nav" data-toggle="tab" class="title">程序组</a></li>
		  <li><a href="#UI" aria-controls="UI" role="tab-nav" data-toggle="tab" class="title">UI组</a></li>
		  <li><a href="#3D" aria-controls="3D" role="tab-nav" data-toggle="tab" class="title">三维组</a></li>
		  <li><a href="#CG" aria-controls="CG" role="tab-nav" data-toggle="tab" class="title">影视特效组</a></li>

		<form class="form-inline">
			 <div class="form-group has-HelpBlock has-feedback">
				 <label class="control-label" for="inputHelpBlock"><p>作者</p></label>
				 <input type="text" class="form-control" id="inputHelpBlock" aria-describedby="inputHelpBlockStatus">
				 <span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
				 <span id="inputHelpBlockStatus" class="sr-only"></span>
			 </div>
		</form>
		</ul> 

	  </div>
  <!-- Tab panes -->
	  <div class="tab-content col-sm-offset-1 col-sm-10">
		  <div role="tabpanel" class="tab-pane active" id="program">


		  </div>
		  <div role="tabpanel" class="tab-pane" id="UI">

		  </div>
		  <div role="tabpanel" class="tab-pane" id="3D">

		  </div>
		  <div role="tabpanel" class="tab-pane" id="CG">

		  </div>
	  </div>
  </div>
  
  
    <script src="../js/jquery.min.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/recruit.js" type="text/javascript"></script>
</body>
    
</html>
