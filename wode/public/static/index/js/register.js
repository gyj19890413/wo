(function(){
			var Itimer='';
			
			$('.code_click').click(function(){
				if($(this).hasClass('focus')){
					tips('请不要频繁点击');
					return false;
				};
				var phone = $('input[name=user]').val();
				if(!/^13[\d]{9}$|^14[0-9]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0-9]{1}\d{8}$|^18[\d]{9}$/.test(phone)){
					
					tips('输入手机号不符合规则');
					return false;
				};
				$('#code').val('');
				imgChange();
				$('.code_box').show();
				
			});
			$('.cover').click(function(){
				$('.code_box').hide();
				return false;
			});
			
			$('.code_btn').click(function(){
				$('.code_box').hide();
				var code= $('#code').val();
				if(code.length!=4){
					tips('图片验证码错误');
					return false;
				};				
				
				sendSms({'phone':$('input[name=user]').val(),'code':code});
				
			});
			
			function countdown(){										
				clearInterval(Itimer);
				var countnum = 60;
				$('.code_click').html(countnum);
				Itimer= setInterval(function(){
					countnum--;
					if(countnum==-1){
						clearInterval(Itimer);
						countnum='获取验证码';
						$('.code_click').removeClass('focus');
					};					
					$('.code_click').html(countnum);					
				},1000);
			};
			$('.codeimg img').click(function(){
				imgChange();
			});
			function imgChange(){
				var src = $('.codeimg img').attr('src');
				$('.codeimg img').attr('src',src);
			};
			function sendSms (param){
				$('.code_click').addClass('focus');
				$.ajax({
					type:"post",
					url:imgURL,
					async:true,
					dataType:'json',
					data:param,
					success:function(resp){
						if(resp.code==200){
							countdown();
						}else{
							$('.code_click').removeClass('focus');
							tips(resp.msg);	
						}
					}
				})
			}
			
			
			$('.login_btn').on('click',function(){
				var username =$('input[name=user]').val();
				username =$.trim(username);
				if(!/^13[\d]{9}$|^14[0-9]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0-9]{1}\d{8}$|^18[\d]{9}$/.test(username)){
				
					tips('输入手机号不符合规则');
					return false;
				};
				var pass =$('input[name=pass]').val();
				pass =$.trim(pass);
				if(pass.length!=6){
				
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
					
				},3000);
			}
		})();

