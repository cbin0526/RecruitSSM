<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册-拉手手聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="奇迹才聘网是互联网领域垂直招聘网站,互联网职业机会尽在奇迹才聘网" name="description">
<meta content="奇迹才聘,奇迹才聘网,奇迹才聘招聘,奇迹才聘, 奇迹才聘网 ,互联网招聘,奇迹才聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 奇迹才聘官网, 奇迹才聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招" name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
</head>

<body id="login_bg" style="overflow: auto">
	<div class="login_wrapper" style="padding-top=0px">
		<div class="login_header">
        	<a href="h/"><img src="style/images/logo_white.png" width="200" height="100" alt="奇迹才聘招聘" /></a>
            <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="9b207beb1e014a93bc852b7ba450db27" />		
		<div class="login_box">
        	<form id="loginForm">
        		<ul class="register_radio clearfix">
		            <li>
		            	找工作
		              	<input type="radio" value="0" name="type" /> 
		            </li>
		            <li>
		           	           招人
		              	<input type="radio" value="1" name="type" /> 
		            </li>
		        </ul> 
		        
		        <p>
		        <input type="text"  id="u_username" name="u_username" style="width: 296px;" onblur="checkname()" placeholder="请输入用户名"  />
		        <br>
		        <span id="u_usernamespan"></span>
		        </p>
		        
		        <p>
		        <input type="text"  id="u_email" name="u_useremail"  style="width: 296px;" onblur="checkemail()" placeholder="请输入邮箱"  />
		        <br>
		        <span id="u_emailspan"></span>
		        </p>
		        
		        <p>
				<input type="text" id="u_tel" name="u_tel"  style="width: 296px;" onblur="checktel()" placeholder="请输入常用电话号码" />
				<br>
		        <span id="u_telspan"></span>
		        </p>
				
				<p>
		        <input type="password" id="u_password" name="u_userpwd"  style="width: 296px;" onblur="checkpwd()" placeholder="请输入密码" />
		        <br>
		        <span id="u_passwordspan"></span>
		        </p>
		        
		        <p>
            	<input type="password" id="repwd" name="repwd"  style="width: 296px;" onblur="checkrepwd()" placeholder="请再次输入密码" />
            	<br>
		        <span id="repwdspan"></span>
		        </p>
            	
                <span class="error" style="display:none;" id="beError"></span>
                
                		
            	<label class="fl registerJianJu" for="checkbox">
            		<input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />我已阅读并同意<a href="h/privacy.html" target="_blank">《奇迹才聘用户协议》</a>
           		</label>
                <input type="submit" id="submitLogin" value="注 &nbsp; &nbsp; 册"  onclick="regiest()"/>
                
            </form>
            <div class="login_right">
            	<div>已有奇迹才聘帐号</div>
            	<a href="login.jsp" class="registor_now">直接登录</a>
                <div class="login_others">使用以下帐号直接登录:</div>
                <a  href="h/ologin/auth/sina.html"  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
               	<a  href="h/ologin/auth/qq.html"  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
            </div>
        </div>
        <div class="login_box_btm"></div>
    </div>
    
    <script type="text/javascript">
    
    $(document).ready(function(e) {
    	$('.register_radio li input').click(function(e){
    		$(this).parent('li').addClass('current').append('<em></em>').siblings().removeClass('current').find('em').remove();
    	});
    	
    	$('#email').focus(function(){
    		$('#beError').hide();
    	});
    	//验证表单
	    	 $("#loginForm").validate({
	    	        rules: {
	    	        	type:{
	    	        		required: true
	    	        	},
			    	   	email: {
			    	    	required: true,
			    	    	email: true
			    	   	},
			    	   	password: {
			    	    	required: true,
			    	    	rangelength: [6,16]
			    	   	},
			    	   	checkbox:{required:true}
			    	},
			    	messages: {
			    		type:{
	    	        		required:"请选择使用奇迹才聘的目的"
	    	        	},
			    	 	email: {
			    	    	required: "请输入常用邮箱地址",
			    	    	email: "请输入有效的邮箱地址，如：2215545969@qq.com"
			    	   	},
			    	   	password: {
			    	    	required: "请输入密码",
			    	    	rangelength: "请输入6-16位密码，字母区分大小写"
			    	   	},
			    	   	checkbox: {
			    	    	required: "请接受奇迹才聘用户协议"
			    	   	}
			    	},
			    	errorPlacement:function(label, element){/* 
			    		if(element.attr("type") == "radio"){
			    			label.insertAfter($(element).parents('ul')).css('marginTop','-20px');
			    		}else if(element.attr("type") == "checkbox"){
			    			label.inserresult.contenttAfter($(element).parent()).css('clear','left');
			    		}else{
			    			label.insertAfter(element);
			    		} */			    		
			    		/*modify nancy*/
			    		if(element.attr("type") == "radio"){
			    			label.insertAfter($(element).parents('ul')).css('marginTop','-20px');
			    		}else if(element.attr("type") == "checkbox"){
			    			label.insertAfter($(element).parent()).css('clear','left');
			    		}else{
			    			label.insertAfter(element);
			    		};	
			    	},
			    	submitHandler:function(form){
			    		var type =$('input[type="radio"]:checked',form).val();
			    		var email =$('#email').val();
			    		var password =$('#password').val();
			    		var resubmitToken = $('#resubmitToken').val();
			    		
			    		var callback = $('#callback').val();
			    		var authType = $('#authType').val();
			    		var signature = $('#signature').val();
			    		var timestamp = $('#timestamp').val();
			    		
			    		$(form).find(":submit").attr("disabled", true);

			            $.ajax({
			            	type:'POST',
			            	data: {email:email,password:password,type:type,resubmitToken:resubmitToken, callback:callback, authType:authType, signature:signature, timestamp:timestamp},
			            	url:ctx+'/user/register.json',
			            	dataType:'json'
			            }).done(function(result) {
		            		$('#resubmitToken').val(result.resubmitToken);
			            	if(result.success){
			            		window.location.href=result.content;			            		
			            	}else{
								$('#beError').text(result.msg).show();
			            	}
			            	$(form).find(":submit").attr("disabled", false);			           		
			            });
			        }  
	    	});
    });
    </script>
    <script type="text/javascript">
    
    	// 用户校验
    	function checkname(){
    		var name = document.getElementById("u_username").value;
    		if(name==null || name.length<6){
    			// 提示格式错误
    			document.getElementById("u_usernamespan").innerHTML="×用户名小于6位，格式有误！";
    			return false;
    		}else{
    			document.getElementById("u_usernamespan").innerHTML="√用户名格式正确"
    			return true;
    		}   		    		
    	}
    
    	// 邮箱校验
    	function checkemail(){
    		var email = document.getElementById("u_email").value;
    		if(email!=null && ( email.endsWith("@chinasoft.com") || email.endsWith("@qq.com"))){
    			document.getElementById("u_emailspan").innerHTML="√邮箱格式正确!";
    			return true;
    		}else{
    			document.getElementById("u_emailspan").innerHTML="×邮箱格式有误，请使用qq邮箱或中软邮箱！"
				return false;
    		}
    	}
    	
    	// 校验电话
    	function checktel(){
    		var tel = document.getElementById("u_tel").value;
    		if(tel!=null && tel.length==11 && (tel.startsWith("13") || tel.startsWith("15") || tel.startsWith("18") )){
    			document.getElementById("u_telspan").innerHTML="√电话格式正确!";
    			return true;
    		}else{
    			document.getElementById("u_telspan").innerHTML="×电话格式有误！";
    			return false;
    		}
    	}
    		
    	// 校验密码
    	function checkpwd(){
    		var pwd = document.getElementById("u_password").value;
    		if(pwd==null || pwd.length<10){
    			// 提示格式错误
    			document.getElementById("u_passwordspan").innerHTML="×密码小于10位，格式有误！";
    			return false;
    		}else{
    			document.getElementById("u_passwordspan").innerHTML="√密码名格式正确";
    			return true;
    		}   		    		
    	}
    
    	// 校验重复密码
    	function checkrepwd(){
    		var repwd = document.getElementById("repwd").value;
    		var pwd = document.getElementById("u_password").value;
    		if(repwd!=pwd){
    			// 提示格式错误
    			document.getElementById("repwdspan").innerHTML="×重复输入密码不一致！";
    			return false;
    		}else{
    			document.getElementById("repwdspan").innerHTML="√密码一致正确";
    			return true;
    		}   		    		
    	}
    	
    	function regiest(){
    		
    		if(checkname() && checkemail() && checktel() && checkpwd() && checkrepwd()){
    			//校验成功获取数据
    			let name = $("#u_username").val();
    			let pwd = $("#u_password").val();
    			let repwd = $("#repwd").val();
    			let email = $("#u_email").val();
    			let tel = $("#u_tel").val();
    			let type = $('input:radio:checked').val ();
    			if(type == 0){
    				//用户应聘者注册
    	    		$.ajax({   				
    	    				url:"addCustomer.do",
    	    				type:"GET",
    	    				data:{u_username:name,u_userpwd:pwd,u_email:email,u_tel:tel},
    	    				dataType:"text",
    	    				success:function(msg){
    	    					if(msg==1){
    	    						//注册成功,跳转到登页面
    	    						alert("注册成功,请登入");
    	    						location.href="login.html";
    	    					}else if(mag != 1){
    	    						//注册失败，弹出提示框
    	    						alert("注册失败");
    	    					}
    	    				}
    	    			})
    	    		}else if(type == 1){
    	    			//招聘者注册
    	    			$.ajax({
    	    				
    	    				url:"DoFirm.do",
    	    				type:"GET",
        	    			data:{flag:"addFirm",firm_name:name,firm_pwd:pwd,firm_tel:tel,firm_email:email},
        	    			dataType:"text",
        	    			success:function(msg){
        	    				if(msg == 1){
        	    					//注册成功
        	    					alert("注册成功,请登入");
        	    					location.href="login.jsp";
        	    				}else if(msg != 1){
        	    					alert("注册失败，请检查网络或联系管理员");
        	    				}
        	    			}		    	    				
    	    			})
    	    		}
    		}
    	}
    </script>
</body>
</html>
