(function(){
	$('.login_btn').on('click',function(){
		var username =$('input[name=user]').val();
		username =$.trim(username);
		if(!/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/.test(username)){
			$('.user').addClass('focus');
			tips('输入账号不符合规则');
			return false;
		};
		var pass =$('input[name=pass]').val();
		pass =$.trim(pass);
		if(pass.length!=6){
			$('.pass').addClass('focus');
			tips('密码长度为六位');
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

