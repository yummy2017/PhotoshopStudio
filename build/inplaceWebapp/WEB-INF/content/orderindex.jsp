<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>已下订单</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/side.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script href="scripts/modernizr.js"></script>
  </head>
<body>
<div class="container-fluid">
   	<div class="container-fluid">
    	<div class="fixlogin"><h1>客官您的订单！<a href="indexorder.html"><small>回到首页</small></a></h1>
    	
		</div>
   		<div class="fixloginmain viewborder">
   			<div class="container-fluid">
   				<div class="row">
   				
   				
   				<div class="col-lg-9">
   					
   						<br>
<form method="post" action="order"> 
<div class="row">
      	<div class="col-lg-2 text-left"><label for="basic-url" >账号</label></div>
      	<div class="col-lg-10"><input type="text" id="loginname" name="loginname" onfocus=this.blur() value=${sessionScope.user.loginname  }></div>
      </div>
      <p>&nbsp;</p>
<table class="table table-hover">
	<tr>
		<th>订单编号</th><th>姓名</th><th>性别</th><th>联系方式</th><th>摄影师</th><th>服装</th><th>相册</th><th>时间</th><th>备注</th><th>订单状态</th>
	</tr>
	
	<c:forEach items="${requestScope.order_list }" var="order">
		<tr>
			<td>${order.id }</td>
			<td>${order.ordername }</td>
			<td>${order.sex}</td>
			<td>${order.cont}</td>
			<th>${order.phoername}</th>
			<th>${order.clothes}</th>
			<th>${order.album}</th>
			<th>${order.time}</th>
			<th>${order.other}</th>
			<th>${order.state}</th>
		</tr>
	</c:forEach>

</table>
 </form>
 
 </div>
   				
   					<div class="col-lg-3 fixaftimg">
   						<div>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   						</div>
   					</div>
   					
   				</div>
   			</div>
   		
   		<div class="fixlogin fixpad">
   			<footer class="text-center">
   		 <div class="row">
      		<div class="col-xs-12">
        <p>Copyright  MyWebsite. All rights reserved.</p>
      </div>
    </div>
</footer>
   		</div>  		
   	</div>
   </div>

   
   </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="scripts/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
	<script src="bootstrap/js/bootstrap.js"></script>
	
 
</body>
</html>