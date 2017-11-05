// JavaScript Document
var obj = [];
var tag1=true;
var XN=0;
$(document).ready(function() {
					var page = $('#projectWork').DataTable(
									{
										
										"processing" : true,
										"serverSide" : true,
										"bSort" : false,
										"aLengthMenu" : [ 5, 10, 20, 30 ], // 动态指定分页后每页显示的记录数。
										"lengthChange" : true, // 是否启用改变每页显示多少条数据的控件
										"iDisplayLength" : 10, // 默认每页显示多少条记录
										"ordering":true,
										"filter" : true,
										"dom" : 'ftipr<"bottom"l>',
										"ajax" : {
											"url" : "sendWorkinfo.do",
											"type" : "POST"
										},
										"aoColumns" : [
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													
													"mData" : "pid",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "5%"
												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													
													"mData" : "gid",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%"
												},
												{
													"mData" : "project_name",
													"orderable" : true, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%",

												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													"mData" : "wid",
													"orderable" : true, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%"
												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													"mData" : "expression",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "8%"
												},
												{
													"mData" : "best_work",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%",

												},
												{
													"mData" : "project_introduce",
													"orderable" : false, // 禁用排序
													"visible" : false,
													"sDefaultContent" : "",
													"sWidth" : "6%"
												} ,
												{
													"mData" : "project_address",
													"orderable" : false, // 禁用排序
													"visible" : false,
													"sDefaultContent" : "",
													"sWidth" : "6%"
												} ,
												{
													"mData" : "photo_address",
													"orderable" : false, // 禁用排序
													"visible" : false,
													"sDefaultContent" : "",
													"sWidth" : "6%"
												} ,
												{
													"mData" : "pid",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "8%",
													"render" : function(data,type, row) {
														obj.push(row);														
														return data = '<span id="updateDetail" class="icon-edit edit-color" value="'
																+ (obj.length - 1)
																+ '"></span>';

													}
												} ],

										"columnDefs" : [ {
											"orderable" : false, // 禁用排序
											"targets" : [ 0 ], // 指定的列
											"data" : "pid",
											"render" : function(data, type, row) {	
												
												return '<label><input type="checkbox" name="recordcheck" value="'
														+ data
														+ '" class="ck" id="checkHa"></label>';
											}
										} ],

										"language" : {
											"lengthMenu" : "每页 _MENU_ 条记录",
											"zeroRecords" : "没有找到记录",
											"info" : "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
											"infoEmpty" : "无记录",
											"infoFiltered" : "(从 _MAX_ 条记录过滤)",
											"sSearch" : "模糊查询：",
											"oPaginate" : {
												"sFirst" : "首页",
												"sPrevious" : " 上一页 ",
												"sNext" : " 下一页 ",
												"sLast" : " 尾页 "
											}
										}
									});
							//增加框的js控制
							$("#confirm").click(function(){
								var tag=1;
								var gid = $("#gid0").val();
								var project_name = $("#project_name").val();
								var project_introduce = $("#project_introduce").val();
								var project_address = $("#project_address").val();
								var photo_address = $("#photo_address").val();
								var wid = $("#wid0").val();
								var expression = $("#expression").val();
								var best_work = $("#best_work").val();
								
								if(!tag){		
									 bootbox.alert({
											message : "该学生编号已存在，请重新输入",
											size : 'small'
										});
									 return;
								}	
								if(gid==""){
									 bootbox.alert({
											message : "请填写所属组别",
											size : 'small'
										});
									 return;
								}
								if(project_name==""){
									 bootbox.alert({
											message : "请填写项目名称",
											size : 'small'
										});
									 return;
								}
								if(project_introduce==""){
									 bootbox.alert({
											message : "请填写项目作品介绍",
											size : 'small'
										});
									 return;
								}
								if(project_address==""){
									 bootbox.alert({
											message : "请填写项目地址",
											size : 'small'
										});
									 return;
								}
								if(photo_address==""){
									 bootbox.alert({
											message : "请填写项目截图",
											size : 'small'
										});
									 return;
								}
								if(wid==""){
									 bootbox.alert({
											message : "请填写作品类别",
											size : 'small'
										});
									 return;
								}
								if(best_work==""){
									 bootbox.alert({
											message : "请填写是否优秀",
											size : 'small'
										});
									 return;
								}
								if(expression==""){
									 bootbox.alert({
											message : "请填写表达方式",
											size : 'small'
										});
									 return;
								}
								
								$("#myForm").submit();
							});
							
							// 点击删除按钮,判断是否已选择
							$("#delete").click(function() {

								var chk_value = [];
								$('input[name="recordcheck"]:checked').each(function() {
									chk_value.push($(this).val());
								});
								if (chk_value.length == 0) {
									bootbox.alert({
										message : "您还没有选择任何内容",
										size : 'small'
									});
									return;
								}
								$("#deleteModal").modal('show');

							});
							// 确认删除
							$("#delSubmit").click(function() {										
												var recordstr = '(';
												var i = 0;									
												$(
														"input[type='checkbox'][name='recordcheck']:checked")
														.each(
																function() {

																	if (i != 0) {
																		recordstr = recordstr
																				+ ",'"
																				+ $(
																						this)
																						.val()+"'";
																	} else {
																		recordstr = recordstr
																				+ "'"+$(
																						this)
																						.val()+"'";
																	}

																	i++;
																});

												recordstr = recordstr + ')';										
												$.ajax({
													data : {
														"recordstr" : recordstr
													},
													url : 'delWorkinfo.do',
													async : true,
													type : "POST",
													dataType : "json",
													cache : false,
													success : function(data) {											
															bootbox.alert({
																message : data.flag,
																size : 'small'
															});
															$("#deleteModal").modal('hide');											
															page.draw(false);																								
													},
													error : function(data) {
														alert("请求异常");
													}
												});
											});
							
							// //全选反选
							$("#ck1").on("click", function() {
								if ($(this).prop("checked") == true) {
									$("#projectWork input[name='recordcheck']").prop("checked", true);
								} else {
									$("#projectWork input[name='recordcheck']").prop("checked", false);
								}
							});
							
							
							
							var index ;
							//修改操作
							$(document).on("click", "#updateDetail", function() {	
								
								index = $(this).attr("value");
								$("#Pid").val(obj[index].pid); 
								$("#Gid").val(obj[index].gid);
								$("#ProjectName").val(obj[index].project_name);
								$("#ProjectAddress").val(obj[index].project_address);
								$("#WorkCategory0").val(obj[index].wid);
								$("#Expression").val(obj[index].expression);
								$("#BestWork").val(obj[index].best_work);
								$("#ProjectIntroduce").val(obj[index].project_introduce);
								$("#imghead").attr("src",obj[index].photo_address);
								$("#picture").val(obj[index].photo_address);
								
								$("#edit").modal('show');
							});
							$("#saverun").click(function(){
													if ($("#Gid").val() == "") {
														bootbox.alert({
															message : "所属组别不能为空",
															size : 'small'
														});
														return;
													} else if ($("#ProjectName").val() == "") {
														bootbox.alert({
															message : "项目名称不能为空",
															size : 'small'
														});
														return;
													} else if($("#ProjectAddress").val() == ""){
														bootbox.alert({
															message : "项目地址不能为空",
															size : 'small'
														});
														return;
													}else if ($("#WorkCategory0").val() == "") {
														bootbox.alert({
															message : "作品类别不能为空",
															size : 'small'
														});
														return;
													} else if ($("#BestWork").val() == "") {
														bootbox.alert({
															message : "是否优秀不能为空",
															size : 'small'
														});
														return;
													}else if ($("#ProjectIntroduce").val() == "") {
														bootbox.alert({
															message : "项目介绍不能为空",
															size : 'small'
														});
														return;
													}else if(!tag1){
														bootbox.alert({
															message : "该项目名称已存在，请重新输入",
															size : 'small'
														});
													 return;
													}
											bootbox.confirm({
											message: "是否确认修改",
											buttons: {
													confirm: {
															label: 'Yes',
															className: 'btn-success'
															},
													cancel: {
															label: 'No',
															className: 'btn-danger'
															},
														},
													callback: function (result) {
															if(result){
																$("#workEditForm").submit();
																}
															}
														});
							});
							//获取作品类别
							$.ajax({
								type : 'POST',
								dataType : 'json',		
								url : 'getCategory.do',  
								async : false,
								cache : false,
								error : function(request) {
									bootbox.alert({
										message : "请求异常1",
										size : 'small'
									});
								},
								success : function(data) {
									for ( var i=0;i<data[0].length;i++) {				
										$("#wid").after(
												"<option value="+data[0][i].work_name+">"
														+ data[0][i].work_name + "</option>");				
										
									}	
									
									for ( var i=0;i<data[0].length;i++) {				
										$("#Wid1").after(
												"<option value="+data[0][i].work_name+">"
														+ data[0][i].work_name + "</option>");				
										
									}	
								}

							});
							
							//获取组别
							$.ajax({
								type : 'POST',
								dataType : 'json',		
								url : 'getGroup.do',  
								async : false,
								cache : false,
								error : function(request) {
									bootbox.alert({
										message : "请求异常21",
										size : 'small'
									});
								},
								success : function(data) {
									
									for ( var i=0;i<data[0].length;i++) {				
										$("#Gid1").after(
												"<option value="+data[0][i].gname+">"
														+ data[0][i].gname + "</option>");				
										
									}	
									for ( var i=0;i<data[0].length;i++) {				
										$("#gid").after(
												"<option value="+data[0][i].gname+">"
														+ data[0][i].gname + "</option>");				
										
									}
									
									
									
								}

							});
							
});

//图片的显示与修改
function previewImage(file)
{
  var MAXWIDTH  = 240; 
  var MAXHEIGHT = 150;
  var div = document.getElementById('preview');
  if (file.files && file.files[0])
  {
      div.innerHTML ='<img id=imghead>';
      var img = document.getElementById('imghead');
      img.onload = function(){
        var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, 240, 150);
        img.width  =  rect.width;
        img.height =  rect.height;
//         img.style.marginLeft = rect.left+'px';
        img.style.marginTop = rect.top+'px';
      };
      var reader = new FileReader();
      reader.onload = function(evt){img.src = evt.target.result;};
      reader.readAsDataURL(file.files[0]);
  }
  else //兼容IE
  {
    var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
    file.select();
    var src = document.selection.createRange().text;
    div.innerHTML = '<img id=imghead>';
    var img = document.getElementById('imghead');
    img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
    var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
    status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
    div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
  }
}

function clacImgZoomParam( maxWidth, maxHeight, width, height ){
    var param = {top:0, left:0, width:width, height:height};
    if( width>maxWidth || height>maxHeight )
    {
        var rateWidth = width / maxWidth;
        var rateHeight = height / maxHeight;
         
        if( rateWidth > rateHeight )
        {
            param.width =  maxWidth;
            param.height = Math.round(height / rateWidth);
        }else
        {
            param.width = Math.round(width / rateHeight);
            param.height = maxHeight;
        }
    }
    param.left = Math.round((maxWidth - param.width) / 2);
    param.top = Math.round((maxHeight - param.height) / 2);
    return param;
}