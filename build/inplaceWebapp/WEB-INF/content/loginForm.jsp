<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>

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
    	<div class="fixlogin"><h1>欢迎登录！<a href="indexorder.html"><small>回到首页</small></a></h1></div>
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
   					
<div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
    <ul id="myTabs" class="nav nav-tabs" role="tablist">
      <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">用户登录</a></li>
      <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">摄影师登录</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
 <form class="navbar-form viewborder fixpadding" action="login" method="post">
   						
  							<div class="form-group row ">
   								 <label class=" col-lg-5 control-label" for="formGroupInputLarge">账号</label>
    							<div class="col-lg-7">
     								 <input  type="text"  placeholder="不妨用学号试试" id="loginname" name="loginname">
    							</div>
  							</div>
  							
  							
  						<div class="form-group row ">
    						<label class=" col-lg-5  control-label" for="formGroupInputLarge">密码</label>
   						 <div class=" col-lg-7 ">
      					<input  type="password"  placeholder="这我就不知道了" id="password" name="password">
    						</div>
 						 </div>
 						 <p>&nbsp;</p>
 						 <p>&nbsp;</p>
 						 <p>&nbsp;</p>
  				<div class="container-fluid">
					<input type="submit" class="btn btn-default " value="用户登录"/>
  					<button type="submit" class="btn btn-default "><a href="repassword.html">忘记密码</a></button>
 				</div>
  
					</form>
      </div>
      <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
 <form class="navbar-form viewborder fixpadding" action="phologin" method="post">
   						
  							<div class="form-group row ">
   								 <label class=" col-lg-5 control-label" for="formGroupInputLarge">账号</label>
    							<div class="col-lg-7">
     								 <input  type="text"  placeholder="不妨用学号试试" id="loginname" name="loginname">
    							</div>
  							</div>
  							
  							
  						<div class="form-group row ">
    						<label class=" col-lg-5  control-label" for="formGroupInputLarge">密码</label>
   						 <div class=" col-lg-7 ">
      					<input  type="password"  placeholder="这我就不知道了" id="password" name="password">
    						</div>
 						 </div>
 						 <p>&nbsp;</p>
 						 <p>&nbsp;</p>
 						 <p>&nbsp;</p>
  				<div class="container-fluid">
					<input type="submit" class="btn btn-default " value="摄影师登录"/>  
					<!--<button type="submit" class="btn btn-default "><a href="phoorder.html.action?loginname=${sessionScope.user.loginname}">摄影师登录</a></button>-->
  					<button type="submit" class="btn btn-default "><a href="repassword.html">忘记密码</a></button>
 				</div>
  
					</form>
      </div>
    </div>
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