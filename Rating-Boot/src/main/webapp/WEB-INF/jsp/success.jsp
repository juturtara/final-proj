<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ratings</title>
</head>
<body>
<h3 align="center">RATINGS</h3><br>
<table border="1px" align="center">
<tr height="50">
<th>ProductId</th>
<th>ProductName</th>
<th>MerchantId</th>
<th>Rating</th>
</tr>
<a:forEach items="${rat}" var="rate">
<tr>
<td>${rate.p_id}</td>
<td>${rate.p_name}</td>
<td>${rate.m_id}</td>
<td>${rate.stars}</td>

</tr>
</a:forEach>
</table>
<br>
<br>
<center><a href="/index">Back to Home</a></center>
</body>
</html>