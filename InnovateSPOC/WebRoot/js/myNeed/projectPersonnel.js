// JavaScript Document
var obj = [];
var tag1=true;
var XN=0;
$(document).ready(function() {
					var page = $('#projectPersonnel').DataTable(
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
											"url" : "sendPersoninfo.do",
											"type" : "POST"
										},
										"aoColumns" : [
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													
													"mData" : "id",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "5%"
												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													
													"mData" : "pid",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%"
												},
												{
													"mData" : "sid",
													"orderable" : true, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%",

												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													"mData" : "participants",
													"orderable" : true, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%"
												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													"mData" : "header",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "8%"
												},
												{
													"mData" : "id",
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
											"data" : "id",
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
								var pid = $("#pid").val;
								
								var sid = $("#sid").val;
								var participants = $("#participants").val;
								var header = $("#header").val;
								
								
								if(!tag){		
									 bootbox.alert({
											message : "该学生编号已存在，请重新输入",
											size : 'small'
										});
									 return;
								}	
								if(pid==""){
									 bootbox.alert({
											message : "请填写项目名称",
											size : 'small'
										});
									 return;
								}
								if(sid==""){
									 bootbox.alert({
											message : "请填写学生编号",
											size : 'small'
										});
									 return;
								}
								if(participants==""){
									 bootbox.alert({
											message : "请填写参与人员",
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
												$("input[type='checkbox'][name='recordcheck']:checked").each(
																function() {

																	if (i != 0) {
																		recordstr = recordstr+ ",'"+ $(this).val()+"'";
																	} else {
																		recordstr = recordstr+ "'"+$(this).val()+"'";
																	}

																	i++;
																});

												recordstr = recordstr + ')';										
												$.ajax({
													data : {
														"recordstr" : recordstr
													},
													url : 'delPersoninfo.do',
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
								$("#Id").val(obj[index].id); 
								$("#ProjectName").val(obj[index].pid); 
								$("#StuName").val(obj[index].sid);
								$("#Participants").val(obj[index].participants);
								$("#Header").val(obj[index].header);
								$("#edit").modal('show');
							});
							$("#saverun").click(function(){
													if ($("#ProjectName").val() == "") {
														bootbox.alert({
															message : "项目作品不能为空",
															size : 'small'
														});
														return;
													} else if ($("#StuName").val() == "") {
														bootbox.alert({
															message : "学生名称不能为空",
															size : 'small'
														});
														return;
													} else if ($("#Participants").val() == "") {
														bootbox.alert({
															message : "是否优秀不能为空",
															size : 'small'
														});
														return;
													}else if ($("#Header").val() == "") {
														bootbox.alert({
															message : "是否为负责人不能为空",
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
																$("#personEditForm").submit();
																}
															}
														});
							});
});