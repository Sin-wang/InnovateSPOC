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

<style type="text/css">
    	#preview{
			width:120px;
			height:120px;
			border:1px solid #000;
			border-radius:60px;
			overflow:hidden;
		}
#preview2{
			width:120px;
			height:120px;
			border:1px solid #000;
			border-radius:60px;
			overflow:hidden;
		}
    </style>
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
							<li><a href="RepairManage.jsp">教师管理</a></li>
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
										<td colspan="9" id="button-left">
											<button type="button" class="btn btn-danger" id="delete">删除</button>
											<button type="button" class="btn btn-info"
												data-toggle="modal" data-target="#add" id="ZJ">增加</button>
										</td>
									</tr>
									<tr>
										<td>序号</td>
										<th>教师id</th>
										<th>教师姓名</th>
										<th>性别</th>
										<th>组别</th>
										<th hidden>个人头像</th>
										<th hidden>组别id</th>
										<th hidden>个人简介</th>
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
							<h4 class="modal-title text-center" id="myModalLabel">教师信息修改</h4>
						</div>
						<div class="modal-body table-responsive">
							<div class="row">
								<div class="col-md-12">
									<form action="updateteacher.do" method="post" class="form-horizontal"
										role="form" id="majoreditform" enctype="multipart/form-data">
										<table class="table" style="border:none !important;">
											<tr>
												<td>
   													<div id="preview">
    													<img id="imghead" width="100%" height="auto" name="photo3" border="0" src="../images/big.jpg">
								  					</div>
                                  					<div style="margin:20px 18px;">
                                  						<label class="btn btn-primary" for="file" >修改图片</label>
								  						<input type="file" onchange="previewImage(this)" id="file" name="photo2" style="position:absolute;clip:rect(0 0 0 0);">                          
                                  					</div>
                                  				</td>
											</tr>
											<tr>
												<td>教师id ：</td>
												<td><input type="text" class="form-control"
													id="tid" name="tid" readonly/></td>
											</tr>
											<tr>
												<td>教师姓名 ：</td>
												<td><input type="text" class="form-control"
													id="tname" name="tname" readonly/>
													</td>
											</tr>
											<tr>
												<td>性别 ：</td>
												<td><input type="text" class="form-control"
													id="sex" name="sex" readonly/>
													</td>
											</tr>
											<tr hidden>
												<td>图片地址:</td>
												<td>
													<input type="text" class="form-control" id="picture" name="picture">

												</td>
											</tr>
											<tr>
												<td>组别 ：<span class="setTag">*</span></td>
												<td><select class="form-control" id="SelectOne"
													name="SelectOne" value="" style="width:80%">
														<option id="Select" value="" selected>请选择</option>
											</select>
												</td>
											</tr>
											<tr >
												<td>职称:</td>
												<td>
													<input type="text" class="form-control" id="position" name="position">

												</td>
											</tr>
											<tr>
												<td>个人简介 ：<span class="setTag">*</span></td>
												<td><!-- <input type="text" class="form-control" id="Tintroduce" name="Tintroduce"
													/><span id="display1" style="color:#f00;"></span>
													<input type="text" id="copyMname" hidden/> -->
													<textarea class="form-control" id="Tintroduce" name="Tintroduce"></textarea>
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
					<h4 class="modal-title text-center" id="myModalLabel">教师信息</h4>
				</div>
				<div class="modal-body table-responsive">
					<div class="row">
						<div class="col-md-12">
							<form action="addteacher.do" method="post" class="form-horizontal" enctype="multipart/form-data"
										role="form" id="applyaddform">
								<table class="table" style="border:none !important;">
									<tr>
										<td class="col-md-3 col-md-offset-2">教师id:<span class="setTag">*</span></td>
										<td class="col-md-9"><input name="teacherId" id="teacherId" type="text" style="width:80%" class="form-control"/><span id="display1"
												style="color:#f00;"></span></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">教师姓名:<span class="setTag">*</span></td>
										<td class="col-md-9"><input name="teacherName" id="teacherName" type="text" style="width:80%" class="form-control"/><span id="display2"
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
											<!-- <label class="radio-inline">
  												<input type="radio" name="sex" id="sex" value="男"> 男
											</label>
											<label class="radio-inline">
  												<input type="radio" name="isex" id="sex" value="女"> 女
											</label> -->
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
										<td>职称 ：<span class="setTag">*</span></td>
										<td>
											<input name="position" id="position" type="text" style="width:80%" class="form-control"/>
										</td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">密码:<span class="setTag">*</span></td>
										<td class="col-md-9"><input name="password" id="password" type="password" style="width:80%" class="form-control"/></td>
									</tr>
									<tr>
										<td class="col-md-3 col-md-offset-2">自我介绍:<span class="setTag">*</span></td>
										<td class="col-md-9"><textarea class="form-control" id="Areason" name="Areason"></textarea></td>
									</tr>
									<%-- <tr>
										<td class="col-md-3">上传照片:</td>
										<td class="col-md-9">
											<input type="file" accept="image/gif, image/jpeg" name="file" id="file"/>
											<input type="hidden" value="<%=request.getAttribute("flag")%>" id="baseapply" />
										</td>
									</tr> --%>
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
	<script src="../js/myNeed/teachermanage.js"></script>	
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
				message : "教师编号已存在",
				size : 'small'
			});
		}
	</script>
</body>
</html>
