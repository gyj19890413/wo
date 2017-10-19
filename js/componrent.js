
var Tool = {
	constant:{
		temp:'',
		data:'',
		formerprice:'',
		imgsUrl:'',
		goodsBenUrl:'',
	},
	getstr:function(res){
		var _index = res.indexOf('(');
		var _str = res.substring(_index+1,res.length-1);
		return(JSON.parse(_str))
	},
	getLocal:function(){
		var _name=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
		var flg;
		if(_name==""||_name==null){
			flg=false;
		}else if(typeof(_name)=="undefined"){
			flg=false;
		}else{	
			$.ajax({
				type:"post",
				url:"http://datainfo.duapp.com/shopdata/getuser.php",
				async:false,
				data:{'userID':_name},
				success:function(resp){
					if(resp=='0'){
						flg=false;
					}else{
						flg=true;
					}
				}
			});
		}
		    return flg;
	},
	getLoginRegister:function(str){
		var _node = document.getElementById('contant');	
		var backbe = document.getElementsByClassName('backbe')[0];
		var tool = document.getElementsByClassName('tool')[0];
		var font = document.getElementsByClassName('font')[0];				
			$('.tool').children().remove();
			$('.font').children().remove();
		if(str){
			ReactDOM.render(<Myshow_Login_logo/>,font);
			ReactDOM.render(<Back/>,backbe);
			ReactDOM.render(<Register_logo/>,tool);	
			ReactDOM.render(<Myshow_Login/>,_node);
		}else{
			ReactDOM.render(<Myshow_register_logo/>,font);
			ReactDOM.render(<Back/>,backbe);
			ReactDOM.render(<Login_logo/>,tool);	
			ReactDOM.render(<Myshow_register/>,_node);
		}	
	},
	Submitgood:function(Json,asyn,fn){
		$.ajax({
			type:"get",
			url:"http://datainfo.duapp.com/shopdata/updatecar.php",
			data:Json,
			async:asyn,
			success:function(resp){
				if(fn){
					fn(resp);
				}
			}
		})
	},
	getShopcar:function(_this,_node){
		var getIDgood = {};
		var isgetIDgood ;
		getIDgood.userID=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
		if(getIDgood.userID){
			$.ajax({
				type:"get",
				url:"http://datainfo.duapp.com/shopdata/getCar.php",
				async:false,
				data:getIDgood,
				success:function(resp){
					isgetIDgood =_this.getstr(resp);
					console.log(isgetIDgood);
					if(isgetIDgood==0){			
						ReactDOM.render(<TypeShopcar/>,_node);
					}else{
						ReactDOM.render(<HasShopcartitle name={isgetIDgood}/>,_node)
					}
				}
			});
		}else{
			ReactDOM.render(<TypeShopcar/>,_node);
		}	
	},
	goIndex:function(_line,_node,font){
		_line.style.left="0";					
		$('.backbe').children().remove();				
		$('.tool').children().remove();
		$(_node).children().remove();
		ReactDOM.render(<ContantAll/>,_node);
		ReactDOM.render(<Font/>,font);
	},
	goList:function(_line,_node,backbe,font){
		_line.style.left="20%";
		$('.tool').children().remove();
		$(_node).children().remove();					
		ReactDOM.render(<ContantList/>,_node);
		ReactDOM.render(<Back/>,backbe)
		ReactDOM.render(<Font/>,font);
	},
	goShopcar:function(_this,_line,_node,tool,backbe,font){
		_line.style.left="40%";	
		$(_node).children().remove();	
		ReactDOM.render(<Header_right1/>,tool)
		ReactDOM.render(<Back/>,backbe);
		ReactDOM.render(<ShopCarLogo/>,font);
		this.getShopcar(_this,_node);
	},
	goMyshow:function(_line,_node,font,backbe){
		_line.style.left="60%";
		$('.tool').children().remove();
		$('.font').children().remove();
		$(_node).children().remove();					
		ReactDOM.render(<Myshow_logo/>,font);
		ReactDOM.render(<Back/>,backbe);
		ReactDOM.render(<ContantMyshow/>,_node);
	},
	goMore:function(_line,_node,font){
		_line.style.left="80%";
		$(_node).children().remove();					
		$('.tool').children().remove();
		$('.font').children().remove();
		ReactDOM.render(<More_logo/>,font);
		ReactDOM.render(<ContantMore/>,_node);
	},
	SearchToHtml:function(str){
		var _this=this;
		
		var Which_one = document.getElementById('typelist')||document.getElementById('Typelist_list_first');
		
		console.log(str)
		var _url = "http://datainfo.duapp.com/shopdata/selectGoodes.php?selectText="+str;
		$.get(_url,function(resp){
			var arr = _this.getstr(resp);
			if(arr=='0'){
				alert('暂无该商品');
			}else{
				var Array = [];
				arr.map(function(item,index){
					Array.push(<List name={item}/>)
				})
				console.log(Array)
				
				$(Which_one).children().remove();
				ReactDOM.render(<div>{Array}<div className="listbottom"></div></div>,Which_one);
			}				
		});
		
	},
	getDetailedInf:function(str){
		var _node = document.getElementById('contant');	
		var backbe = document.getElementsByClassName('backbe')[0];
		var tool = document.getElementsByClassName('tool')[0];
		var font = document.getElementsByClassName('font')[0];			
		var _footer = document.getElementById('index_footer');
		var _this =this ;
		$.ajax({
			type:"get",
			url:"http://datainfo.duapp.com/shopdata/getGoods.php",
			async:false,
			data:{goodsID:str},
			success:function(resp){
				var arr =_this.getstr(resp);
				// 由打折价  算出 原始价格
				var num1 = arr[0].price;
				var num2= arr[0].discount;
				var num;
				if(num2==0){
					num = num1;
				}else{
					num =Math.floor((num1/num2)*10)
				}
				num = '￥'+num;

				var img1 = JSON.parse(arr[0].goodsBenUrl)
				var img2 = JSON.parse(arr[0].imgsUrl)
	
				_this.constant.data=arr[0];
				_this.constant.formerprice=num;
				_this.constant.goodsBenUrl= img1;
				_this.constant.imgsUrl= img2;
			}
		});
		console.log(str)
		
		$(_footer).children().remove();
		$(_node).children().remove();		
		$(tool).children().remove();
		ReactDOM.render(<Share_logo/>,tool)
		ReactDOM.render(<DetailedInf/>,_node);
		ReactDOM.render(<Myshow_list/>,font);
		ReactDOM.render(<Back/>,backbe);
		ReactDOM.render(<DetailedInf_footer/>,_footer)
	},
	DetailedInf_goods:function(){
		
	},
	countPrice:function(_this){
		
	}
}

/**LayoutComponent  begin**/
var LayoutComponent = React.createClass({
	
	render:function(){
		
		return(
			<div>
				<div id="container">
					<header>
						<HeaderComponent />
					</header>
					<div className="listtop"></div>
					<div id="contant">
						<ContantAll/>
					</div>
				</div>
				<footer id="index_footer">
					<Footer/>
				</footer>
			</div>
		)
	},
})
/**LayoutComponent  end**/
//************************************************************************************
//  内容 div 
var ContantAll = React.createClass({
	render:function(){
		return(
			<div>
				<SearchBox/>
				<ContantIndex/>	
			</div>
		)
	}
})

var SearchBox = React.createClass({
	render:function(){
		return(
			<div id="searchBox" className="listtop">
					<section>
						<Search/>
					</section>						
				</div>
		)
	}
})
//首页内容DIV
var ContantIndex = React.createClass({
	render:function(){
		return(
			<div id="typelist">
				<section>
					<Children2/>
				</section>
				<section>
					<Children1/>				
				</section>
				<div className="listbottom"></div>	
			</div>	
		)
	}
})

//  列表页  内容 div 
var ContantList=React.createClass({
	render:function(){
		return(
			<div>
				<SearchBox/>
				<Typelist/>
			</div>
		)
	}
})
var Typelist = React.createClass({
	getDefaultProps:function(){
		return{
			_url:"http://datainfo.duapp.com/shopdata/getclass.php"
		}
	},
	getInitialState:function(){
		return{
			Typelist_data:[]
		}
	},
	componentWillMount:function(){
		var _this = this;
		$.ajax({
			type:"get",
			url:_this.props._url,
			dataType:"json",
			async:false,
			success:function(res){
				_this.setState({"Typelist_data":res})
			}
		})
	},
	render:function(){
		var  arr1 =[];
		this.state.Typelist_data.map(function(item,index){
			
			arr1.push(<LiComponent name={item}/>);
			
		})
		return(
			<div id="Typelist_list_first">
				<div id="Typelist_list">
					<div>
						全部
					</div>
					<ul>
						{arr1}
					</ul>
					<div className="listbottom"></div>	
				</div>
			</div>
		)
	},
	componentDidMount:function(){
		var flag=true;
		var oDiv = $('#Typelist_list div:nth-of-type(1)');
		var oUl = $('#Typelist_list ul');
		oDiv.click(function(){
			if(flag){
				oUl.hide();
				flag=false;
			}else{
				oUl.show();
				flag=true;
			}
			oDiv.toggleClass("clickDiv");
		})
	}
})
var LiComponent = React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<li onClick={this.fn}>
				{this.props.name.className}
			</li>
		)
	},
	fn:function(event){
		var str = $(event.target).html();
		this.SearchToHtml(str)
	}
})
//  购物车  内容 div 
var TypeShopcar =React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div id="emptyCar">
				<div>您的购物车空空~</div>
				<div className="box1">
					<img src="img/no.png"/>
				</div>
				<div className="box2">
					<img src="img/go.png" onClick={this.go_shop_good}/>
				</div>
			</div>
		)
	},
	go_shop_good:function(){
		var _line = document.getElementsByClassName('line')[0];
		var _node = document.getElementById('contant');	
		var font = document.getElementsByClassName('font')[0];
		this.goIndex(_line,_node,font);
	}
})
//购物车添加状态

var HasShopcartitle = React.createClass({
	mixins:[Tool],
	render:function(){
		var num =0;
		var price =0;
		var arr = this.props.name;
		this.constant.temp = arr;
		console.log(arr)
		for(var i=0;i<arr.length;i++){
			num += (arr[i].number-0);
			price+=arr[i].number*arr[i].price
		}
		var Array=[];
		arr.map(function(item,index){
			Array.push(<HasShopcarMain name={item}/>)
		})
		return(
			<div>
				<div className="HasShopcarTitle">
					商品数量:<span className="HasShopcarTitleNum">{num}</span>
					应付总额(不含运费):
					<span className="HasShopcarTitleprice">
						<span>￥</span>
						<span>{price}</span>
					</span>
				</div>
				{Array}
				<div className="listbottom"></div>	
			</div>
		)
	},
})

var HasShopcarMain =React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div className="HasShopcarMain_div">
				<div className="HasShopcarMain_divone">
					<img src={this.props.name.goodsListImg} onClick={this.fn}/>
				</div>
				<div className="HasShopcarMain_divtwo">
					<div className="HasShopcarMain_divGoodsname">{this.props.name.goodsName}</div>
					<div className="HasShopcarMain_divprice">单价:
						<span className="_HasShopcarMain_divprice">￥{this.props.name.price}</span>
					</div>
					<div className="HasShopcarMain_divnum">
						<span className="sp1">数量:</span>
						<img className="img1" onClick={this.reducefn} src="img/reduce.png"/>
						<input className="inp1" type='tel' value={this.props.name.number} min="1" />
						<img className="img2" onClick={this.addfn} src="img/add.png"/>
					</div>
				</div>
				<img className="HasShopcardustbin" onClick={this.Remove} src="img/dustbin.png"/>
			</div>
		)
	},
	fn:function(){
		this.getDetailedInf(this.props.name.goodsID);
	},
	reducefn:function(){
		
		var TitleNumDiv=$('.HasShopcarTitleNum');
		var priceDiv = $('.HasShopcarTitleprice').children()[1];
		var _price = $(priceDiv).html(); 
		var _num = TitleNumDiv.html();
		
		var el = $(event.target).next();
		var num = el.val();
		console.log(num)
		num--;
		if(num==0){
			num=1
		}else{
			_price = _price*10000- this.props.name.price*10000;
			console.log(_price)
			_price=_price/10000;
			console.log(_price)
			$(priceDiv).html(_price);
			_num = _num-1;
			TitleNumDiv.html(_num);
		}
		el.val(num);		
		var Json={};
		Json.userID=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
		Json.goodsID = this.props.name.goodsID;
		Json.number = num;
		this.Submitgood(Json,false)
	},
	addfn:function(){
		
		var TitleNumDiv=$('.HasShopcarTitleNum');
		var priceDiv = $('.HasShopcarTitleprice').children()[1];
		var _price = $(priceDiv).html(); 
		var _num = TitleNumDiv.html();
		
		var el = $(event.target).prev();
		var num = el.val();
		num++;
		console.log(num)
		
		_price = (_price-0) + (this.props.name.price-0);
		$(priceDiv).html(_price);
		_num = _num-0+1;
		TitleNumDiv.html(_num);
		el.val(num);
		
		var Json={};
		Json.userID=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
		Json.goodsID = this.props.name.goodsID;
		Json.number = num;
		this.Submitgood(Json,false)
	},
	Remove:function(event){
		var _node = document.getElementById('contant');
		var Json = {};
		Json.userID=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
		Json.goodsID = this.props.name.goodsID;
		Json.number = 0;
		var sel =event.target;
		var _this = this ;
		_this.Submitgood(Json,true,function(resp){
			if(resp==0){
				alert('删除失败')
			}else if(resp==1){
				_this.getShopcar(_this,_node);
			}
		})
	},
	
})

// 我的秀 内容

var ContantMyshow =React.createClass({
	mixins:[Tool],
	getInitialState:function(){
		return{
			flag:true
		}
	},
	render:function(){
		if(this.state.flag){
			var name=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
			var ContantMyshow_children = ContantMyshow_children1;
		}else{
			name = "未知"
			var ContantMyshow_children = ContantMyshow_children2;
		}
		return(
			<div>
				<div id="Myshow1_top">
					<img className="Myshow1_top_logo" src="img/head.png"/>
					<div className="imgMsg">
						<div className="Myshow1_top_msg_box">
							<span>昵称：</span>
							<span className="Myshow1_top_name">{name}</span>
						</div>
						<ContantMyshow_children/>
					</div>
				</div>
				<ul className="commonComponent" onClick={this.fn}>
					<li className="li1">我的订单</li>
					<li className="li2">我的优惠券</li>
					<li className="li3">浏览记录</li>
					<li className="li4">我的收藏</li>
				</ul>				
			</div>
		)
	},
	fn:function(event){
		if(this.state.flag){
			if(event.target.tagName=="LI"){
				var _target = event.target;
				console.log(_target.className);
				if(_target.className=="li1"){
					
				}else if(_target.className=="li2"){
					
				}else if(_target.className=="li3"){
					
				}else if(_target.className=="li4"){
					
				}
			}
		}
		
	},
	componentWillMount:function(){
		this.setState({'flag':this.getLocal()})
	},
	componentDidMount:function(){
		var _this =this;
		$('.Myshow1_top_img1').click(function(){
			_this.getLoginRegister(true);
		});
		$('.Myshow1_top_img2').click(function(){
			_this.getLoginRegister();
		})
	},
	
})
		//登陆状态   我的秀 里面 我的订单选项
var Myshow_order = React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div>
				{Array}
			</div>
		)
	},
	componentWillMount:function(){
		var Array=[];
		this.constant.temp.map(function(item,index){
			Array.push(<Myshow_order_children name="item"/>)
		})
	}
})
var Myshow_order_children = React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div>
				<div className="HasShopcarMain_div">
				<div className="HasShopcarMain_divone">
					<img src={this.props.name.goodsListImg} onClick={this.fn}/>
				</div>
				<div className="HasShopcarMain_divtwo">
					<div className="HasShopcarMain_divGoodsname">{this.props.name.goodsName}</div>
					<div className="HasShopcarMain_divprice">单价:
						<span className="_HasShopcarMain_divprice">￥{this.props.name.price}</span>
					</div>
					<div className="HasShopcarMain_divnum">
						<span className="sp1">数量:</span>
						<span>{this.props.name.number}</span>
						<img className="orderImg" src="img/order.png"/>
					</div>
				</div>
				
			</div>
			</div>
		)
	},
})

			//登陆状态   我的秀 里面 我的优惠券选项
var Myshow_coupon = React.createClass({
	render:function(){
		return(
			<div></div>
		)
	},
})

			//登陆状态   我的秀 里面 浏览记录选项
var Myshow_stroge = React.createClass({
	render:function(){
		return(
			<div></div>
		)
	},
})
			//登陆状态   我的秀 里面 我的收藏选项
var Myshow_collect = React.createClass({
	render:function(){
		return(
			<div></div>
		)
	},
})
			// 登陆状态  去除登陆 注册  图标
var ContantMyshow_children1 = React.createClass({
	render:function(){
		return(
			<div></div>
		)
	}
})
			//非登录状态  登陆 与注册  图标
var ContantMyshow_children2 = React.createClass({
	render:function(){
		return(
			<div>
				<img className="Myshow1_top_img1" src="img/login.png"/>
				<img className="Myshow1_top_img2" src="img/register.png"/>
			</div>
		)
	}
})

// 更多内容
var ContantMore =React.createClass({
	render:function(){
		return(
			<div>
				<ul className="commonComponent">
					<li>常见问题</li>
					<li>系统设置</li>
					<li>软件更新</li>
					<li>扫描二维码</li>
				</ul>	
				<ul className="commonComponent">
					<li>我要提意见</li>
					<li>关于</li>
				</ul>
				<img className="Morequit" src="img/quit.png"/>
			</div>
		)
	}
})



//*****************************************************************************************
//首页  商品列表
var Children1 = React.createClass({
	getDefaultProps:function(){
		return{_url:"http://datainfo.duapp.com/shopdata/getGoods.php"}
	},
	getInitialState:function(){
		return{data:[]}
	},
	componentWillMount:function(){
		var _this = this;
		$.ajax({
			type:"get",
			url:_this.props._url,
			async:false,
			dataType:"jsonp",
			success:function(callback){
				_this.setState({"data":callback});
			}
		});
	},
	render:function(){
		var Array = [];
		this.state.data.map(function(item,index){
			Array.push(<List name={item}/>)
		})
		return(
			<div>{Array}</div>
		)
	}
})
					//   商品子组件
var List = React.createClass({
	mixins:[Tool],
	sivegood:function(ev){
		if(this.getLocal()){
			var _name=window.localStorage.getItem("userName")||window.sessionStorage.getItem("userName");
			var Json = {};
			Json.goodsID=ev.target.getAttribute("title");
			Json.number = 1;
			Json.userID = _name;
			console.log(Json.goodsID);
			
			$.ajax({
				type:'post',
				url:'http://datainfo.duapp.com/shopdata/updatecar.php',
				data:Json,
				async:true,
				success:function(resp){
					if(resp==1){
						alert('添加成功')
					}else if(resp==0){
						alert('添加失败')
					}
				}
			})
		}else{
			alert('请先登录')
		}
		
	},
	render:function(){
		return(
			<div >
				<div className="list-item">
					<div className="list-item-img"> 
						<img className="item-img" onClick={this.fn} src={this.props.name.goodsListImg}/>
					</div>
					<div className="list-item-msg">
						<h4>{this.props.name.goodsName}</h4>
						
						<div className="list-item-msg-left">
							<span className="price">￥{this.props.name.price}</span>
							<span className="oldprice">￥28880</span>
							<div>
								<span>{this.props.name.discount}</span>折
							</div>
						</div>
						<div className="list-item-msg-right">
							<a href="javascript:;"  onClick={this.sivegood}><img title={this.props.name.goodsID} src="img/shopcar.png"/></a>
						</div>
					</div>
				</div>
			</div>
		)
	},
	fn:function(){	//   点击图片进入列表详情页	
		this.getDetailedInf(this.props.name.goodsID);
	}
});
	

//	 点击图片 进入详情页
var DetailedInf =React.createClass({
	mixins:[Tool],
	render:function(){
		console.log(this.constant.data)
		return(
			<div>
				<div className="DetailedInfTime">
					距离结束时间：04天01秒15分47.2秒
				</div>
				<div className="DetailedInfImg">
					<div className="_imgbox1"><img src={this.constant.data.goodsListImg}/></div>
					<div className="_imgbox2">
						<span className="sp1">￥{this.constant.data.price}</span>
						<span className="sp2">{this.constant.data.goodsName}</span>
					</div>
				</div>
				<div className="DetailedInfmsg">
					<span className="sp1">市场价:</span>
					<span className="sp2">{this.constant.formerprice}</span>
					<span className="sp3">{this.constant.data.discount}折</span>
					<span className="sp4">{this.constant.data.buynumber}人购买</span>
				</div>
			</div>
			
		)
	}
})

// 详情 页面   详情 页面
var DetailedInformation = React.createClass({
	mixins:[Tool],
	render:function(){
		var arr = this.constant.data.detail.split('。')
		var oArray=[];
		arr.map(function(item,index){
			oArray.push(<div>{item}</div>)
		})
		return(
			<div>
				<div className="detailedInformation_img"><img src={this.constant.goodsBenUrl[0]}/></div>
				<div className="detailedInformation_msg">
					{oArray}
				</div>
			</div>
		)
	}
})


//详情页面   实拍
var DetailedPhoto = React.createClass({
	mixins:[Tool],
	render:function(){
		var oArray = [];
		this.constant.imgsUrl.map(function(item,index){
			oArray.push(<DetailedPhoto_list name={item}/>);
		})
		return(
			<div>
				<div className="swiper-container">
					<div className="swiper-wrapper">
						{oArray}						
					</div>
					 <div className="swiper-pagination"></div>
				</div>
			</div>
		)
	},
	componentDidMount:function(){
		var mySwiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
		})
	}
})
var DetailedPhoto_list= React.createClass({
	render:function(){
		return(
			<div className="swiper-slide DetailedPhoto_list_img">
				<div className="slide">
					<img src={this.props.name}/>
				</div>
			</div>
		)
	}
})

// 详情 页面 Footer
var DetailedInf_footer = React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div className="inf_footer">
				<div className="inf_footer_main" onClick={this.fn}>
					<div className="inf_footer_introduce">介绍</div>
					<div className="inf_footer_inf">详情</div>
					<div className="inf_footer_realityPhoto">实拍</div>
				</div>
				<div className="DetailedInf_footer_line"></div>
			</div>
		)
	},
	fn:function(event){
		var sel = event.target;
		var oClass = sel.className;
		var oLine=document.getElementsByClassName('DetailedInf_footer_line')[0];
		var _node = document.getElementById('contant');
		
		switch(oClass){
			case 'inf_footer_introduce':
				oLine.style.left= 0;
				$(_node).children().remove()
				ReactDOM.render(<DetailedInf/>,_node);
			break;
			case 'inf_footer_inf':
				oLine.style.left= '33.3%';
				$(_node).children().remove()
				ReactDOM.render(<DetailedInformation/>,_node);
			break;
			case 'inf_footer_realityPhoto':
				oLine.style.left= '66.6%';
				$(_node).children().remove()
				ReactDOM.render(<DetailedPhoto/>,_node);
			break;
		}
		
		
	}
})

//首页  商品列表end 
//************************************************************************************
//首页 Banner
var Children2 = React.createClass({
	getDefaultProps:function(){
		return{_url:"http://datainfo.duapp.com/shopdata/getBanner.php"}
	},
	getInitialState:function(){
		return{data:[]}
	},
	componentWillMount:function(){
		var _this = this;
		$.ajax({
			type:"get",
			url:_this.props._url,
			async:false,
			dataType:"jsonp",
			success:function(callback){
				_this.setState({"data":callback});
				console.log(_this.state)
			},
		
		});
	},
	render:function(){
		var Array = [];
		this.state.data.map(function(item,index){
			Array.push(<Banner name={item}/>)
		})
		return(
			<div className="indexbanner">
				<div className="swiper-container">
					<div className="swiper-wrapper">
						{Array}
					</div>
					<div className="swiper-pagination"></div>
				</div>
			</div>
		)
	},
	componentDidUpdate:function(){
		var mySwiper = new Swiper('.swiper-container', {
				autoplay: 2000,//可选选项，自动滑动
				autoplayDisableOnInteraction : false,
				loop : true,
				pagination : '.swiper-pagination',
		})
	}
	
})
//	商品  Banner   子组件
var Banner = React.createClass({
	
	render:function(){ 
		var _img = JSON.parse(this.props.name.goodsBenUrl)[0];
		return(			
			<div className="swiper-slide">
				<img className="slide-img" src={_img}/>
			</div>				
		)
	},
	
})

//首页 Banner end
//**************************************************************************************
/**搜索  begin**/
var Search = React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div className="search">
				<div className="search_box">
					<span></span>
					<input type="text" onBlur={this.fn} className="searchgood" placeholder="请输入搜索内容"/>
				</div>
			</div>
		)
	},
	fn:function(){
		var inp = $('.searchgood');
		var str = inp.val();
		console.log(str)
		this.SearchToHtml(inp,str)
	}
});

/**搜索 end**/

//*****************************************************************************************
/**头部框架               begin**/
var HeaderComponent = React.createClass({
	render:function(){
		return(
			<div className="header">
				<div className="backbe"></div>
				<div className="font"><Font/></div>
				<div className="tool"></div>
			</div>
		)
	}
})

//    返回头部标识
var Back = React.createClass({
	render:function(){
		return(
			<div className="back"></div>
		)
	}
})
//   首页 头部logo标识

var Font = React.createClass({
	render:function(){
		return(
			<img src="img/header_img.jpg"/>
		)
	}
})
//购物车  头部 logo 标识
var ShopCarLogo = React.createClass({
	render:function(){
		return(
			<span>购物车</span>
		)
	}
})

//  结算  标识

var Header_right1 =React.createClass({
	render:function(){
		return(
			<img src="img/balan.png"/>
		)
	}
})

// 分享 标识
var Share_logo = React.createClass({
	render:function(){
		return(
			<img src="img/share.png"/>
		)
		
	}
})
//登陆 
var Login_logo =React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<img onClick={this.Change} src="img/logina.png"/>			
		)
	},
	Change:function(){
		this.getLoginRegister(1);
	}
})
// 注册
var Register_logo =React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<img onClick={this.Change} src="img/reg.png"/>
		)
	},
	Change:function(){
		this.getLoginRegister();
	}
})
//我的秀  
var Myshow_logo =React.createClass({
	render:function(){
		return(
			<span>我的秀</span>
		)
	}
})
//我的秀  登陆标识
var Myshow_Login_logo = React.createClass({
	render:function(){
		return(
			<span>登陆</span>
		)
	}
})
//我的秀  注册标识
var Myshow_register_logo = React.createClass({
	render:function(){
		return(
			<span>注册</span>
		)
	}
})
//我的订单
var Myshow_list = React.createClass({
	render:function(){
		return(
			<span>我的订单</span>
		)
	}
})


//更多
var More_logo =React.createClass({
	render:function(){
		return(
			<span>更多</span>
		)
	}
})

//****************************************************************************************
// 我的秀 内部内容
	// 登陆内容
	var Myshow_Login = React.createClass({
		mixins:[Tool],
		render:function(){
			return(
				<div>
					<input name="username" className="Myshow_Login_inp1" type="text" placeholder="账号"/>
					<input	name="password" className="Myshow_Login_inp1" type="text" placeholder="密码"/>
					<div className="Myshow_Login_memery">
						<label>
							<input type="checkbox" />
							记住密码
						</label>
						<a href="javascript:;">忘记密码？</a>
					</div>
					<img className="Myshow_Login_img" src="img/log.png"/>
				</div>
			)
		},
		componentDidMount:function(){
			var _this =this;
			var inps1 = $('input[name="username"]');
			var inps2 = $('input[name="password"]');

			$('.Myshow_Login_img').click(function(){
				var Json = {};
				Json.userID=inps1.val();
				Json.password=inps2.val();
				Json.status = 'login';
				$.ajax({
					type:"get",
					url:"http://datainfo.duapp.com/shopdata/userinfo.php",
					async:true,
					data:Json,
					success:function(resp){
						if(resp=="0"){
							alert("用户名不存在")
						}else if(resp=="2"){
							alert("用户名密码不符")
						}else{
//							console.log($('input[type=checkbox]').prop('checked'))
							
							if($('input[type=checkbox]').prop('checked')==true){
								window.localStorage.setItem('userName',Json.userID)
								window.localStorage.setItem('password',Json.password)
							}else{
								window.sessionStorage.setItem('userName',Json.userID)

							}
								var _line = document.getElementsByClassName('line')[0];
								var _node = document.getElementById('contant');	
								var backbe = document.getElementsByClassName('backbe')[0];
								var font = document.getElementsByClassName('font')[0];
								_this.goMyshow(_line,_node,font,backbe);
								
						}
					}
				});
				
			})
			
		}
	})

	//注册页面	Myshow_register
var Myshow_register = React.createClass({
	render:function(){
		return(
			<div>
				<input name="username" className="Myshow_Login_inp1" type="text" placeholder="账号"/>
				<input name="password" className="Myshow_Login_inp1" type="text" placeholder="密码"/>
				<input name="passWord" className="Myshow_Login_inp1" type="text" placeholder="重复密码"/>
				<img className="Myshow_Login_img" src="img/regs.png"/>
			</div>
		)
	},
	componentDidMount:function(){
		var flag ;
		var inps1 = $('input[name="username"]');
		var inps2 = $('input[name="password"]');
		var inps3 = $('input[name="passWord"]')
		inps1.change(function(){
			var str = inps1.val();
			if(str.length>8){
				flag=false;
				if(/^[a-zA-Z].{7}.*$/.test(str)){
					flag=true;
				}else{
					flag=false;
				}
			}
		})
		inps2.change(function(){
			
		})
		inps3.change(function(){
			
		})
		$('.Myshow_Login_img').click(function(){
		
			var Json = {};
			Json.userID = $('input[name="username"]').val();
			Json.password = $('input[name="password"]').val();
			Json.status="register";
			$.ajax({
				type:"post",
				url:"http://datainfo.duapp.com/shopdata/userinfo.php",
				async:true,
				data:Json,
				success:function(resp){
					if(resp=="0"){
						alert("用户名重名")
					}else if(resp=="1"){
						alert("注册成功")
					}else if(resp=="2"){
						alert("服务器出错")
					}
				}
			});
		})
	},
})

//**********************************************************************************
/**footer  begin**/
var Footer = React.createClass({
	mixins:[Tool],
	render:function(){
		return(
			<div>
				<div className="footer">
					<div name="footer_index">首页</div>
					<div name="footer_list">分类</div>
					<div name="footer_shopcar">购物车</div>
					<div name="footer_myshow">我的秀</div>
					<div name="footer_more">更多</div>
				</div>
				<span className="line"></span>
			</div>
		)
	},
	componentDidMount:function(){
			var _this = this;
			var _line = document.getElementsByClassName('line')[0];
			var _node = document.getElementById('contant');	
			var backbe = document.getElementsByClassName('backbe')[0];
			var tool = document.getElementsByClassName('tool')[0];
			var font = document.getElementsByClassName('font')[0];			
			var footer = document.getElementsByClassName('footer')[0];
			
			footer.onclick = function (ev){
				var _itemName = ev.target.getAttribute('name');
				switch(_itemName){
					case 'footer_index':
						_this.goIndex(_line,_node,font)
					break;
					case 'footer_list':
						_this.goList(_line,_node,backbe,font)
					break;
					case 'footer_shopcar':
						_this.goShopcar(_this,_line,_node,tool,backbe,font);
					break;
					case 'footer_myshow':
						_this.goMyshow(_line,_node,font,backbe);
					break;
					case 'footer_more':
						_this.goMore(_line,_node,font);
					break;
				}
			}
	}
})
/**footer  end**/
//*************************************************************************
/**LayoutComponent  渲染**/
ReactDOM.render(<LayoutComponent/>,document.body);









