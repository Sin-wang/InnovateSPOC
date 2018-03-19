$(document).ready(function() {
/*
*
*显示个人信息
*/
    	$.ajax({
    		type : 'POST',
    		dataType : 'json',
    		url : 'getPersonInfo.do',
    		async : false,
    		cache : false,
    		error : function(request) {
    			alert("error");
    		},
    		success : function(data) {
    			var i = 0;
    			for ( var item in data) {
    				
    				 if(data[i].TSflag == 2){//学生页面
    					 $(".tFlag").hide();
    					$("#imghead").attr('src', data[i].headshot);
    					$("#id").val(data[i].sid);
    					$("#name").val(data[i].sname);
    					$("#phone").val(data[i].phone);
    					$("#qq").val(data[i].qq);
    					$("#major").val(data[i].major);
    					$("#school_year").val(data[i].school_year);
    					$("#chinese_address").val(data[i].chinese_address);
    					$("#english_address").val(data[i].english_address);
    					$("#introduce").val(data[i].student_introduce);
    					$("#possword").val(data[i].password);
    					$("#picture").val(data[i].headshot);
    					
    					var resumeLink="Uinter.jsp?"+data[i].sid;
    					$("#editRusume").attr("href",resumeLink);
    					
    					if(data[i].sex==="男"){
    						$("#male").attr("checked", "true");
    					}else{
    						$("#female").attr("checked", "true");
    					}

    					if(data[i].graduation==="是"){
    						$("#gYes").attr("checked", "true");
    					}else{
    						$("#gNo").attr("checked", "true");
    					}

    					if(data[i].employed==="是"){
    						$("#eYes").attr("checked", "true");
    					}else{
    						$("#eNo").attr("checked", "true");
    					}
    					
    					}
		    	}
		    			i++;
    			
    			
    		}
    	});
        
 //修改个人信息 
		    	
				$("#save").click(function(){
					if($("#introduce").val()==""){
						bootbox.alert({
						message : "请填写自我介绍",
						size : 'small'
						});	
						return;
					}
					//$(".sFalg").hide();
					bootbox.confirm({
						message: "是否确认修改",
						size: 'small',
						buttons: {
								confirm: {
										label: '确定',
										className: 'btn-success'
										},
								cancel: {
										label: '取消',
										className: 'btn-danger'
										},
								 },
						callback: function (result) {
							if(result){
								$("#studentform").submit();
									  }
						}
					});
				}) ;
}) ;


function previewImage(file)
{
  var MAXWIDTH  = 120; 
  var MAXHEIGHT = 120;
  var div = document.getElementById('preview');
  if (file.files && file.files[0])
  {
      div.innerHTML ='<img id=imghead class="img-circle bk-img-60">';
      var img = document.getElementById('imghead');
      img.onload = function(){
        var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, 120, 120);
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