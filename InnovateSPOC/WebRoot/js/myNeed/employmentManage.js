// JavaScript Document
var obj = [];
var tag1=true;
var XN=0;
$(document).ready(function() {
					var page = $('#employmentManage').DataTable(
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
											"url" : "sendEmployinfo.do",
											"type" : "POST"
										},
										"aoColumns" : [
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													
													"mData" : "id",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "4%"
												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													
													"mData" : "sid",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%"
												},
												{
													"mData" : "company",
													"orderable" : true, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%",

												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													"mData" : "salary",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%"
												},
												{ // aoColumns设置列时，不可以任意指定列，必须列出所有列。
													"mData" : "workin",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "8%"
												},
												{
													"mData" : "graduation_year",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "10%",

												},
												{
													"mData" : "excellence",
													"orderable" : false, // 禁用排序
													"sDefaultContent" : "",
													"sWidth" : "6%"
												} ,
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
								var sid = $("#sid").val();
								var company = $("#company").val();
								var salary = $("#salary").val();
								var workin = $("#workin").val();
								var graduation_year = $("#graduation_year").val();
								if(!tag){		
									 bootbox.alert({
											message : "该学生编号已存在，请重新输入",
											size : 'small'
										});
									 return;
								}
								if(sid==""){
									 bootbox.alert({
											message : "学生编号不能为空",
											size : 'small'
										});
									 return;
								}
								if(company==""){
									 bootbox.alert({
											message : "请填写所在公司",
											size : 'small'
										});
									 return;
								}
								if(salary==""){
									 bootbox.alert({
											message : "请填写年薪",
											size : 'small'
										});
									 return;
								}
								if(workin==""){
									 bootbox.alert({
											message : "请填写从事工作",
											size : 'small'
										});
									 return;
								}
								if(graduation_year==""){
									 bootbox.alert({
											message : "请填写毕业年份",
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
								$("#deleteOneModal").modal('show');

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
													url : 'delEmpinfo.do',
													async : true,
													type : "POST",
													dataType : "json",
													cache : false,
													success : function(data) {											
															bootbox.alert({
																message : data.flag,
																size : 'small'
															});
															$("#deleteOneModal").modal('hide');											
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
								$("#Sid").val(obj[index].sid); 
								$("#Company").val(obj[index].company);
								$("#Salary").val(obj[index].salary);
								$("#Workin").val(obj[index].workin);
								$("#Graduation_year").val(obj[index].graduation_year);
								$("#Excellence").val(obj[index].excellence);
								
								$("#edit").modal('show');
							});
							$("#saverun").click(function(){
													if ($("#Company").val() == "") {
														bootbox.alert({
															message : "所在公司名称不能为空",
															size : 'small'
														});
														return;
													} else if ($("#Salary").val() == "") {
														bootbox.alert({
															message : "年薪不能为空",
															size : 'small'
														});
														return;
													} else if ($("#Workin").val() == "") {
														bootbox.alert({
															message : "从事工作不能为空",
															size : 'small'
														});
														return;
													} else if ($("#Graduation_year").val() == "") {
														bootbox.alert({
															message : "毕业年份不能为空",
															size : 'small'
														});
														return;
													}else if ($("#Excellence").val() == "") {
														bootbox.alert({
															message : "是否优秀不能为空",
															size : 'small'
														});
														return;
													}else if(!tag1){
														bootbox.alert({
															message : "该学生编号已存在，请重新输入",
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
																$("#employEditForm").submit();
																}
															}
														});
							});
});