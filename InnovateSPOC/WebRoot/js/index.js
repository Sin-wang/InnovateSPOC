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
	
	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : 'getNews.do',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				var newStr='';
				var newListStr='';
				var newGroup=data[0].length/2;
				var newLast=data[0].length%2;
				alert(newGroup);
				alert(newLast);
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
						
						for(var k=0;k<2;k++){
							newStr=newStr+'<div class="newsunit"><a href="html/news_3.html" ><img src="'+ data[0][2*i+k].photo +'" alt="" class="fl"><div class="fl news-text"><h2>'+ data[0][2*i+k].title +'</h2><p class="ct">'+ data[0][2*i+k].content +'</p></div><div class="fr news-date"><p>2017</p><p>'+ data[0][2*i+k].time +'</p></div><div class="news-bottom"></div></a></div>';	
						}
						newStr=newStr+'</div>';
					}
					else{
						
						newStr=newStr+'<div class="newsunit"><a href="html/news_3.html" ><img src="'+ data[0][0].photo +'" alt="" class="fl"><div class="fl news-text"><h2>'+ data[0][0].title +'</h2><p class="ct">'+ data[0][0].title +'</p></div><div class="fr news-date"><p>2017</p><p>'+ data[0][0].time +'</p></div><div class="news-bottom"></div></a></div></div>';
					}
					
					 
				}
				$("#showNews").append(newStr);
				$("#showListNew").append(newListStr);
 			}
        });
});
