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
								var gid = $("#gid0").val;
								
								var project_name = $("#project_name").val;
								alert(project_name);
								var project_introduce = $("#project_introduce").val;
								var project_address = $("#project_address").val;
								var photo_address = $("#photo_address").val;
								var wid = $("#wid").val;
								var expression = $("#expression").val;
								var best_work = $("#best_work").val;
								
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
									$("#employmentManage input[name='recordcheck']").prop("checked", true);
								} else {
									$("#employmentManage input[name='recordcheck']").prop("checked", false);
								}
							});
							
							
							
							var index ;
							//修改操作
							$(document).on("click", "#updateDetail", function() {	
								
								index = $(this).attr("value");
								$("#Gid").val(obj[index].gid); 
								$("#ProjectName").val(obj[index].project_name);
								$("#WorkCategory0").val(obj[index].wid);
								$("#Expression").val(obj[index].expression);
								$("#BestWork").val(obj[index].best_work);
								$("#ProjectIntroduce").val(obj[index].project_introduce);
								
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
													} else if ($("#WorkCategory0").val() == "") {
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
});