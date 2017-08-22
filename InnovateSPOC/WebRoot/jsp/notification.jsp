<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>湖南农业大学基地实习综合管理系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Bootstrap -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/style.css">

</head>
  
  <body>
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- 点击收缩左边的菜单栏  + 缩小后左边菜单栏的显示 -->
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a><i
						class="icon-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a><i
						class="icon-align-justify"></i></a></li>
			</ul>
			<span class="teachCenterTitle">思博客管理系统</span>						
			<!-- End Navbar Right -->
		</div>
	</div>



	<div class="container-fluid content">
		<div class="row">

			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header ">
						
					</div>

					<!-- Sidebar Menu-->
					<div class="sidebar-menu" style="height: 384px;">
						<nav id="menu" class="nav-main" role="navigation">
							<ul class="nav nav-sidebar">
								
								<div class="divider2"></div>

								<li class="menuItem nav-parent"><a> <i
										class="icon-copy" aria-hidden="true"></i><span>用户管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a href="user.jsp"><span class="text"></span>用户管理</a></li>
										<li><a href="studentManage.jsp"><span class="text"></span>学生管理</a></li>
										<li><a href="teacherManage.jsp"><span class="text"></span>教师管理</a></li>
										
									</ul></li>

								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>组别管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="groupManage.jsp"><span class="text">组别信息管理</span></a></li>

									</ul>
								</li>

								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>简历管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="internship.jsp"><span class="text">实习经历管理</span></a></li>
										<li><a
											href="educationExperience.jsp"><span class="text">教育经历管理</span></a></li>
										<li><a
											href="hobbys.jsp"><span class="text">兴趣爱好管理</span></a></li>
										<li><a
											href="skill_student.jsp"><span class="text">学生技能管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>作品管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="projectWork.jsp"><span class="text">作品信息管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>就业管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="employmentManage.jsp"><span class="text">就业信息管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>企业交流管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="communication_company.jsp"><span class="text">企业交流信息管理</span></a></li>

									</ul>
								</li>
								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>新闻管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="notification.jsp"><span class="text">新闻信息管理</span></a></li>

									</ul>
								</li>
							</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
				<!-- Sidebar Footer-->
				<div class="sidebar-footer">
					<div class="copyright text-center">
						<div>湖南农业大学版权所有</div>
					</div>
				</div>
				<!-- End Sidebar Footer-->
			</div>
			<!-- End Sidebar-->


			<div class="main " style="min-height: 584px;">
				<!-- 当前地址导航 -->
				<div class="page-header">
					<div class="pull-left">
						<ol class="breadcrumb visible-sm visible-md visible-lg">
							<li><a>位置</a></li>
							<li><a href="RepairManage.jsp">新闻发布</a></li>
						</ol>
					</div>
					
				</div>
				<!-- 主面板内容 -->
				<div class="row form">



					<div class="col-lg-12 form-group">

						<div class=" col-md-4">
							<form class="form-horizontal" role="form">
								<fieldset>
									<div class="form-group">
										<label for="#msglx_list" class="col-sm-3 control-label">消息类型</label>
										<div class="col-sm-6">
											<select class="form-control" id="msglx_list">
												<option value="1" selected="selected">通知公告</option>
											</select>
										</div>
									</div>
								</fieldset>
								<fieldset>
									<div class="form-group" id='titleform'>
										<label for="#title" class="col-sm-3 control-label">通知标题</label>
										<div class="col-sm-6">
											<input type="text" class="form-control" id="title"></input>
										</div>
									</div>
								</fieldset>
							</form>
						</div>

					</div>

					<div class="col-lg-12 form-group">
						<script id="editor" type="text/plain"
							style="width:1024px;height:500px;"></script>
					</div>
					<div class="col-lg-12 form-group">
						<div class="col-md-4" id="btns">
							<button id="sendNotifitation" class="btn btn-default">发布通知</button>
							<button id="setContent" class="btn btn-default">清空内容</button>


						</div>
					</div>

				</div>
			</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/bootbox.min.js"></script>
	<script src="../js/jquery.cokie.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="../js/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="../js/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="../js/ueditor/lang/zh-cn/zh-cn.js"></script>
	<script src="../js/jquery.cokie.min.js"></script>
	<script src="../js/kg.js"></script>
	<script type="text/javascript" src="../js/ueditor/myeditor.js"></script>
</body>
</html>
