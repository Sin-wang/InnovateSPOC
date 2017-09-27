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
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="../css/employmentManage.css">
	<link rel="stylesheet" href="../css/practicebaseapply.css">
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
										<li><a
											href="projectPersonnel.jsp"><span class="text">项目人员管理</span></a></li>

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
											href="notification.jsp"><span class="text">发布新闻</span></a></li>
										<li><a href="newlist.do">新闻管理</a></li>
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
							<li><a href="projectPersonnel.jsp">作品人员管理</a></li>
						</ol>
					</div>
					
				</div>
				<!-- 主面板内容 -->
				<div class="row form">
					<div class="col-lg-12">
						<form action="" method="post" enctype="multipart/form-data"
							name="formApplyInfo" id="formApplyInfo">
							<table id="projectPersonnel" class="cell-border" cellspacing="0"
								width="100%">
								<thead>
									<tr bgcolor="#ECF1F5">
										<td hidden id="exportMaintain">${exportMaintain}</td>
										<td colspan="8" id="button-left">
											<button type="button" class="btn btn-danger" id="delete">删除</button>
											<button type="button" class="btn btn-info"
												data-toggle="modal" data-target="#add" id="ZJ">增加</button>
										</td>
										
									</tr>
									<tr>
										<th>选择</th>
										<th>项目名称</th>
										<th>学生姓名</th>
										<th>参与人员</th>
										<th>是否是负责人</th>
										<th>操作</th>
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
	<!-- 弹出框增加 -->
	<div class="modal fade" id="add" style="border:#3071a9 8px solid;overflow-x:hidden;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
			
				<div class="modal-header" style="background:#3071a9; color:#FFF">
					
					<div id="closebas" class="glyphicon glyphicon-remove closeModal"
				data-dismiss="modal"></div>
					<h4 class="modal-title text-center" id="myModalLabel">增加项目人员信息</h4>
				</div>
				
				<div class="modal-body table-responsive" id="modalbody">
					<div class="row" style="margin-right:0px;">
						<div class="col-md-12">
							<form action="increasePersonInfo.do" method="post" id="myForm"
						enctype="multipart/form-data" class="form-horizontal" role="form">
								 
								<div class="form-group">
								<input type="hidden" value="<%=request.getAttribute("flag")%>" id="proname0" />
									<label class="col-md-3 control-label">项目作品<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<!-- <input type="text" class="form-control" id="Pid"
											name="proName" placeholder=""> -->
										<select class="form-control" id="Pid" name="proName">
											<option id="PidList" value="" >请选择</option>
										</select>
									</div>
								</div> 
								<div class="form-group">
									<label class="col-md-3 control-label">学生编号<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="sid"
											name="stuName" readonly>
										</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label">学生姓名<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<select class="form-control" id="StudentName" >
												<option id="StuNameList" value="" >请选择</option>
											</select>
										</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label">参与人员<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="participants"
											name="participants" placeholder="">
									</div>
								</div> 
								
								<div class="form-group">
									<label class="col-md-3 control-label">是否是负责人<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<select class="form-control" id="header" name="header">
											<option id="header0" value="是" >是</option>
											<option id="header1" value="否" >否</option>
										</select>
									</div>
								</div> 
								
							</form>
						</div>
					</div>
				</div>
							
				<div class="modal-footer">
						<center>
							<button type="button" class="btn btn-default" id="daoclose"
										data-dismiss="modal">取消</button>
							<button type="button" class="btn btn-primary" id="confirm">
										确认</button>
						</center>
				</div>
			
			</div>
		</div>
	</div> 
	
	<!--单个删除确认对话框-->
				<div class="modal fade" id="deleteModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<!-- data-backdrop="static" 禁止点击弹框后面内容 -->
					<form class="form-horizontal" role="form">
						<div class="modal-dialog modal-sm ">
							<!-- modal-sm 小的  modal-lg 大的 -->
							<div class="modal-content" style="border:#4D719B 8px solid">
								<div class="modal-header" style="background:#4D719B; color:#FFF">
									<div class="glyphicon glyphicon-remove closeModal"
										data-dismiss="modal"></div>
									<h6 class="modal-title" id="myModalLabel"></h6>
								</div>
								<div class="modal-body" style="text-align: left;">
									<h5>您确定要删除吗？</h5>
								</div>
								<div class="modal-footer">

									<button type="button" class="btn btn-default"
										data-dismiss="modal">取消</button>

									<button type="button" class="btn btn-primary" id="delSubmit">
										确认</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
					</form>
				</div>
	<!-- 弹出框修改-->
			<div class="modal fade" id="edit" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabe" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content" style="border:#3071a9 8px solid">
						<div class="modal-header" style="background:#3071a9; color:#FFF">
							<div class="glyphicon glyphicon-remove closeModal"
								data-dismiss="modal"></div>
							<h4 class="modal-title text-center" id="myModalLabel">详情及修改</h4>
						</div>
						<div class="modal-body table-responsive">
							<div class="row">
								<div class="col-md-12">
									<form action="updatePersonInfo.do" method="post" class="form-horizontal"
										role="form" id="personEditForm">
										<table class="table" style="border:none !important;">
											<tr>
											<input type="text" class="form-control" id="Id"
											name="Id" style="display:none"/>
												<td>项目作品:</td>
												<td><input type="text" class="form-control"
													id="ProjectName" name="ProjectName" readonly="readonly"  />
													</td>
											</tr>
											<tr>
												<td>学生姓名:</td>
												<td>
												<input type="text" class="form-control"
													id="StuName" name="StuName" readonly="readonly" />
													</td>
											</tr>
											<tr>
												<td>参与人员:</td>
												<td>
												<textarea class="form-control" rows="3" id="Participants" name="Participants">
												</textarea>
													</td>
											</tr>
											<tr>
												<td>是否为负责人：</td>
												<td >
													<select class="form-control" id="Header" name="Header">
															<option id="header0"  value="">请选择</option>
															<option id="header1" value="是" >是</option>
															<option id="header2" value="否" >否</option>
													</select>
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
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/jquery.min.js"></script>
	<!--datatable javascript-->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/myNeed/projectPersonnel.js"></script>
	<script src="../js/jquery.dataTables.min.js"></script>	
	<script src="../js/bootbox.min.js"></script>
	<script src="../js/kg.js"></script>
		<script type="text/javascript">
		var flag = document.getElementById('proname0').value;
		if (flag == "success" ) {
			bootbox.alert({
				message : "操作成功",
				size : 'small'
			});
		} else if (flag == "fail") {
			bootbox.alert({
				message : "操作失败",
				size : 'small'
			});
		}
	</script>
</body>
</html>
