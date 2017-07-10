<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form  action="item" method="get">
       <c:forEach items="${requestScope.item_list }" var="item">
      		<p>${item.username}</p>
      		<p>${item.clothes}</p>
      		<p>${item.albums}</p>
  			</c:forEach>
  			
  			
  			<div class="fixautcenter">
		<div class="row">
       <c:forEach items="${requestScope.item_list }" var="item">
      	<div class="col-lg-4 col-sm-4 col-md-4">${item.username}</div>
      	<div class="col-lg-4 col-sm-4 col-md-4">${item.clothes}</div>
      	<div class="col-lg-4 col-sm-4 col-md-4">${item.albums}</div>
		 </c:forEach>
      </div>
	</div>
  			
  			
  			
  			
  			
  			
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">摄影师</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8">
 	
			</div>
			
      </div>

      <input type="submit" class="btn btn-default" value="提交"/></p></div></div>

      </form>
</body>
</html>