// JavaScript Document


$(document).ready(function(){
	
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
	
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getAttenceData.do',
 			error : function(request) {
 				bootbox.alert({
         			  message: "",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				var num = data[0].length;
				var date = data[1][0].length;
				var str="<tr><th>姓名</th><th colspan="+date+">是否到勤</th><th>个人总到勤数</th><th>个人总到勤率</th><tr><td>考勤日期</td>";
				
				for(i=0;i<date;i++){
					str = str+"<td>"+data[1][0][i]+"</td>";
				}
				str = str+"<td></td><td></td></tr>";
				
				for(m=0;m<num;m++){
					str = str+"<tr><td>"+data[0][m].name+"</td>";
					for(n=0;n<date;n++){
						str = str+"<td>"+data[2][m][n]+"</td>";
					}
					str = str+"<td>"+data[0][m].ardpep+"</td>"+"<td>"+data[0][m].ardrate+"</td></tr>";
				}
				
				$("#test").append(str);
 			}
			
        });
	
});