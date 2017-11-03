function popmsg(str,fn,arr){
	POPaMsg.creatDiv(str,fn,arr);
}
var POPaMsg = {
	flag:true,
	init:function(fn){
		this.offDIV();
		$('.g_pop').show();
		$('.pop_cover').click(function(){
			if(fn){
				var g_flag =fn(0);
				if(g_flag=='stop'){
					return false;
				}
			}
			$('.g_pop').remove();
			$(document).off('touchmove');
		})
		$('.g_pop_bottom_l').click(function(){
			if(fn){
				var g_flag =fn(2);
				if(g_flag=='stop'){
					return false;
				}
			}
			$('.g_pop').remove();
			$(document).off('touchmove');
			
		})
		
		$('.g_pop_bottom_r').click(function(){
			if(fn){
				var g_flag =fn(1);
				if(g_flag=='stop'){
					return false;
				}
			}
			$('.g_pop').remove();
			$(document).off('touchmove');
			
		})
		$(document).on('touchmove',function(){
			return false
		})
	},
	offDIV:function(){
		$('.pop_cover').off();
		$('.g_pop_bottom_l').off();
		$('.g_pop_bottom_r').off();
	},
	creatDiv:function(str,fn,arr){
		var that =this;
		var html1 = '';
		if(arr.length==1){
			html1='<div class="g_pop_bottom_r">'+arr[0]+'</div>';
		}else{
			var arr1 = arr?arr:['取消','好'];
			var str1 = arr1[0]?arr1[0]:'取消' ;
			var str2 = arr1[1]?arr1[1]:'好';
			html1 = '<div class="g_pop_bottom_l">'+str1+'</div><div class="g_pop_bottom_r">'+str2+'</div>';
		}
		
		var class1 = 'g_pop1';
		var Font = document.documentElement.style.fontSize?document.documentElement.style.fontSize:1;
		if(Font==1){
			class1 = 'g_pop2';
		}
		var htmlstr = '<div class="g_pop '+class1+'"><div class="pop_cover"></div><div class="g_pop_content"><div class="g_pop_content_c"><div>'+
			str+'</div></div><div class="g_pop_bottom">'+html1+'</div></div></div>';
			$('body').append(htmlstr);
			setTimeout(function(){
				that.init(fn);
			},20)
			
	},
}