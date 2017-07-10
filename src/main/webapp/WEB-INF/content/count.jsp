<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>购物车</title>
</head>
<body>
您够买的物品：<br/>
书籍：${itemMap["书籍"]}本<br/>
化妆：${itemMap["书籍"]}套<br/>
数码：${itemMap["书籍"]}台<br/>
<a href="shop.jsp">继续购买</a>
</body>
</html>