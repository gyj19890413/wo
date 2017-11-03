(function(){
	
	$('._btn').on('click',function(){
	if($(this).hasClass('focus')){
		
		
		var content = $("#content").val();
		
		
		$.ajax({
			type:"post",
			url:feedbackurl,
			async:true,
			dataType:'json',
			data:{desc:content,qq:$('input[name=qq]').val()},
			success:function(data){
				if(data['ret']=='200'){
					$('.g_pop1').show();
				}else{
					alert(data['msg']);
					return false;
				}
			}
		});
		
	};
});


$('.pop_cover').on('click',function(){
	window.history.go(-1);
});

$('.g_pop_bottom_r').on('click',function(){
	window.history.go(-1);
});

$('textarea').on('input propertychange',function(){
		var num = $(this).val();
		if(num==''){
			$('._btn').removeClass('focus');
		}else{
			$('._btn').addClass('focus');
		}
});
})();
