<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.BasicUser,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User info</title>
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>

<body>

	<%
		int id=1;
		ArrayList<BasicUser> list=(ArrayList<BasicUser>)session.getAttribute("list");
	%>
	
	
	<div class="container">
		
		<table class="table-striped table-hover table">
			<tr class="mb-1">
				<td class="ml-auto">序号</td>
				<td class="ml-auto">用户名</td>
				<td class="ml-auto">手机号</td>
				<td class="ml-auto">身份证号</td>
				<td class="ml-auto">密码</td>	
				<td class="ml-auto">操作</td>		
				<td class="ml-auto">操作</td>	
			</tr>
			
			<c:forEach items="${list}" var="bu">
				<tr class="mb-1">
					<td class="ml-auto"><%=id++%></td>
					<td class="ml-auto">${bu.user}</td>
					<td class="ml-auto">${bu.phone}</td>
					<td class="ml-auto">${bu.identity}</td>
					<td class="ml-auto">${bu.password}</td>	
					<td class="ml-auto"><a href="admin-del?identity=${bu.identity }">删除</a></td>	
					<td class="ml-auto ">
						<button class="dropdown block dropdown-toggle btn-outline-primary border-0" data-toggle="dropdown">修改</button>
						<div class="dropdown-menu mr-4">
							<form action="admin-update" method="post">
								<table class="table">
									<tr class="mx-auto">
										<td class="ml-auto"><input type="text" value="${bu.user}" name="user" ></td>
										<td class="ml-auto"><input type="text" value="${bu.phone}" name="phone"></td>
										<td class="ml-auto"><input type="text" value="${bu.identity}" name="identity" readonly="readonly"></td>
										<td class="ml-auto"><input type="text" value="${bu.password}" name="password"></td>	
										<td class="ml-auto"><input type="submit" value="提交"></td>
									</tr>
							</table>	
							</form>
													
						</div>	
					</td>	
						
				</tr>
			
			</c:forEach>
			
		</table>
	</div>
	

</body>
</html>