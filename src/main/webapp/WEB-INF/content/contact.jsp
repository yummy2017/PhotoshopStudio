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
      <h2>加入我们 <a name="contact"></a></h2>
    </div>
    </div>
   </div>
    
    
    <div class="container text-center">
   			
   			<div class=" row fixaftimg text-center">
   			
   			<div class="col-gl-12  col-md-12 col-sm-12">
   			<h1>联系方式 <small>Secondary text</small></h1>
   			<br/>
   			</div>
   			
   			<div class=" col-gl-12  col-md-12 col-sm-12 center-block">
   			<p>如果你也有兴趣、有能力、或者有设备，</p>
   			<p>想赚钱、想兼职、或者想更精彩的生活，</p>
   			<p>请务必联系我们，我们期待你的加入。</p>
   			<p>QQ：1090743024</p>
   			<p>QQ兴趣交流群：55555444</p>
   			<p>微信：ysabjcbskjahiuc</p>
   			<p>E-mail：yy.yangmei@foxmail.com</p>
   			</div>

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
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="scripts/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
	<script src="bootstrap/js/bootstrap.js"></script>
	
  </body>
</html>