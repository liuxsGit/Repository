<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>housedetails</title>
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	
	<script type="text/javascript">
		//不同浏览器的配置可以查看相关文档，因为不用的浏览器有相应的内置对象，在此推荐如下编程框架
		//Xmlhttp是一种浏览器对象， 可用于模拟http的GET和POST请求。
		//配合JavaScript可以实现页面数据在无刷新下的定时数据更新，如果应用在聊天室、文字直播上可以取得较好的视觉效果。
		window.onload=function(){
			messageShow();
		}
		function initAJAX(){
			var xmlHttp=false;
			if(window.XMLHttpRequest){
				//mozilla等浏览器
				xmlHttp=new XMLHttpRequest();
			}else if(window.ActiveXObject){
				try {
					//IE
					xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					
					try {
						xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
					} catch (e) {
						window.alert("Do not support AJAX! ");
					}
				}
			}
			return xmlHttp;
		}
		function messageShow(){
			var xmlHttp=initAJAX();
			var url="messquery";
			xmlHttp.open("GET",url,true);			
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4){
					messageDiv.innerHTML=xmlHttp.responseText;
				}else{
					messageDiv.innerHTML="loading";
				}
			};
			xmlHttp.send(null);
			
		}
	</script>
	<div class="container d-flex justify-content-between">
		<div class="col-md-9 col-12 ">
	        <h3 class="text-center">商品房介绍</h3>
	        <nav class="navbar-expand-sm">
	          <div class="nav nav-tabs" id="nav-tab" role="tablist">
	            <a class="nav-item nav-link active w-25" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">室内图</a>
	            <a class="nav-item nav-link w-25 " id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">房型图</a>
	            <a class="nav-item nav-link w-25" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">环境图</a>
	          </div>
	        </nav>
	        
	        <div class="tab-content mb-5 mx-auto" id="nav-tabContent">
	          <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
	            <div class="row">
			        <div class="col-12"><br><br>
			        
			          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			            <ol class="carousel-indicators">
			              <li data-target="#carouselExampleControls" data-slide-to="0" class="active mr-3"></li>
			              <li class="mr-3" data-target="#carouselExampleControls" data-slide-to="1"></li> 
			              <li class="mr-3" data-target="#carouselExampleControls" data-slide-to="2"></li>
			            </ol>
			            <!-- ol 里面的li是轮播的结构主体，carousel-inner是轮播对象-->
			            <div class="carousel-inner w-100">
			              <div class="carousel-item active">
			                <img class="d-block w-100" src="images/info3.jpg" alt="First slide" >
			                <div class="carousel-caption d-none d-md-block">
			                  <h5>Item 1 Heading</h5>
			                  <p>Item 1 Description</p>
			                </div>
			              </div>
			              <div class="carousel-item">
			                <img class="d-block w-100" src="images/info1.jpg" alt="Second slide">
			                <div class="carousel-caption d-none d-md-block">
			                  <h5>Item 2 Heading</h5>
			                  <p>Item 2 Description</p>
			                </div>
			              </div>
			              <div class="carousel-item">
			                <img class="d-block w-100" src="images/info2.jpg" alt="Second slide">
			                <div class="carousel-caption d-none d-md-block">
			                  <h5>Item 2 Heading</h5>
			                  <p>Item 2 Description</p>
			                </div>
			              </div>
			            
				            <!-- carousel-control-prev/next是两个轮播对象的控制切换按钮 -->
				            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
					            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					            <span class="sr-only">Previous</span>
				            </a>
				            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
					            <span class="carousel-control-next-icon" aria-hidden="true"></span>
					            <span class="sr-only">Next</span>
				            </a>	            
			          	</div>
		       		 </div>
		     	 </div>
	          </div>
	          
	          </div>
	          <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
	            <p class="text-center mt-2"><img src="images/struct.jpg" alt=""></p>
	            
	          </div>
	          <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
	             <p class="text-center mt-2"><img src="images/sur1.jpg" alt=""></p>
	             <p class="text-center mt-2"><img src="images/sur2.jpg" alt=""></p>
	             <p class="text-center mt-2"><img src="images/sur3.jpg" alt=""></p>
	          </div>   
	      </div>
	    </div>
	    <div class="container col-md-3 border ">
	    	<div class="dropdown-divider"></div>
	    	<h5 class="text-center">我的评论</h5>
	    	<div class="dropdown-divider"></div>
	    	<!-- <div class="input-group form-group">
	    		<div class="input-group-prepend">
	    			<div class="input-group-text">+</div>
	  	 		</div>
	    		<input class="form-control" type="text">
	    	</div> -->
	    	<div class="container text-center"> 
	    		<div class="form-group row">
	                <form action="message" method="post">
	                	<div class="row">
	                		<div class="col-6">
	                        	<input type="text" class="form-control" name="user" placeholder="姓名" required="required">
	                        </div>
	                        <div class="col-6">
	                        	<input type="email" class="form-control"  name="email"placeholder="邮箱" required="required">         	
	                        </div>
	                	</div>
	                    <div class="form-group">
	                    	<textarea class="form-control"  name="message" rows="8" placeholder="留言内容*" required="required"></textarea>
	                   		<div class="form-group">
		                    	<input type="submit" class="form-control btn" value="提交">  
		                    </div> 
	                    </div>                     
	                </form>
	             </div>  
    		</div>
    		<div class="dropdown-divider"></div>
    		<h5 class="text-center">其他评论</h5>
    		<div class="dropdown-divider"></div>
    		<div class="container-fluid row">
    			<div id="messageDiv"></div>
    		</div>
	    </div>
	    
	</div>
	
    
    <hr><h3 class=" text-center">房屋信息</h3><hr>
    <div class="d-flex justify-content-around col-md-9 border mx-auto text-left" align="center">
        
 		<div class="col-md-3 ">
 			<p>所属小区：恒大名都</p>
 			<p>所在位置：高新开发区</p>
 			<p>建造年代：2020年</p>
 			<p>房屋类型：普通住宅</p>
 			<p>产权性质：商品房</p>
 		</div>
 		<div class="col-md-3">
 			<p>房屋类型：2室2厅1卫</p>
 			<p>建筑面积：100平方米</p>
 			<p>房屋朝向：南北</p>
 			<p>所在楼层：高层（27层）</p>
 			<p>配套电梯：有</p>
 		</div>
 		<div class="col-md-3">
 			<p>房屋单价：17000元/平方米</p>
 			<p>参考首付：32.00万</p>
 			<p>参考月供：1000元</p>
 			<p>装修程度：豪华装饰</p>
 			<p>一手房源：是</p>
 		</div>
 		
 	</div>
</body>
</html>