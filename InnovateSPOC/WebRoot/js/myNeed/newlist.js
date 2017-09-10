$(document).on("click","#delete",function(){
	var delnew = $(this).val();
	bootbox.confirm({
		message: "确定删除？",
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
					$.ajax({
						url : 'delnews.do',
						type : 'post',
						dataType : 'json',
						data : {
							"news" : delnew
						},
						success : function(msg) {
							bootbox.alert({
								message : msg.str,
								size : 'small'
							});
							location.reload();
						}
					});//end

			}
		}
	});
})