(function(){
	/***
	 *脚部跳转 
	 */
	$('footer div').on('click',function(){
		if($(this).hasClass('focus')){
			return false;
		}
		window.location.href=$(this).attr('title');
	});
	/**
	 * 判断是否登录
	 * */
	$('.go_next').on('click',function(){		
		is_login($(this).attr('ref'));
	});
	
	function is_login(ref){
		$.ajax({
			type:"post",
			url:'/index/login/check_login',
			async:true,
			dataType:'json',
			data:{},
			success:function(resp){
				if(resp.code==200){
					//登录状态
					window.location.href=ref;
				}else if(resp.code==201){
					//不是登录状态
					window.location.href='/index/login/index'
				}
			}
		});
	}
	
	
	
})();
