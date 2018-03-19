<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
					<div class="sidebar-header "></div>

					<!-- Sidebar Menu-->
					<div class="sidebar-menu" style="height: 384px;">
						<nav id="menu" class="nav-main" role="navigation"> </nav>
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
							<li><a href="RepairManage.jsp">签到管理</a></li>
						</ol>
					</div>

				</div>
				<!-- 主面板内容 -->
				<div class="row form">
					<div class="col-lg-12">
						<table class="table" id="test">
  
						</table><br>
						<input id="Button1" type="button" value="导出EXCEL"
        onclick="javascript:method1('test')" style="padding:5px;margin-top:20px;"/>
						<form action="" method="post" enctype="multipart/form-data"
							name="formApplyInfo" id="formApplyInfo">
							<table id="major" class="cell-border" cellspacing="0"
								width="100%">
								<thead>
									<tr bgcolor="#ECF1F5">
									<tr>
										<td hidden id="tag_1">${tag}</td>
										<td colspan="12" id="button-right">
											<button type="button" class="btn btn-primary"
												id="exportButton" data-toggle="modal" data-target="#export">导出</button>
											<button type="button" class="btn btn-primary"
												id="importButton" data-toggle="modal" data-target="#import"
												${college==null?"":"style='display:none;'"}>导入</button> <a
											href="../templet/BaseInfotemplet.rar" id="LinkButton"
											class="btn btn-primary"
											${college==null?"":"style='display:none;'"}>点击下载导入模板</a>
										</td>
									</tr>
								</thead>
								<tbody class="text-center">

								</tbody>

							</table>
						</form>
					</div>
				</div>


			</div>
		</div>
		<!--row end-->
	</div>

	<!-- Modal 导入-->
	<div class="modal fade" id="import" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<form action="importAttense.do" method="post" id="daoruform"
				enctype="multipart/form-data">
				<div class="modal-content" style="border:#3071a9 8px solid">
					<div class="modal-header" style="background:#3071a9; color:#FFF">
						<div class="glyphicon glyphicon-remove closeModal"
							data-dismiss="modal"></div>
						<h5 class="modal-title" id="myModalLabel">请选择要导入的文件</h5>
					</div>

					<center>
						<div class="modal-body" id="exportxsl" style="height:60px;">
							<input type="file" id="fileResource" name="fileResource">
						</div>
					</center>
					<div class="modal-footer">
						<center>
							<button type="button" class="btn btn-primary" id="certainimport">确定</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="closeimport">取消</button>
						</center>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<div class="modal fade" id="export" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width:400px;height:600px;">
					<div class="modal-content" style="border:#3071a9 8px solid;">
						<div class="modal-header" style="background:#3071a9; color:#FFF">

							<div id="daoclose" class="glyphicon glyphicon-remove closeModal"
								data-dismiss="modal"></div>

							<h4 class="modal-title" id="myModalLabel">请选择导出的基地</h4>
						</div>
						<form action="" method="post">
							
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
	<script src="../js/jquery.dataTables.min.js"></script>
	<script src="../js/myNeed/get_data.js"></script>
   <script src="../js/myNeed/export_excel.js"></script>
	<!-- <script src="../js/myNeed/attense.js"></script> -->
	<script src="../js/bootbox.min.js"></script>

</body>
</html>
