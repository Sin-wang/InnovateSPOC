var currentPage = 0;//当前页
var pageNum = $(".list").length;//总页数

window.onload = $(".list:first").css("display","block");

//首页
$("#shouye").click(function(){
	$(".list").css("display","none");
	$(".list:first").css("display","block");
	currentPage = 0;
})

//末页
$("#moye").click(function(){
	$(".list").css("display","none");
	$(".list:last").css("display","block");
	currentPage = pageNum - 1;
})


//上一页
$("#last").click(function(){
	var direct = -1;
	currentPage = currentPage + direct;
	if(currentPage < 0){
		alert("已是首页");
		currentPage = 0;
		return;
	}
	$(".list").css("display","none");
	$(".list:eq("+currentPage+")").css("display","block");
})


//下一页
$("#next").click(function(){
	var direct = 1;
	currentPage = currentPage + direct;
	if(currentPage > pageNum - 1){
		currentPage = pageNum - 1;
		alert("已是末页");
		return;
	}
	$(".list").css("display","none");
	$(".list:eq("+currentPage+")").css("display","block");
})

//页数翻页
$(".num").click(function(){
	$this = $(this);
	currentPage = parseInt($this.html()) - 1;
	$(".list").css("display","none");
	$(".list:eq("+currentPage+")").css("display","block");
})

//生成总页数
$("#pagenum").append("总共" + pageNum + "页");
