(function(){
	$('.login_btn').on('click',function(){
		var username =$('input[name=user]').val();
		username =$.trim(username);
		if(!/^13[\d]{9}$|^14[0-9]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0-9]{1}\d{8}$|^18[\d]{9}$/.test(username)){
			$('.user').addClass('focus');
			tips('输入手机号不符合规则');
			return false;
		};
		var pass =$('input[name=pass]').val();
		pass =$.trim(pass);
		if(pass.length!=6){
			$('.pass').addClass('focus');
			tips('验证码错误');
			return false;
		};
		
			sub_user({username:username,pass:pass});
	});
	
	
	function sub_user(param){
		$.ajax({
			type:"post",
			url:URL,
			async:true,
			dataType:'json',
			data:param,
			success:function(resp){
				console.log(resp);
				if(resp.code==200){
					if(resp.url){
						window.location.href=resp.url;
					}else{
						window.history.go(-1);
					}
				}else if(resp.code==201){
					tips(resp.msg);
				}
				
			}
		});
	}
	var timer;
	function tips(str){
		clearTimeout(timer);
		$('.errortips span').html(str);
		timer=setTimeout(function(){
			$('.errortips span').html('');
			$('label').removeClass('focus');
		},3000);
	}
})();

