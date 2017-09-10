// JavaScript Document
$(document).ready(function(){

	$('#myCarousel').carousel({
		interval: 1500
		});
	$('#myCarousel4').carousel({
		interval: 2000
		});
	$('#myCarousel5').carousel({
		interval: 3000
		});
	
	/*$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : '',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {*/
				var newStr='';
				var newListStr='';
				var newGroup=5/2;
				var newLast=5%2;
	
				if(newLast!==0){
					newGroup=parseInt(newGroup)+1;
				}
				for(var i=0;i<newGroup;i++){
					
					if(i===0){
						newStr=newStr+'<div class="item active">';
						newListStr=newListStr+'<li data-target="#myCarousel4" data-slide-to="0" class="active"></li>';
					}else{
						newStr=newStr+'<div class="item">';
						newListStr=newListStr+'<li data-target="#myCarousel4" data-slide-to="'+i+'"></li>';
					}
					if(i!==(newGroup-1)||newLast===0){
						alert(i);
						for(var k=0;k<2;k++){
							newStr=newStr+'<div class="newsunit"><a href="html/news_3.html" ><img src="images/index/found.jpg" alt="" class="fl"><div class="fl news-text"><h2>互联网+移动应用创新班成立</h2><p class="ct">9月21日上午，湖南农业大学2015年计算机科学与技术专业“互联网+移动应用”创新班招生说明会在图书馆大成厅举行......</p></div><div class="fr news-date"><p>2017</p><p>05-18</p></div><div class="news-bottom"></div></a></div>';	
						}
						newStr=newStr+'</div>';
					}
					else{
						alert(2);
						newStr=newStr+'<div class="newsunit"><a href="html/news_3.html" ><img src="images/index/found.jpg" alt="" class="fl"><div class="fl news-text"><h2>互联网+移动应用创新班成立</h2><p class="ct">9月21日上午，湖南农业大学2015年计算机科学与技术专业“互联网+移动应用”创新班招生说明会在图书馆大成厅举行......</p></div><div class="fr news-date"><p>2017</p><p>05-18</p></div><div class="news-bottom"></div></a></div></div>';
					}
					
					 
				}
				$("#showNews").append(newStr);
				$("#showListNew").append(newListStr);
 			/*}
        });*/
});
