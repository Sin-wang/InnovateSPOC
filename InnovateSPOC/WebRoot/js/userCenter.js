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
//                 img.style.marginLeft = rect.left+'px';
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



/*
*
*显示个人信息
*/
	var flag;//用于判断是教师还是学生

	$.ajax({
        	type : 'POST',
 			dataType : 'json',
 			url : '',
 			error : function(request) {
 				bootbox.alert({
         			  message: "请求异常",
         			  size: 'small'
         		  });
 			},
 			success : function(data) {
				flag=data.flag;
				if(flag===0){
					$("#id").val(data.sid);
					$("#name").val(data.sname);
					$("#phone").val(data.phone);
					$("#qq").val(data.qq);
					$("#major").val(data.major);
					$("#school_year").val(data.school_year);
					$("#chinese_address").val(data.chinese_address);
					$("#english_address").val(data.english_address);
					$("#introduce").val(data.introduce);
					if(data.sex==="男"){
						$("#male").attr("checked", "true");
					}else{
						$("#female").attr("checked", "true");
					}

					if(data.graduation==="是"){
						$("#gYes").attr("checked", "true");
					}else{
						$("#gNo").attr("checked", "true");
					}

					if(data.employed==="是"){
						$("#eYes").attr("checked", "true");
					}else{
						$("#eNo").attr("checked", "true");
					}
				}else{
					$("#id").val(data.sid);
					$("#name").val(data.sname);
					$("#introduce").val(data.introduce);
					if(data.sex==="男"){
						$("#male").attr("checked", "true");
					}else{
						$("#female").attr("checked", "true");
					}
					
					$("#phone").removeAttr("name");
					$("#qq").removeAttr("name");
					$("#major").removeAttr("name");
					$("#school_year").removeAttr("name");
					$("#chinese_address").removeAttr("name");
					$("#english_address").removeAttr("name");
					$("#eYes").removeAttr("name");
					$("#eNo").removeAttr("name");
					$("#eYes").removeAttr("name");
					$("#eNo").removeAttr("name");
					$(".sFalg").hide();
				}
				
 			}
        });
$("#save").click(function(){
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
