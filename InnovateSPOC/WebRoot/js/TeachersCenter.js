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
    				
    				if(data[i].TSflag == 1){//教师页面
    						$(".tFlag").show();
    						$("#id").val(data[i].tid);
		    				$("#name").val(data[i].tname);
		    				$("#sex").val(data[i].sex);
		    				$("#possword").val(data[i].password);
		    				$("#introduce").val(data[i].teacher_introduce);
		    				$("#position").val(data[i].position);
		    				$("#picture").val(data[i].headshot);
		    				
		    				if(data[i].sex ==="男"){
								$("#male").attr("checked", "true");
							}else{
								$("#female").attr("checked", "true");
							}
		    				
		    			 	$("#imghead").attr('src', data[i].photo_address);
		   
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
								$("#teachersform").submit();
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