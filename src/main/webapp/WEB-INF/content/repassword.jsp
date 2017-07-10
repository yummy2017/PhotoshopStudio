<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>修改密码</title>

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
    	<div class="fixlogin"><h1>修改密码！<a href="indexorder.html"><small>回到首页</small></a></h1></div>
   		<div class="fixloginmain viewborder">
   			<div class="container-fluid">
   				<div class="row">
   					<div class="col-lg-7 fixaftimg">
   						<div>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   							<p>你好</p>
   						</div>
   					</div>
   					<div class="col-lg-5 ">
<form class="navbar-form viewborder fixpadding" action="repwd" method="post">
   						
  							<div class="form-group row ">
   								 <label class=" col-lg-5 control-label" for="formGroupInputLarge">用&nbsp;&nbsp;&nbsp;&nbsp;户</label>
    							<div class="col-lg-7">
     								 <input  type="text"  placeholder="自定义" name="username">
    							</div>
  							</div>
 								 
  								 <div class="form-group row ">
   								 <label class=" col-lg-5 control-label" for="formGroupInputLarge">账&nbsp;&nbsp;&nbsp;&nbsp;号</label>
    							<div class="col-lg-7">
     								 <input  type="text"  placeholder="推荐学号" name="loginname">
    							</div>
  							</div>
  							
 						 
 						 <div class="form-group row ">
    						<label class=" col-lg-5  control-label" for="formGroupInputLarge">邮&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
   						 <div class=" col-lg-7 ">
      					<input  type="text"  placeholder="用于找回密码" name="email"/>
    						</div>
 						 </div>
 						 
 						 <div class="form-group row ">
    						<label class=" col-lg-5  control-label" for="formGroupInputLarge">新密码</label>
   						 <div class=" col-lg-7 ">
      					<input  type="password"  placeholder="PASSWORD" name="password">
    						</div>
 						 </div>
 						 
 						 <p>&nbsp;</p>
 						 <p>&nbsp;</p>
  				<div class="container-fluid">
  				<input type="submit" value="确定修改" class="btn btn-default "/>
  				
					
 				</div>
  
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