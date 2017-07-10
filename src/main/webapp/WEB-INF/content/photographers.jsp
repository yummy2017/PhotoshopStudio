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
    <title>官网</title>
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
<div class="container">
   <div class="container-fluid">
  <nav class="navbar navbar-default navbar-fixed-top">
 <div class="row">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="indexorder">首页</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="classical">经典回顾</a></li>
        <li><a href="photographer.html.action">摄影师</a></li>
        <li><a href="cloth.html.action">服装</a></li>
        <li><a href="album.html.action">相册</a></li>
        <li><a href="item.html.action">下单</a></li>
        <li><a href="contact">加盟</a></li>
      </ul>
      
      <form class="navbar-form navbar-right">
      ${sessionScope.user.loginname}
      <a href="order.html.action?loginname=${sessionScope.user.loginname}">我的订单</a>
      <a href="login.html"><input type="button" class="btn btn-default" value="登录"/></a>
      <a href="register.html"><input type="button" class="btn btn-default" value="注册"/></a>

 
      </form>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  </div>
</nav>
 </div>
  
  
   

    <div class="container-fluid tile">
   <div class="row">
    <div class="col-lg-12  text-center">
      <h2> 摄影师<a name="photograph"></a></h2>
    </div>
    </div>
   </div>

    
   <div class="container-fluid">
   <div class="container-fluid">
   	<div class="fixauto"></div>
   	<div class="fixautocenter ">
   	
   		    <form method="get" action="photographer" id="phoForm"> 
   		<div class="row ">
   		<c:forEach items="${requestScope.user_list }" var="user">
			<div class="col-lg-6 col-sm-12 col-md-6 "><div class="media ">
  				<div class="media-left">
   				 <a href="#">
					<img class="media-object" src=${user.img} alt=${user.username}>
				</a>
  			</div>
  			<div class="media-body">
    			<h4 class="media-heading">${user.username}</h4>
    			${user.description}
    			</div>
			</div></div>
			</c:forEach>
			
		</div>
		  </form>
		
   	</div>
   	<div class="fixauto"></div>
   </div>
		
  </div>
  
    
    <div class="container-fluid">
    	<footer class="text-center">
   		 <div class="row">
      		<div class="col-xs-12">
        <p>Copyright  MyWebsite. All rights reserved.</p>
      </div>
    </div>

</footer>
    </div>
    
    
    </div>
         <div class="side-bar"> 
	<a href="#" class="icon-qq">QQ在线咨询</a> 
	<a href="" class="icon-chat">微信<div class="chat-tips"><i></i><img style="width:138px;height:138px;" src="images/code.jpg" alt="微信订阅号"></div></a> 
	<a target="_blank" href="" class="icon-blog">微博</a> 
	<a href="mailto:admin@admin.com" class="icon-mail">mail</a> 
</div>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="scripts/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
	<script src="bootstrap/js/bootstrap.js"></script>
	
  </body>
</html>