<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.BasicUser,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	
	<script type="text/javascript">
		window.onload=function(){
			QueryAll();
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
		//查询所有用户信息
		function QueryAll(){
			var xmlHttp=initAJAX();
			var url="admin-query";
			xmlHttp.open("POST",url,true);
			
			xmlHttp.onreadystatechange=function(){
				
				if(xmlHttp.readyState==4){
					queryDiv.innerHTML=xmlHttp.responseText;
				}else{
					queryDiv.innerHTML="loading";
				}
			}
			xmlHttp.send();
			
		}
	</script>
	
	<div class="container">
		<div class="mb-1 border shade">
			<p class="text-center text-capitalize display-4">welcome to the control panel of <br>houserent system</p>
		</div>
		
		<div class="container bg-light">
			<div class="row">
				<div class="col-md-2 border border-primary">
					<ul class="nav nav-pills">
						<li class="nav-item"  >
							<a href="#QueryUser" class="nav-link active" data-toggle="pill">QueryUser</a>
						</li>
						<li class="nav-item">
							<a href="#AddUser" class="nav-link" data-toggle="pill" >AddUser</a>
						</li>
						<li class="nav-item">
							<a href="#AddHouse" class="nav-link" data-toggle="pill">AddHouse</a>
						</li>
						<li class="nav-item">
							<a href="#MesBoard" class="nav-link" data-toggle="pill">MesBoard</a>
						</li>
						<li class="nav-item">
							<a href="login.jsp" class="nav-link" >SwitchAccount</a>
						</li>
					</ul>
				</div>
				<div class="col-md-10 border border-warning justify-content-center">
					<div class="tab-content">
						<div class="tab-pane active" id="QueryUser">
							<div id="queryDiv" class=" mx-auto container" align="center"></div>			
						</div>
						<div class="tab-pane" id="AddUser">
							<form action="admin-adduser" method="post">
					          	<div class="form-group">
					          		<label class="formGroup1">用户名</label>
					          		<input class="form-control" type="text" placeholder="User" name="user" " required="required">
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup2">联系电话</label>
					          		<input class="form-control" type="text" placeholder="Phone" name="phone" required="required" />
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup3">身份证号</label>
					          		<input class="form-control" type="text" placeholder="identity" name="identity" required="required" />
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup4">注册密码</label>
					          		 <input class="form-control" type="password" placeholder="password" name="password" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup5"></label>
					          		 <input class="btn " type="submit" name="submit" value="SIGN UP"/>
					          	</div>
				            </form>
						</div>
						<div class="tab-pane" id="AddHouse">
							<form action="admin-houseadd" method="post">
					          	<div class="form-group">
					          		<label class="formGroup1">房屋地址</label>
					          		<input class="form-control" type="text" placeholder="location" name="location" " required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup2">建筑面积</label>
					          		<input class="form-control" type="text" placeholder="area" name="area" required="required" />
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup3">楼层</label>
					          		<input class="form-control" type="text" placeholder="floor" name="floor" required="required" />
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup4">租金</label>
					          		 <input class="form-control" type="text" placeholder="rent" name="rent" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup5">区域</label>
					          		 <input class="form-control" type="text" placeholder="arrange" name="arrange" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup6">房型</label>
					          		 <input class="form-control" type="text" placeholder="scale" name="scale" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup7">朝向</label>
					          		 <input class="form-control" type="text" placeholder="toward" name="toward" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup8">周围环境</label>
					          		 <input class="form-control" type="text" placeholder="surround" name="surround" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup9">装修情况</label>
					          		 <input class="form-control" type="text" placeholder="decorate" name="decorate" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup10">联系人</label>
					          		 <input class="form-control" type="text" placeholder="buyer" name="buyer" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup11">联系电话</label>
					          		 <input class="form-control" type="text" placeholder="phone" name="phone" required="required"/>
					          	</div>
					          	<div class="form-group">
					          		<label class="formGroup4"></label>
					          		 <input class="btn " type="submit" name="submit" value="SIGN UP"/>
					          	</div>
				            </form>
						
						</div>
						<!-- <div class="tab-pane" id="MesBoard">
						
						wrew
						</div> -->
						<div class="tab-pane" id="SwitchAccount">
						
						
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
	

</body>
</html>