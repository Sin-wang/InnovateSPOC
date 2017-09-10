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
							<li><a href="projectWork.jsp">作品信息管理</a></li>
						</ol>
					</div>
					
				</div>
				<!-- 主面板内容 -->
				<div class="row form">
					<div class="col-lg-12">
						<form action="" method="post" enctype="multipart/form-data"
							name="formApplyInfo" id="formApplyInfo">
							<table id="projectWork" class="cell-border" cellspacing="0"
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
										<th>所属组别</th>
										<th>项目名称</th>
										<th>作品类别</th>
										<th>表达方式</th>
										<th>是否优秀</th>
										<th hidden>作品介绍</th>
										<th hidden>项目地址</th>
										<th hidden>项目截图</th>
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
					<h4 class="modal-title text-center" id="myModalLabel">增加作品信息</h4>
				</div>
				
				<div class="modal-body table-responsive" id="modalbody">
					<div class="row" style="margin-right:0px;">
						<div class="col-md-12">
							<form action="increaseWorkInfo.do" method="post" id="myForm"
						enctype="multipart/form-data" class="form-horizontal" role="form">
								 
								<div class="form-group">
									<label class="col-md-3 control-label">所属组别<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<select class="form-control" id="gid0" name="groupName">
											<option id="gid"  value="">请选择</option>
										</select>
									</div>
								</div> 
								<div class="form-group">
									<label class="col-md-3 control-label">项目名称<span
									class="setTag">*</span></label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="project_name"
											name="projectName" placeholder="">
										</div>
										<input type="hidden" value="<%=request.getAttribute("flag")%>" id="projectname0" />
								</div>
								
								<div class="form-group">
									<label class="col-md-3 control-label">作品类别<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<select class="form-control" id="wid0" name="workCategory">
											<option id="wid" value="">请选择</option>
											
										</select>
									</div>
								</div> 
								
								<div class="form-group">
									<label class="col-md-3 control-label">表达方式<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<select class="form-control" id="expression" name="express">
											<option id="expression0" value="视频" >视频</option>
											<option id="expression1" value="静帧图" >静帧图</option>
										</select>
									</div>
								</div> 
								<div class="form-group">
									<label class="col-md-3 control-label">是否优秀<span
										class="setTag">*</span></label>
									<div class="col-md-6">
										<select class="form-control" id="best_work" name="bestWork">
											<option id="best_work0" value="是" >是</option>
											<option id="best_work1" value="否" >否</option>
										</select>
									</div>
								</div> 
								<div class="form-group">
									<label class="col-md-3 control-label">作品介绍<span
									class="setTag">*</span></label> 
										<div class="col-md-6">
											<input type="text" class="form-control" id="project_introduce"
											name="projectIntroduce" placeholder="">
										</div>
								</div>
								<div class="form-group">

										<label class="col-md-3 control-label">项目地址</label>
										<div class="col-md-6">
											<input type="text" id="project_address"  class="form-control" placeholder=""
												name="projectAddress">
										</div>
								</div>
								<div class="form-group">

										<label class="col-md-3 control-label">项目截图</label>
										<div class="col-md-6">
											<input type="file" id="photo_address" placeholder=""
												name="photoAddress">
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
									<form action="updateWorkInfo.do" method="post" class="form-horizontal"
										role="form" id="workEditForm" enctype="multipart/form-data">
										<table class="table" style="border:none !important;">
										<tr>
												<td>
   													<div id="preview">
    													<img id="imghead" width="100%" height="auto" border="0" src="../images/big.jpg">
								  					</div>
                                  					<div style="margin:20px 18px;">
                                  						<label class="btn btn-primary" for="file" >修改图片</label>
								  						<input type="file" onchange="previewImage(this)" id=file name="img" style="position:absolute;clip:rect(0 0 0 0);">                          
                                  					</div>
                                  				</td>
										</tr>
											<tr>
												<input type="text" class="form-control" id="Pid"
										name="Pid" style="display:none"/>
												<td>所属组别: </td>
												<td>
													<select class="form-control" id="Gid" name="Gid">
														<option id="Gid1" value="">请选择</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>项目名称:</td>
												<td><input type="text" class="form-control"
													id="ProjectName" name="ProjectName""  />
													</td>
											</tr>
											<tr>
												<td>作品类别:</td>
												<td>
													<select class="form-control" id="WorkCategory0" name="WorkCategory">
														<option id="Wid1"  value="">请选择</option>
													</select>

												</td>
											</tr>
											<tr>
												<td>表达方式：</td>
												<td>
												<select class="form-control" id="Expression" name="Expression">
															<option id="Expression0"  value="">请选择</option>
															<option id="Expression1" value="视频" >视频</option>
															<option id="Expression2" value="静帧图" >静帧图</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>是否优秀：</td>
												<td >
													<select class="form-control" id="BestWork" name="BestWork">
															<option id="BestWork3"  value="">请选择</option>
															<option id="BestWork0" value="是" >是</option>
															<option id="BestWork1" value="否" >否</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>作品介绍：</td>
												<td colspan="3">
												<textarea class="form-control" rows="3" id="ProjectIntroduce" name="ProjectIntroduce">
												</textarea>
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
	<script src="../js/myNeed/projectWork.js"></script>
	<script src="../js/jquery.dataTables.min.js"></script>	
	<script src="../js/bootbox.min.js"></script>
	<script src="../js/kg.js"></script>
	<script type="text/javascript">
		var flag = document.getElementById('projectname0').value;
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
