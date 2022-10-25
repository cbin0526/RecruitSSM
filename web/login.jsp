<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8"
	src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录-奇迹才聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="奇迹才聘网是互联网领域垂直招聘网站,互联网职业机会尽在奇迹才聘网" name="description">
<meta
	content="奇迹才聘,奇迹才聘网,奇迹才聘招聘 ,互联网招聘,奇迹才聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 奇迹才聘官网, 奇迹才聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招"
	name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css" />

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script>
<script type="text/javascript" src="style/js/conv.js"></script>

<script type="text/javascript">
	
	function checklogin(){
		//表单验证
		if(checkemail() & checkpwd()){
			//验证成功
			// 获取用户邮箱
			let email = $("#cemail").val();
			// 获取用户密码
			let pwd = $("#cpwd").val();
			//判断是招聘者还是应聘者 0是应聘者 1是招聘者 
			let type = $("input:radio:checked").val();
			if(type == 0){
				//应聘者
				// 发起ajax请求
				$.ajax({
					url:"checklogin.do",
					data:{email:email,pwd:pwd},
					dataType:"text",
					success:function(msg){
						if(msg==0){
							alert("账号或者密码错误！");
						}else if(msg==1){
							alert("登录成功！");
							location.href="index.jsp";
						}else if(msg==2){
							alert("账号已被禁用，请联系管理员！");
						}				
						else{
							alert("发生了未知异常，请联系管理员！");
						}
						
					 }
				});
			}else if(type == 1){
				//招聘者
				$.ajax({
					url:"loginfirm.do",
					type:"GET",
					data:{firm_email:email,firm_pwd:pwd},
					dataType:"text",
					success:function(msg){
						if(msg==0){
							alert("账号或者密码错误！");
						}else if(msg==1){
							alert("登录成功！");
							location.href="firmindex.jsp";
						}else if(msg==2){
							alert("账号已被禁用，请联系管理员！");
						}				
						else{
							alert("发生了未知异常，请联系管理员！");
						}
					}
				})
			}else{
				//没有选中身份
				document.getElementById("myspan").innerHTML="选择身份";
			}
		}else{
			 $("#cpwd").val("");
		}
	}

	// 邮箱校验
	function checkemail(){
		var email = document.getElementById("cemail").value;
		if(email!=null && ( email.endsWith("@chinasoft.com") || email.endsWith("@qq.com"))){
			document.getElementById("cemailspan").innerHTML="√邮箱格式正确!";
			return true;
		}else{
			document.getElementById("cemailspan").innerHTML="×邮箱格式有误，请使用qq邮箱或中软邮箱！";
			return false;
		}
	}
	
	// 校验密码
	function checkpwd(){
		var pwd = document.getElementById("cpwd").value;
		if(pwd==null || pwd.length<10){
			// 提示格式错误
			document.getElementById("cpwdspan").innerHTML="×密码小于10位，格式有误！";
			return false;
		}else{
			document.getElementById("cpwdspan").innerHTML="√密码名格式正确";
			return true;
		}   		    		
	}
	//身份验证
	
</script>

</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
			<a href="h/"><img src="style/images/logo_white.png" width="200px"
				height="100px" alt="奇迹才聘招聘" /></a>
			<div id="cloud_s">
				<img src="style/images/cloud_s.png" width="81" height="52"
					alt="cloud" />
			</div>
			<div id="cloud_m">
				<img src="style/images/cloud_m.png" width="136" height="95"
					alt="cloud" />
			</div>
		</div>

		<input type="hidden" id="resubmitToken" value="" />
		<div class="login_box">
			<form id="loginForm">
				我是牛人 <input type="radio" checked="checked" value="0" name="type" /> 
				<span style="margin-right: 150px;"></span> 
				招牛人 <input type="radio" value="1" name="type" />
				<p> <br> <span id="myspan"></span>
					<input type="text" id="cemail" name="customeremail" value=""
						tabindex="1" onblur="checkemail()" placeholder="请输入账号"
						style="width: 300px" /> <br> <span id="cemailspan"></span>
				</p>

				<p>
					<input type="password" id="cpwd" name="customerpwd" tabindex="2"
						onblur="checkpwd()" placeholder="请输入密码" style="width: 300px" /> <br>
					<span id="cpwdspan"></span>
				</p>
				<span class="error" style="display: none;" id="beError"></span> <label
					class="fl" for="remember"><input type="checkbox"
					id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label> <a
					href="reset.html" class="fr" target="_blank">忘记密码？</a>

				<!--<a style="color:#fff;" href="index.jsp" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>登 &nbsp; &nbsp; 录</a>-->
				<p>
					<button type="button" id="submitLogin" onclick="checklogin()">登录</button>
				</p>


				<input type="hidden" id="callback" name="callback" value="" /> 
				<input type="hidden" id="authType" name="authType" value="" />
			    <input type="hidden" id="signature" name="signature" value="" />
			     <input type="hidden" id="timestamp" name="timestamp" value="" />
			</form>
			<div class="login_right">
				<div>还没有奇迹才聘帐号？</div>
				<a href="register.jsp" class="registor_now">立即注册</a>
				<div class="login_others">使用以下帐号直接登录:</div>
				<a href="h/ologin/auth/sina.html" target="_blank" class="icon_wb"
					title="使用新浪微博帐号登录"></a> <a href="h/ologin/auth/qq.html"
					class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
			</div>
		</div>
		<div class="login_box_btm"></div>
	</div>

</body>
</html>