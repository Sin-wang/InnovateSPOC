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
<!-- 	 <link rel="stylesheet" href="../css/employmentManage.css"> -->
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
										<li><a href="#"><span class="text"></span>学生管理</a></li>
										<li><a href="#"><span class="text"></span>教师管理</a></li>
										
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
											href="rent-approve.jsp"><span class="text">学生简历管理</span></a></li>

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
											href="rent-approve.jsp"><span class="text">新闻信息管理</span></a></li>

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
							<li><a href="employmentManage.jsp">就业信息管理</a></li>
						</ol>
					</div>
					
				</div>
				<!-- 主面板内容 -->
				<div class="row form">
					<div class="col-lg-12">
						<form action="" method="post" enctype="multipart/form-data"
							name="formApplyInfo" id="formApplyInfo">
							<table id="employmentManage" class="cell-border" cellspacing="0"
								width="100%">
								<thead>
									<tr bgcolor="#ECF1F5">
									<td hidden id="exportMaintain">${exportMaintain}</td>
										<td colspan="2" id="button-left">
											<button type="button" class="btn btn-danger" id="delete">删除</button>
											<button type="button" class="btn btn-info"
												data-toggle="modal" data-target="#add" id="ZJ">增加</button>
										</td>
										<td colspan="5"></td>
										<td colspan="12" id="button-right">
											<button type="button" id="export" class="btn btn-primary"
												data-toggle="modal" data-target="#exportmodal">导出</button>
										</td>

									</tr>
									<tr>
										<th>选择</th>
										<th>学生编号</th>
										<th>所在公司</th>
										<th>年薪</th>
										<th>从事工作</th>
										<th>毕业年份</th>
										<th>是否优秀</th>
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
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<div id="closebas" class="glyphicon glyphicon-remove closeModal"
				data-dismiss="modal"></div>
					<h4 class="modal-title text-center" id="myModalLabel">增加就业信息</h4>
				</div>
				
				<div class="modal-body table-responsive" id="modalbody">
					<div class="row" style="margin-right:0px;">
						<div class="col-md-12">
							<form action="increaseEmpInfo.do" method="post" id="myForm"
						enctype="multipart/form-data" class="form-horizontal" role="form">
								<div class="form-group">
									<label class="col-md-3 control-label">学生编号<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="sid"
											name="stuName" placeholder="">
										</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">所在公司<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="company"
											name="companyName" placeholder="">
										</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">年薪<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="salary"
											name="wage" placeholder="">
										</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">从事工作<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="workin"
											name="work" placeholder="">
										</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">毕业年份<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="graduation_year"
											name="graduateYear" placeholder="">
										</div>
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label">是否优秀<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<select class="form-control" id="excellence0" name="exc">
											<option id="excellence" value="是">是</option>
											<option id="excellence" value="否">否</option>
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
							<button type="submit" class="btn btn-primary"
										id="submit0">确定</button>
						</center>
				</div>
			
			</div>
		</div>
	</div> 
	
	
	<!-- 弹出框导出 -->
	<div class="modal fade" id="export" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width:400px;height:600px;">
					<div class="modal-content" style="border:#3071a9 8px solid;">
						<div class="modal-header" style="background:#3071a9; color:#FFF">

							<div id="daoclose" class="glyphicon glyphicon-remove closeModal"
								data-dismiss="modal"></div>

							<h4 class="modal-title" id="myModalLabel">请选择导出就业信息</h4>
						</div>
						<form action="exportThisInfo.do" method="post">
							<div class="modal-body" id="daochu">
								<table>
									<tr>
										<td>基地类型:</td>
										<td><select class="form-control" name="basetype"
											id="daobaseh">
												<option value="-1" id="daobase">全部</option>
										</select></td>
									</tr>
									<tr ${college==null?"":"style='display:none;'" }>
										<td>申报部门:</td>
										<td><select class="form-control" id="daodepth"
											name=${college==null?"applydept":"" }>
												<option value="-1" id="daodept">全部</option>
										</select></td>
									</tr>
									<tr>
										<td>星级:</td>
										<td><select class="form-control" id="daostarh"
											name="star">
												<option value="-1">全部</option>
												<option value="0">无</option>
												<option value="1">一星级</option>
												<option value="2">二星级</option>
												<option value="3">三星级</option>
												<option value="4">四星级</option>
												<option value="5">五星级</option>
										</select></td>
									</tr>
								</table>

							</div>
							<div class="modal-footer">
								<center>
									<button type="button" class="btn btn-default" id="daoclose"
										data-dismiss="modal">取消</button>
									<button type="submit" class="btn btn-primary"
										id="confirmButton">确定</button>
								</center>
							</div>
						</form>
					</div>
				</div>
			</div>
	
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/jquery.min.js"></script>
	<!--datatable javascript-->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/myNeed/employmentManage.js"></script>
	<script src="../js/jquery.dataTables.min.js"></script>	
	<script src="../js/bootbox.min.js"></script>
	<script src="../js/kg.js"></script>
</body>
</html>
