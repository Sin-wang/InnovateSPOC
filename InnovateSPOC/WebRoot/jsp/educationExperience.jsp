<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
	<title>思博客实验室管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- Bootstrap -->
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/teacher.css">

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
										<li><a href="studentManage.jsp"><span class="text"></span>学生管理</a></li>
										<li><a href="teacherManage.jsp"><span class="text"></span>教师管理</a></li>
										
									</ul></li>

								<li class="menuItem nav-parent">
									<a> <i class="icon-copy" aria-hidden="true"></i><span>组别管理</span>
								</a>
									<ul class="nav nav-children">
										<li><a
											href="rent-approve.jsp"><span class="text">组别信息管理</span></a></li>

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
											href="rent-approve.jsp"><span class="text">作品信息管理</span></a></li>

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
											href="rent-approve.jsp"><span class="text">企业交流信息管理</span></a></li>

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
							<li><a href="RepairManage.jsp">教育经历管理</a></li>
						</ol>
					</div>
					
				</div>
				<!-- 主面板内容 -->
				<div class="row form">
					<div class="col-lg-12">
						<form action="" method="post" enctype="multipart/form-data"
							name="formApplyInfo" id="formApplyInfo">
							<table id="major" class="cell-border" cellspacing="0"
								width="100%">
								<thead>
									<tr bgcolor="#ECF1F5">
									<td hidden id="exportMaintain">${exportMaintain}</td>
										<td colspan="14" id="button-left">
											<button type="button" class="btn btn-danger" id="delete">删除</button>
											<button type="button" class="btn btn-info"
												data-toggle="modal" data-target="#add" id="ZJ">增加</button>
										</td>


									</tr>
									<tr>
										<td>序号</td>
										<th>学生id</th>
										<th>学生姓名</th>
										<th>学校</th>
										<th>开始时间</th>
										<th>结束时间</th>
										<th hidden>教育内容</th>
										<th>修改</th>
									</tr>
								</thead>
								<tbody class="text-center">

								</tbody>
								<thead>
									<tr>
										<td colspan="11"><label><input type="checkbox"
												name="0" class="ck-all" id="ck1" />全选</label></td>
									</tr>

								</thead>
							</table>
						</form>
					</div>
				</div>


			</div>
		</div>
		<!--row end-->
	</div>
	
	<!-- 弹出框-->
			<div class="modal fade" id="edit" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabe" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content" style="border:#3071a9 8px solid">
						<div class="modal-header" style="background:#3071a9; color:#FFF">
							<div class="glyphicon glyphicon-remove closeModal"
								data-dismiss="modal"></div>
							<h4 class="modal-title text-center" id="myModalLabel">教育经历详情及修改</h4>
						</div>
						<div class="modal-body table-responsive">
							<div class="row">
								<div class="col-md-12">
									<form action="updateEducation.do" method="post" class="form-horizontal"
										role="form" id="majoreditform">
										<table class="table" style="border:none !important;">
											<tr>
												<td>id ：</td>
												<td><input type="text" class="form-control"
													id="id" name="id" readonly/></td>
											</tr>
											<tr>
												<td>学生id ：</td>
												<td><input type="text" class="form-control"
													id="sid" name="sid" readonly/></td>
											</tr>
											<tr>
												<td>学生姓名 ：</td>
												<td><input type="text" class="form-control"
													id="sname" name="sname" readonly/>
													</td>
											</tr>
											<tr>
												<td>学校 ：</td>
												<td><input type="text" class="form-control"
													id="address" name="address" readonly/>
													</td>
											</tr>
											<tr>
												<td>开始时间 ：</td>
												<td><input type="text" class="form-control" id="begin" name="begin"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>结束时间 ：</td>
												<td><input type="text" class="form-control" id="end" name="end"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>教育内容 ：</td>
												<td><textarea class="form-control" id="description" name="description"></textarea>
													</td>
											</tr>
										</table>
									</form>
								</div>
							</div>
						</div>
						<div class="modal-footer table-responsive">
							<center>
								<button type="button" class="btn btn-primary" id="saverun">保存</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">取消</button>
							</center>
						</div>
					</div>
				</div>
			</div>
	
	<!-- 弹出框 -->
	<div class="modal fade" id="add" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title text-center" id="myModalLabel">教育经历信息</h4>
				</div>
				<div class="modal-body table-responsive">
					<div class="row">
						<div class="col-md-12">
							<form action="addEducation.do" method="post" class="form-horizontal" enctype="multipart/form-data"
										role="form" id="applyaddform">
								<table class="table" style="border:none !important;">
									<tr>
										<td class="col-md-3 col-md-offset-2">学生id:</td>
										<td class="col-md-9"><select class="form-control" id="deptSelectOne"
													name="deptSelectOne" value="" style="width:80%">
														<option id="deptSelect" value="" selected>请选择</option>
												</select><input type="hidden" value="<%=request.getAttribute("flag")%>" id="baseapply" /></td>
									</tr>
									<!-- <tr>
										<td class="col-md-3 col-md-offset-2">学生姓名:</td>
										<td class="col-md-9"><input name="studentName" id="studentName" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr> -->
									<tr>
										<td class="col-md-3 col-md-offset-2">学校:</td>
										<td class="col-md-9"><input name="address1" id="address1" type="text" style="width:80%" class="form-control"/></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">开始时间:</td>
										<td class="col-md-9"><input name="begin1" id="begin1" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">结束时间:</td>
										<td class="col-md-9"><input name="end1" id="end1" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">教育内容:</td>
										<td class="col-md-9"><textarea class="form-control" id="description1" name="description1"></textarea></td>
									</tr>
									
								</table>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<center>
						<button type="button" class="btn btn-primary" id="save">确定</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					</center>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/jquery.min.js"></script>
	<!--datatable javascript-->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.dataTables.min.js"></script>
	<script src="../js/bootbox.min.js"></script>
	<script src="../js/myNeed/educationExperience.js"></script>	
	<script src="../js/kg.js"></script>
	<script type="text/javascript">
		var flag = document.getElementById('baseapply').value;
		if (flag == true) {
			bootbox.alert({
				message : "操作成功",
				size : 'small'
			});
		} else if (flag == false) {
			bootbox.alert({
				message : "学生编号不存在",
				size : 'small'
			});
		}
	</script>
</body>
</html>
