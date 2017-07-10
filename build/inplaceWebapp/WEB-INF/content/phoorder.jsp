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
    <title>订单页面</title>
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
    
<script type="text/javascript">
function autoSubmit(){
 document.getElementById("myForm").submit();
 
}
setTimeout(autoSubmit,100000000000);
</script>

    
  </head>
<body onload="autoSubmit();" >

<div class="container-fluid">
   	<div class="container-fluid">
    	<div class="fixlogin"><h1>已接收的订单！<a href="loginForm.html"><small>返回登录</small></a></h1>
    	
		</div>
   		<div class="fixloginmain viewborder">
   			<div class="container-fluid">
   				<div class="row">
   				
   				
   				<div class="col-lg-12">
   					
   						<br>
<form  id="myForm" method="post" action="phoorder" > 
<div class="row">
      	<div class="col-lg-2 text-left"><label for="basic-url" >账号</label></div>
      	<div class="col-lg-10"><input type="text" id="loginname" name="loginname" onfocus=this.blur() value=${sessionScope.user.loginname}  /></div>
      </div>
      <p>&nbsp;</p>
<table class="table table-hover">
	<tr>
		<th>订单编号</th><th>姓名</th><th>性别</th><th>联系方式</th><th>摄影师</th><th>服装</th><th>相册</th><th>时间</th><th>备注</th><th>订单状态</th><th>修改</th><th>确定</th>
	</tr>
	
	<c:forEach items="${requestScope.order_list }" var="order">
		<form method="post" action="alter">
		<tr>
			
			<td><input type="text" id="id" name="id" onfocus=this.blur() value=${order.id } /></td>
			<td>${order.ordername }</td>
			<td>${order.sex}</td>
			<td>${order.cont}</td>
			<th>${order.phoername}</th>
			<th>${order.clothes}</th>
			<th>${order.album}</th>
			<th>${order.time}</th>
			<th>${order.other}</th>
			<th>${order.state}</th>
			<th>
			<select class="form-control" id="state" name="state">
  			<option>等待接单</option>
  			<option>已接单</option>
  			<option>订单已完成</option>
			</select>
			</th>
			<th><input type="submit" value="修改"/></th>
			
		</tr>
		</form>
	</c:forEach>

</table>
 </form>
 
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