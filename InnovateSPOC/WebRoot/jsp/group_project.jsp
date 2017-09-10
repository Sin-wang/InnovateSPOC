<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
		<meta name="renderer" content="webkit">
        <meta http-equiv="x-ua-compatible" content="IE=edge, chrome=1"/>
        <meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<title>思博客创新实验室作品</title>
		<link href="../css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<link href="../css/group_program.css" type="text/css" rel="stylesheet" />
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
						  <a href="../index.jsp">
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
							<a  class="nav_stop" href="group_project.jsp">
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
	
		<div class="wrap">
			<div id="head">
				<div id="types"><span class="c">类型</span></div>
				<div id="type"></div>
				<div id="search_author">作者<input id="searh"/> </div>
			</div>
			<div id="contents">
				
			</div>
		</div>
		
		<div class="modal fade" id="Login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document" style="width: 800px;">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title text-center" id="myModalLabel2">作品详情</h3>
			  </div>
			  
			 <div class="modal-body" style="padding: 0px;">
				
				<div id="work_window">
					<img src="../images/group_program/Clipboard01.png" width="800px">
					<div id="work_title">
						<p id="work_name">坦克模型</p>
						<p id="work_belong">(3D组作品)</p>
					</div>	
				</div>
						  
				<div id="work_introduce">
					<div id="introduce_title">
						<p>项目介绍</p>
					</div>
				</div>
				
				<div id="introduce_content">
					<p id="work_conrent">市场状况：保健品市场发展快，规模大，但竞争激烈，起伏大；“广告开路”是营养保健品营销的重要特点；市场价格普遍偏高，流通企业利润较大；最近两年保健品市场出现了较大的滑坡。产品状况：各类营养保健品有几百种，有进补养生类，人体平衡类，清除垃圾类，菌群平衡类等等。销路稍好的品种每盒价格在30-40元，零售价与出厂价的差额一般在30%；；包装多采用玻璃瓶或PVC。 (3) 竞争状况：竞争激烈，起伏大，经常出现“各领风骚两三年”的情况。</p>
				</div>			  
				
						  
				<div id="work_menber">
					<p>制作成员</p>
				</div>	
				
				<div id="menber_list">
					<p id="menber_name">成员1　成员2　成员3　成员4</p>
				</div>
					  
			 </div>

			</div>
		  </div>
		</div>
		
		
	</body>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../js/group_program.js"></script>
</html>
