<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login/reg</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
	<style>
		.bg{
			background: url(//pages.anjukestatic.com/usersite/site/img/PlugLogin/bg.jpg) center center no-repeat fixed;
			background-size: contain;	
		}
		
	</style>
<body class="container bg">
	
	<script type="text/javascript">
		//不同浏览器的配置可以查看相关文档，因为不用的浏览器有相应的内置对象，在此推荐如下编程框架
		//Xmlhttp是一种浏览器对象， 可用于模拟http的GET和POST请求。
		//配合JavaScript可以实现页面数据在无刷新下的定时数据更新，如果应用在聊天室、文字直播上可以取得较好的视觉效果。
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
		function logincheck(){
			var xmlHttp=initAJAX();
			var account=document.form.account.value;
			/* var password=document.form.password.value; */
			var url="check?account="+account;
			xmlHttp.open("GET",url,true);
			
			
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4){
					checkloginDiv.innerHTML=xmlHttp.responseText;
				}else{
					checkloginDiv.innerHTML="loading";
				}
			}
			xmlHttp.send(null);
			
		}
		function logincheckpassword(){
			var xmlHttp=initAJAX();
			var password=document.form.password.value;
			var url="checkpassword?password="+password;
			xmlHttp.open("GET",url,true);
			
			
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4){
					checkpasswordDiv.innerHTML=xmlHttp.responseText;
				}else{
					checkpasswordDiv.innerHTML="loading";
				}
			}
			xmlHttp.send(null);
			
		}
		
	
/*  		function signupcheck(){
			var xmlHttp=initAJAX();
			var url="add";
			xmlHttp.open("GET",url,true);
						
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4){
					checkpasswordDiv.innerHTML=xmlHttp.responseText;
				}else{
					checkpasswordDiv.innerHTML="loading";
				}
			}
			xmlHttp.send(null);
			
		}  */
	</script>
	
	
	<div class="container shadow rounded bg-white mx-auto col-md-6 mt-5">
		<div class="container rounded p-3">
			<div class=" rounded" align="center">
				<nav class="nvbar-sm">
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active w-50" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">LOGIN</a>
						<a class="nav-item nav-link w-50" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">SIGNUP</a>
					</div>	
				</nav>
				<div class="tab-content " id="nav-content">
					<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
						<h2 class="mb-3">LOGIN</h2>
			         	 <form name="form" class="mx-auto mb-3" action="admin-skip">
			         	 	<div class="form-group">
			         	 		<label for="formGroup1">用户名</label>
			         	 		<span>
			         	 			<img style="vertical-align: top;width: 26px;position: relative;left: 200px; top: 38px;"  alt="#" src="https://pages.anjukestatic.com/usersite/touch/img/user/login/icon_man@2x.png">
			         	 			<input onblur="logincheck()" class="form-control" id="form-group1" name="account" type="text" placeholder="accout" required="required">
			         	 		</span>	
			         	 		<div id="checkloginDiv"></div>
			         	 	</div>
			         	 		
			         	 	<div class="form-group">
			         	 		<label for="formgroup2">密码</label>
			         	 		<span>
			         	 			<img style="vertical-align: top;width: 27px;position: relative;left: 208px; top: 38px" alt="#" src="https://pages.anjukestatic.com/usersite/touch/img/user/login/icon_lock@2x.png">
			         	 			<input onblur="logincheckpassword()"  class="form-control" id="form-group2" name="password" type="text" placeholder="password"  required="required">
			         	 		</span>	
			         	 		<div id="checkpasswordDiv"></div>
			         	 	</div>
			         	 	<div class="dropdown-divider"></div>
							<div class="form-group">
								<input class="btn form-control" type="submit" value="LOGIN" name="submit"/>
							</div>
						 </form>
						 
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
						 <div><h2 class="mb-3">SIGN UP</h2></div>
				          <form action="add">
				          	<div class="form-group">
				          		<label class="formGroup1">用户名</label>
				          		<input class="form-control" type="text" placeholder="User" name="user"   required="required"/>
				          	</div>
				          	<div class="form-group">
				          		<label class="formGroup1">联系电话</label>
				          		<input class="form-control" type="text" placeholder="Phone" name="phone" required="required" />
				          	</div>
				          	<div class="form-group">
				          		<label class="formGroup2">身份证号</label>
				          		<input class="form-control" type="text" placeholder="identity" name="identity" required="required" />
				          	</div>
				          	<div class="form-group">
				          		<label class="formGroup3">注册密码</label>
				          		 <input class="form-control" type="password" name="password" required="required"/>
				          	</div>
				          	<div class="form-group">
				          		<label class="formGroup4"></label>
				          		 <input class="btn " type="submit" name="submit" value="SIGN UP"/>
				          	</div>
				          
				          </form>
				          <!-- <span id="checkDiv"></span> -->
						  
					</div>
				</div>
			</div>
		</div>

	</div>
	


</body>
</html>