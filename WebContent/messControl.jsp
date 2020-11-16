<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.BasicUser,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mess control</title>
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	
	<%
		ArrayList<BasicUser> hlist=(ArrayList<BasicUser>)session.getAttribute("messlist");
	%>
	<!--用户没有删除信息的权利-->
	<div class="container-fluid">
		<ul class="">		
			<c:forEach items="${messlist}" var="ml">
				<li class="mb-1">
					<h6 class="ml-auto">${ml.user}</h6>
					<div class="ml-auto">${ml.messageContent }</div>
				</li>	
			</c:forEach>
			
		</ul>
	</div>
	
	
</body>
</html>