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
      <h2> 订单<a name="order"></a></h2>
    </div>
    </div>
   </div>
    
    <div class="container-fluid">
    	<div class="container-fluid ">
    	
<form class=" row" action="index" method="post" >
    	<div class=" col-lg-3  col-sm-1 col-md-2"><p>&nbsp;</p></div>
	<div class=" viewborder col-lg-6 col-sm-10 col-md-8">
		<div class="row"><p>&nbsp;</p><div class="col-lg-12 col-sm-12 col-md-12"></div></div>
		<div class="row"><p>&nbsp;</p><div class="col-lg-12 col-sm-12 col-md-12"></div></div>
		
		<div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url" >账号</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><input type="text" id="loginname" name="loginname" onfocus=this.blur() value=${sessionScope.user.loginname }></div>
      </div>
		
		<div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url" >姓名</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><input type="text" id="ordername" name="ordername" ></div>
      </div>
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">性别</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><input type="radio"  name="sex" aria-label="男" id="sex" name="sex" >男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  name="sex" aria-label="女">女</div>
      </div>
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">联系方式</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><input type="text" id="cont" name="cont" ></div>
      </div>
   <form method="get" action="item" id="itemForm"> 
		<c:forEach items="${requestScope.item_list }" var="item">
      		<div class="col-lg-4 col-sm-4 col-md-4">1</div>
      		<div class="col-lg-4 col-sm-4 col-md-4">${item.albums}</div>
      	<div class="col-lg-4 col-sm-4 col-md-4">${item.username}</div>
		 </c:forEach>
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">摄影师</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8">
 	
      	<select class="form-control" id="phoername" name="phoername" >
      		<c:forEach items="${requestScope.item_listusername }" var="item">
  			<option>${item.username}</option>
  			</c:forEach>
			</select>
			</div>
			
      </div>
      <input type="submit" value="shuxin">
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">服装</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><select class="form-control" id="clothes" name="clothes" >
  			<c:forEach items="${requestScope.item_listclothes }" var="item">
  			<option>${item.clothes}</option>
  			</c:forEach>
			</select></div>
      </div>
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">相册</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><select class="form-control" id="album" name="album" >
  			<c:forEach items="${requestScope.item_listalbums }" var="item">
  			<option>${item.albums}</option>
  			</c:forEach>
			</select></div>
      </div>
      </form>
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">预约时间</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><input type="text" id="time" name="time" ></div>
      </div>
      <div class="row">
      	<div class="col-lg-4 col-sm-4 col-md-4 text-right"><label for="basic-url">其他备注</label></div>
      	<div class="col-lg-8 col-sm-8 col-md-8"><textarea class="form-control" rows="4" id="other" name="other" ></textarea></div>
      </div>
      <div class="row"><div class="col-lg-12 col-sm-12 col-md-12"><p class="text-center">
      <input type="submit" class="btn btn-default" value="提交"/></p></div></div>
      <div class="row"><div class="col-lg-12 col-sm-12 col-md-12"><p>&nbsp;</p></div></div>
      <div class="row"><div class="col-lg-12 col-sm-12 col-md-12"><p>&nbsp;</p></div></div>
	</div>
	<div class=" col-lg-3 col-sm-1 col-md-2"><p>&nbsp;</p></div>
</form>

 </div>
    </div>
    
<!--  select distinct username from  tb_album,tb_cloth,tb_photographer where tb_photographer.type='摄影师' and EXISTS 
(select type,id,albums from tb_album 
union 
select type,id,clothes from tb_cloth
union
select type,id,username from tb_photographer) -->
    

    <div class="container-fluid">
    	<footer class="text-center">
   		 <div class="row">
      		<div class="col-xs-12">
        <p>Copyright  MyWebsite. All rights reserved.</p>
      </div>
    </div>

</footer>
    </div>
    
         <div class="side-bar"> 
	<a href="#" class="icon-qq">QQ在线咨询</a> 
	<a href="" class="icon-chat">微信<div class="chat-tips"><i></i><img style="width:138px;height:138px;" src="images/code.jpg" alt="微信订阅号"></div></a> 
	<a target="_blank" href="" class="icon-blog">微博</a> 
	<a href="mailto:admin@admin.com" class="icon-mail">mail</a> 
</div>
    
    
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="scripts/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
	<script src="bootstrap/js/bootstrap.js"></script>
	
  </body>
</html>