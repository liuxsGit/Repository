<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.Houseinfo,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>House info</title>
<meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	
	<%
		int id=1;
		ArrayList<Houseinfo> hlist=(ArrayList<Houseinfo>)session.getAttribute("hlist");
	%>
	<div class="container-fluid">
		<h3 class="text-center">住宅信息表</h3>
		<table class="table-striped table-hover table">
			<tr class="mb-1">
				<td class="ml-auto">序号</td>
				<td class="ml-auto">房屋地址</td>
				<td class="ml-auto">建筑面积</td>
				<td class="ml-auto">楼层</td>
				<td class="ml-auto">租金</td>
				<td class="ml-auto">区域</td>	
				<td class="ml-auto">房型</td>		
				<td class="ml-auto">朝向</td>	
				<td class="ml-auto">周围环境</td>	
				<td class="ml-auto">装修情况</td>		
				<td class="ml-auto">联系人</td>	
				<td class="ml-auto">联系电话</td>	
				<td class="ml-auto">操作</td>		
			</tr>
			
			<c:forEach items="${hlist}" var="hi">
				<tr class="mb-1">
					<td class="ml-auto"><%=id++%></td>
					<td class="ml-auto">${hi.location}</td>
					<td class="ml-auto">${hi.area }</td>
					<td class="ml-auto">${hi.floor }</td>
					<td class="ml-auto">${hi.rent}</td>
					<td class="ml-auto">${hi.arrange}</td>
					<td class="ml-auto">${hi.scale }</td>
					<td class="ml-auto">${hi.toward }</td>
					<td class="ml-auto">${hi.surround }</td>
					<td class="ml-auto">${hi.decorate }</td>
					<td class="ml-auto">${hi.buyer }</td>
					<td class="ml-auto">${hi.phone}</td>
					<td class="ml-auto"><a href="../HouseRent/housedetails.jsp">详情</a></td>		
				</tr>	
			</c:forEach>
			
		</table>
	</div>
</body>
</html>