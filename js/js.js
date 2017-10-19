window.onload =function(){

	window.addEventListener('resize',setRize,false);
	function setRize (){
		// 用户改变浏览器大小    自适应
		document.documentElement.style.fontSize=document.documentElement.clientWidth/6.4+'px';
	};
	setRize();
}
