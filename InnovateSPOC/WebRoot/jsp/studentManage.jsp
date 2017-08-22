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
							<li><a href="RepairManage.jsp">学生管理</a></li>
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
										<th>性别</th>
										<th>组别</th>
										<th hidden>组别id</th>
										<th hidden>个人简介</th>
										<th hidden>中文居住地址</th>
										<th hidden>英文居住地址</th>
										<th hidden>联系电话</th>
										<th hidden>qq</th>
										<th hidden>入学年份</th>
										<th>专业</th>
										<th hidden>是否毕业</th>
										<th hidden>是否应聘</th>
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
							<h4 class="modal-title text-center" id="myModalLabel">学生信息修改</h4>
						</div>
						<div class="modal-body table-responsive">
							<div class="row">
								<div class="col-md-12">
									<form action="updatestudent.do" method="post" class="form-horizontal"
										role="form" id="majoreditform">
										<table class="table" style="border:none !important;">
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
												<td>性别 ：</td>
												<td><input type="text" class="form-control"
													id="sex" name="sex" readonly/>
													</td>
											</tr>
											<tr>
												<td>组别 ：</td>
												<td><select class="form-control" id="SelectOne"
													name="SelectOne" value="" style="width:80%">
														<option id="Select" value="" selected>请选择</option>
											</select>
												</td>
											</tr>
											<tr>
												<td>个人简介 ：<span class="setTag">*</span></td>
												<td>
													<textarea class="form-control" id="Sintroduce" name="Sintroduce"></textarea>
													</td>
											</tr>
											<tr>
												<td>中文居住地址 ：</td>
												<td><input type="text" class="form-control" id="chinese_address" name="chinese_address"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>英文居住地址 ：</td>
												<td><input type="text" class="form-control" id="english_address" name="english_address"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>联系电话 ：</td>
												<td><input type="text" class="form-control" id="phone" name="phone"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>Q Q ：</td>
												<td><input type="text" class="form-control" id="qq" name="qq"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>入学年份 ：</td>
												<td><input type="text" class="form-control" id="school_year" name="school_year" readonly
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>专 业 ：</td>
												<td><input type="text" class="form-control" id="smajor" name="smajor"
													/><span id="display1" style="color:#f00;"></span>
													</td>
											</tr>
											<tr>
												<td>是否毕业 ：<span class="setTag">*</span></td>
												<td class="col-md-9" id="sex-style">
													<select class="form-control" id="SelectOne1"
													name="SelectOne1" value="" style="width:30%">
														<option id="Select1" value="是" selected>是</option>
														<option id="Select2" value="否" selected>否</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>是否应聘 ：<span class="setTag">*</span></td>
												<td class="col-md-9" id="sex-style">
													<select class="form-control" id="SelectOne2"
													name="SelectOne2" value="" style="width:30%">
														<option id="Select01" value="是" selected>是</option>
														<option id="Select02" value="否" selected>否</option>
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
					<h4 class="modal-title text-center" id="myModalLabel">学生信息</h4>
				</div>
				<div class="modal-body table-responsive">
					<div class="row">
						<div class="col-md-12">
							<form action="addstudent.do" method="post" class="form-horizontal" enctype="multipart/form-data"
										role="form" id="applyaddform">
								<table class="table" style="border:none !important;">
									<tr>
										<td class="col-md-3 col-md-offset-2">学生id:<span class="setTag">*</span></td>
										<td class="col-md-9"><input name="studentId" id="studentId" type="text" style="width:80%" class="form-control"/><span id="display1"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">学生姓名:<span class="setTag">*</span></td>
										<td class="col-md-9"><input name="studentName" id="studentName" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">性别:<span class="setTag">*</span></td>
										<td class="col-md-9" id="sex-style">
											<label class="radio-inline">
												<input id="sex" name="sex" type="radio" value="男" checked/>男
											</label>
											<label class="radio-inline">
												<input id="sex" name="sex" type="radio" value="女" />女
											</label>
											<input type="hidden" value="<%=request.getAttribute("flag")%>" id="baseapply" />
										</td>
									</tr>
									<tr>
										<td>组别 ：<span class="setTag">*</span></td>
										<td><select class="form-control" id="deptSelectOne1"
													name="deptSelectOne1" value="" style="width:80%">
														<option id="deptSelect1" value="" selected>请选择</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">密码:<span class="setTag">*</span></td>
										<td class="col-md-9"><input name="password" id="password" type="password" style="width:80%" class="form-control"/></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">中文居住地址:</td>
										<td class="col-md-9"><input name="Caddress" id="Caddress" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">英文居住地址:</td>
										<td class="col-md-9"><input name="Eaddress" id="Eaddress" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">联系电话:</td>
										<td class="col-md-9"><input name="telephone" id="telephone" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">QQ:</td>
										<td class="col-md-9"><input name="qq" id="qq" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">入学年份:</td>
										<td class="col-md-9"><input name="EnrollmentYear" id="EnrollmentYear" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">专业:</td>
										<td class="col-md-9"><input name="major" id="major" type="text" style="width:80%" class="form-control"/><span id="display2"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">是否毕业:<span class="setTag">*</span></td>
										<td class="col-md-9" id="sex-style">
											<label class="radio-inline">
												<input id="gra" name="gra" type="radio" value="是" checked/>是
											</label>
											<label class="radio-inline">
												<input id="gra" name="gra" type="radio" value="否" />否
											</label>
										</td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">是否应聘:<span class="setTag">*</span></td>
										<td class="col-md-9" id="sex-style">
											<label class="radio-inline">
												<input id="emp" name="emp" type="radio" value="是" checked/>是
											</label>
											<label class="radio-inline">
												<input id="emp" name="emp" type="radio" value="否" />否
											</label>
										</td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">自我介绍:<span class="setTag">*</span></td>
										<td class="col-md-9"><textarea class="form-control" id="Areason" name="Areason"></textarea></td>
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
	<script src="../js/myNeed/studentmanage.js"></script>	
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
				message : "学生编号已存在",
				size : 'small'
			});
		}
	</script>
</body>
</html>
