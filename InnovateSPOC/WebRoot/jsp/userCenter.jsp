<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
  <head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/user.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    

  </head>
  
  <body>
    
	<div class="container-fluid content">
    	<div class="row">
			<div class="main " style="min-height: 584px;">					
				<form action="Userupdate.do" method="post" role="form" id="studentform" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6  col-md-offset-2 form-group xgarea form-horizontal">
						
							<div class="form-group jianju text-left">
                                <label for="inputEmail3" class="col-sm-2 control-label">编  号</label>
                                <div class="col-sm-8">
                                  <input readonly type="text" class="form-control" id="id" name="id">
                                </div>
                             </div>
                             
							<div class="form-group jianju text-left">
                                <label for="inputEmail3" class="col-sm-2 control-label">姓  名</label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="name" name="name">
                                </div>
                            </div>
                            
                            <div class="form-group jianju">
                                <label for="inputEmail3" class="col-sm-2 control-label">性别</label>
                                <div class="col-sm-8">
                                  <label class="radio-inline">
  								  <input type="radio" name="sex" value="男" id="male"> 男
								  </label>
								  <label class="radio-inline">
								  <input type="radio" name="sex" value="女" id="female"> 女
								  </label>
                                </div>
                             </div>
                             
                             
                             <div class="form-group jianju text-left sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">联系电话</label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="phone" name="phone">
                                </div>
                            </div>
                            
                            <div class="form-group jianju text-left sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">QQ</label>
                                <div class="col-sm-8">
                                  <input type="text" class="form-control" id="qq" name="qq">
                                </div>
                            </div>
                            
							<div class="form-group jianju">
                                <label for="inputEmail3" class="col-sm-2 control-label">密码修改</label>
                                <div class="col-sm-6">
                                  <input type="password" class="form-control" id="possword" name="possword">
                                </div>
                             </div>
							<div class="form-group jianju">
                                <label for="inputEmail3" class="col-sm-2 control-label">确认密码</label>
                                <div class="col-sm-6">
                                  <input type="password" class="form-control" id="repossword" name="possword" onBlur="password()">
                                </div>
                             </div>
							<div class="form-group jianju sFalg" >
                                <label for="inputEmail3" class="col-sm-2 control-label">专业</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="major" name="major">
                                </div>
                             </div>
                             <div class="form-group jianju sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">入学年份</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="school_year" name="school_year">
                                </div>
                             </div>
							<div class="form-group jianju sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">中文地址</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="chinese_address" name="chinese_address">
                                </div>
                             </div>
							<div class="form-group jianju sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">英文地址</label>
                                <div class="col-sm-6">
                                  <input type="text" class="form-control" id="english_address" name="english_address">
                                </div>
                            </div>
						
							<div class="form-group jianju sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">是否毕业</label>
                                <div class="col-sm-6">
                                  <label class="radio-inline">
  								  <input type="radio" name="graduation" value="是" id="gYes"> 是
								  </label>
								  <label class="radio-inline">
								  <input type="radio" name="graduation" value="否" id="gNo"> 否
								  </label>
                                </div>
                            </div>
							<div class="form-group jianju sFalg">
                                <label for="inputEmail3" class="col-sm-2 control-label">是否应聘</label>
                                <div class="col-sm-6">
                                  <label class="radio-inline">
  								  <input type="radio" name="employed" value="是" id="eYes"> 是
								  </label>
								  <label class="radio-inline">
								  <input type="radio" name="employed" value="否" id="eNo"> 否
								  </label>
                                </div>
                             </div>
                             
                             <div class="form-group jianju tFlag">
								<label for="inputEmail3" class="col-sm-2 control-label">职称</label>
								<div class="col-sm-6">
								<input type="text" class="form-control" id="position" name="position">
								</div>
							</div>

                             
                             <div class="form-group jianju ">
                                <label for="inputEmail3" class="col-sm-2 control-label">自我介绍</label>
                                <div class="col-sm-6">
                                  <textarea type="text" class="form-control" id="introduce" name="introduce"></textarea>
                                </div>
                            </div>
                            
						</div>
						
						
						 
						
						
						<div class="col-md-3">
                        	<div class="form-group">
                                <div class="col-sm-10">
                                  <div id="preview">
    								<img id="imghead" class="img-circle bk-img-60" width="100%" height="auto" border="0" src="../images/big.jpg">
								  </div>
                                  <div style="margin:20px 18px;">
                                  	<label class="btn btn-primary" for="file" >浏览头像</label>
								  	<input type="file" name="img" onchange="previewImage(this)" id="file" style="position:absolute;clip:rect(0 0 0 0);">                          
                                  </div>
                                </div>
                            </div>
                        </div>
                        
                     <input type="text" class="form-control" id="picture" name="picture" style="display:none">        
					<div class="row">
						<div class="col-md-5 col-md-offset-3">
							<a type="button" class="btn btn-info" id="editRusume" href="">修改简历</a>
							<button type="button" class="btn btn-danger" id="save">保存</button>
						</div>
					</div>
					</div>
				</form>
			</div><!-- End Sidebar-->                 

        </div><!--row end-->
    </div>
	<div class="clearfix"></div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootbox.min.js" type="text/javascript"></script>
    <script src="../js/userCenter.js"></script>
  </body>
</html>
