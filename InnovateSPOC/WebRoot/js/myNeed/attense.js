//限制导入的文件不能为空
//限制导入的文件不能为空

$(document).ready(function() {
	var tag_1=$("#tag_1").text();
	if(tag_1=="500"){
		bootbox.alert({
			message : "导入失败",
			size : 'small'
		});
	}else if(tag_1=="200"){
		bootbox.alert({
			message : "导入成功",
			size : 'small'
		});
	}
});

$("#certainimport").click(function(){

	var fireStr=$("#fileResource").val();
	if($("#fileResource").val()===""){
		bootbox.alert({
			message : "导入的文件不能为空",
			size : 'small'
		});
		return;
	}
	var fireL=fireStr.lastIndexOf(".");
	fireStr=fireStr.substring(fireL);
	if(fireStr!=".xls"&&fireStr!=".xlsx"){
		bootbox.alert({
			message : "请导入Excel格式文档",
			size : 'small'
		});
		$("#fileResource").val("");
		return;
	}
	$("#daoruform").submit();
});


$("#confirmButton").click(function() {
	  $("#export").modal('hide');                      
	});
	
	$("#exportButton").click(function() {
	   //将导出列表下的option去除
	    $("#daobaseh option:gt(0)").remove();
	    $("#daodepth option:gt(0)").remove();
	   //选项恢复初始值
		$("#daobaseh").val("-1");
		$("#daodepth").val("-1");
		$("#daostarh").val("-1");
		
		$.ajax({
			url : 'getAttenceData.do',
			async : true,
			type : "POST",
			dataType : "json",
			cache : false,
			success : function(data) {
				alert(data[0][0].name);
				alert(data[1][1][0]);
				alert(data[2][0][0]);
			},
			error : function(data) {
				alert("请求异常");
			}
		});

	});