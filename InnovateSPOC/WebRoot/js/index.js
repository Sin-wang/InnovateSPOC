// JavaScript Document
$(document).ready(function(){
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
				var maxLenght=data[0].length-1;
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
							newStr=newStr+'<div class="newsunit"><a href="jsp/detailNew.do?id='+data[0][maxLenght-(2*i+k)].id+'" target="_blank"><img src="'+ data[0][maxLenght-(2*i+k)].photo.substring(3) +'" class="fl"><div class="fl news-text"><h2>'+ data[0][maxLenght-(2*i+k)].title +'</h2><p class="ct">'+ data[0][maxLenght-(2*i+k)].content +'</p></div><div class="fr news-date"><p>'+data[0][maxLenght-(2*i+k)].time.substring(0,4)+'</p><p>'+ data[0][maxLenght-(2*i+k)].time.substring(5) +'</p></div><div class="news-bottom"></div></a></div>';	
						}
						newStr=newStr+'</div>';
					}else{
						newStr=newStr+'<div class="newsunit"><a href="jsp/detailNew.do?id='+data[0][0].id+'" target="_blank"><img src="'+ data[0][0].photo.substring(3) +'" class="fl"><div class="fl news-text"><h2>'+ data[0][0].title +'</h2><p class="ct">'+ data[0][0].content +'</p></div><div class="fr news-date"><p>'+data[0][0].time.substring(0,4)+'</p><p>'+ data[0][0].time.substring(5) +'</p></div><div class="news-bottom"></div></a></div></div>';
					}
					
					 
				}
				$("#showNews").append(newStr);
				$("#showListNew").append(newListStr);
 			}
        });
});
