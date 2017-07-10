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
  	<nav class="navbar navbar-default navbar-fixed-top">
 <div class="row ppp">
  <div class="container-fluid ppp">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">首页</a>
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


   	<div id="carousel-example-generic" class="carousel " data-ride="carousel">
   
  <!-- Indicators -->
  <ol class="carousel-indicators ppp">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox ppp">

    <div class="item active">
    
      <img src="images/index1.jpg" alt="..."  class="img-responsive" >
      <div class="carousel-caption">
         活动一
      </div>
    </div>
    <div class="item">
      <img src="images/index2.jpg" alt="..."  class="img-responsive" >
      <div class="carousel-caption">
        活动二
      </div>
    </div>
    <div class="item">
      <img src="images/index3.jpg" alt="..." class="img-responsive">
      <div class="carousel-caption">
        活动三
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
  
  
      	<footer class="text-center ppp">
   		 <div class="row">
      		<div class="col-xs-12">
        <p>Copyright  MyWebsite. All rights reserved.</p>
      </div>
    </div>

</footer>
 
 




    
 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="scripts/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
	<script src="bootstrap/js/bootstrap.js"></script>
	
  </body>
</html>