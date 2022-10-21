<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历-奇迹才聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="奇迹才聘网是互联网领域垂直招聘网站,互联网职业机会尽在奇迹才聘网">
<meta name="keywords" content="奇迹才聘,奇迹才聘网,奇迹才聘招聘 ,互联网招聘,奇迹才聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 奇迹才聘官网, 奇迹才聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<!-- <script src="style/js/additional-methods.js" type="text/javascript"></script> -->
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
	check();
	myajax(1,2,'${logincustomer.u_userid}');
});

</script>

<script type="text/javascript">



function myajax(page,size,userid){	

$.ajax({
	url:"DoPosition",
	type:"GET",
	data:{flag:"getpositionByuseridandajax",page:page,size:size,userid:userid},
	dataType: "json",
	success: function(msg){
		var str ="";
		console.log(msg);
		for(let i=0;i < msg.msgobject.length;i++){
		str = str+'<li class="odd clearfix"><div  align="" style="border:1px solid #019875 ;width:600px;margin:0 auto;"><div class="mb10" align="center">'+
         '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="DoPosition?flag=GetFirmPositionDetailByPid&p_id=${pageScope.firmposition.p_id}"  title="前端开发" target="_blank">'+
         ''+msg.msgobject[i].p_name+'</a> &nbsp;'+
         '<span class="c9">'+msg.msgobject[i].p_address+'</span></div>'+
        '&nbsp;&nbsp;&nbsp;&nbsp;<span><em class="c7">月薪：</em>'+msg.msgobject[i].p_salary+'&nbsp;</span>'+
        '<span><em class="c7">联系电话：</em>'+msg.msgobject[i].p_tel+'&nbsp;</span>'+
        '<span><em class="c7">最低学历： </em>'+msg.msgobject[i].p_graduation+'&nbsp;</span>'+
        '<span><em class="c7">邮箱：</em>'+msg.msgobject[i].p_email+'&nbsp;</span><br>'+ 
        '&nbsp;&nbsp;&nbsp;&nbsp;<span style="text-align:left"><em class="c7">岗位要求：</em>'+msg.msgobject[i].p_require+'&nbsp;</span><br>'+
        '&nbsp;&nbsp;&nbsp;&nbsp;<span><em class="c7">岗位介绍：</em>'+msg.msgobject[i].p_info+'</span><br>'+
         '&nbsp;&nbsp;&nbsp;&nbsp;<span><em class="c7">职位福利：</em>'+msg.msgobject[i].p_welfare+'</span></div></li>';
	}
		$("#basicInfo1").html(str);
		 var str2='<a href="javascript:myajax(1,'+msg.size+','+${logincustomer.u_userid}+')">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;'+
		 '<a href="javascript:myajax('+(msg.page-1)+','+msg.size+','+${logincustomer.u_userid}+')">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;'+
		 '<a href="javascript:myajax('+(msg.page+1)+','+msg.size+','+${logincustomer.u_userid}+')">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;'+
		 '<a href="javascript:myajax('+(msg.maxpage)+','+msg.size+','+${logincustomer.u_userid}+')">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;';
		 $("#mypagetool").html(str2);
	}
});
}
</script>
<script type="text/javascript">
		
		function check(){
			 $.ajax({
				 url:"DoCustomer",    //请求的地址
				 type:"GET",
				 data:{flag:"getSession1"}, //发送到servlet端的参数 
				 dataType:"json",
				 error : function() {
					 console.log(2);
					 alert('失败 ');
				 },
				 success: function(msg){
					let str="";
					console.log(msg);
					str=str+"<li>你好,"+msg.msgobject.u_username+"</li>\r\n" + 
					"					<li>|</li>\r\n" + 
					"					<li><a href=\'javascript:loginout()\' rel=\'nofollow\'>注销</a></li>";
					$("#loginTop").html(str);
				 }
			})
		};
		function loginout(){
			
			if(confirm('你确定要注销当前登录状态吗？')){
				
				location.href="DoCustomer?flag=loginout";
				
			}
			
		}
	</script>
</head>
<body>

<div id="body">
<div id="header">
			<div class="wrapper">
				<a href="index.jsp" class="logo"> <img
					src="style/images/logo.png" width="250px" height="60px"
					alt="奇迹才聘招聘-专注互联网招聘" />
				</a>
				<ul class="reset" id="navheader">
					<li class="current"><a href="index.jsp">首页</a></li>
					<li></li>
					<li></li>
					<li><a href="DoPosition?flag=ForGetFirmPositionByKey&size=7&page=1&key=" class=""target="_blank">查看岗位</a></li>
					<li></li>
					<li></li>
					<li><a href="jianli.jsp" rel="nofollow">我的简历</a></li>
					
				</ul>
				<ul class="loginTop" id="loginTop">
					<li><a href="login.jsp" rel="nofollow">登录</a></li>
					<li>|</li>
					<li><a href="register.jsp" rel="nofollow">注册</a></li>
				</ul>
			</div>
		</div>
	<!--  <div id="header">
    	<div class="wrapper">
    		<a class="logo" href="h/">
    			<img width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index.jsp">首页</a></li>
    			<li><a href="companylist.html">公司</a></li>
    			<li><a target="_blank" href="htoForum.html">职业预测</a></li>
    				    			<li class="current"><a rel="nofollow" href="jianli.html">我的简历</a></li>
	    						    		</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span>jason&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                                	<dd><a rel="nofollow" href="jianli.html">我的简历</a></dd>
                	                	<dd><a href="collections.html">我收藏的职位</a></dd>
                	                	                	<dd class="btm"><a href="subscribe.html">我的订阅</a></dd>
                	<dd><a href="create.html">我要招人</a></dd>
                                                <dd><a href="accountBind.html">帐号设置</a></dd>
                                <dd class="logout"><a rel="nofollow" href="login.jsp">退出</a></dd>
            </dl>
                                    <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div>--><!-- end #header -->
    <div id="container">
        
  		<div class="clearfix">
            <div class="content_l">
            	<div class="fl" id="resume_name">
	            	<div class="nameShow fl">
	            		<h1 title="jason的简历">已投递的简历</h1>
            		</div>
            		<form class="fl dn" id="resumeNameForm">
            			<input type="text" value="jason的简历" name="resumeName" class="nameEdit c9">	
            			<input type="submit" value="保存"> | <a target="_blank" href="h/resume/preview.html">预览</a>
            		</form>
            	</div><!--end #resume_name-->
            	<div class="fr c5" id="lastChangedTime"><span></span></div><!--end #lastChangedTime-->
            	

            	            	
            	
            	<div class="profile_box" id="basicInfo1">
            	 <h2>我的简历</h2>
            		
            	 <div class="basicShow">
            		<h1><a href="MyRecord.jsp" >添加简历</a></h1>
            	</div>
            	
            	
            	</div>
            	
             
             
              <div align="center" id="mypagetool"> 
              <select id="myselected" onchange="myajax(this.value,2)">
              
              </select>
            </div>

            	
            		
            		<input type="hidden" id="expectJobVal" value="">
            		<input type="hidden" id="expectCityVal" value="">
            		<input type="hidden" id="typeVal" value="">
            		<input type="hidden" id="expectPositionVal" value="">
            		<input type="hidden" id="expectSalaryVal" value="">
            	</div><!--end #expectJob-->
            		
            	
            			
            			
            		
            		
            		            		

            	
            		
            		            		
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>我的信息</h2>
            		<a target="_blank" href="review.jsp">我投递的工作岗位</a>
            		<br>
            <a target="_blank" href="subscribe.html">我订阅的职位</a>
            	</div><!--end #myInfo-->

				<div class="mycenterR" id="myResume">
            		<h2>我的附件简历 
            			            			<a title="上传附件简历" href="#uploadFile" class="inline cboxElement">上传简历</a>
            			            		</h2>
            		<div class="resumeUploadDiv">
	            			            		暂无附件简历
	            		            		</div>
            	</div><!--end #myResume-->

            	<div class="mycenterR" id="resumeSet">
            		<h2>投递简历设置  <span>修改设置</span></h2>
            		<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
            			<div class="noSet set0 dn">默认使用<span>附件简历</span>进行投递</div>
            			<div class="noSet set1 dn">默认使用<span>在线简历</span>进行投递</div>
						<div class="noSet">暂未设置默认投递简历</div>
            		            		<input type="hidden" class="defaultResume" value="-1">
            		<form class="dn" id="resumeSetForm">
	            		<label><input type="radio" value="1" class="resume1" name="resume">默认使用<span>在线简历</span>进行投递</label>
	            		<label><input type="radio" value="0" class="resume0" name="resume">默认使用<span>附件简历</span>进行投递</label>
	            		<span class="setTip error"></span>
	            		<div class="resumeTip">设置后投递简历时将不再提醒</div>
	            		<input type="submit" value="保 存" class="btn_profile_save">
						<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            	</form>
            	</div><!--end #resumeSet-->
				
				<div class="mycenterR" id="myShare">
            		<h2>当前每日投递量：10个</h2>
            		<a target="_blank" href="h/share/invite.html">邀请好友，提升投递量</a>
            	</div><!--end #myShare-->
            	
								
				<div class="greybg qrcode mt20">
                	<img width="242" height="242" alt="奇迹才聘微信公众号二维码" src="style/images/qr_resume.png">
                    <span class="c7">微信扫一扫，轻松找工作</span>
                </div>
            </div><!--end .content_r-->
        </div>
        
      <input type="hidden" id="userid" name="userid" value="314873">

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 上传简历 -->
	<div class="popup" id="uploadFile">
	    <table width="100%">
	    	<tbody><tr>
	        	<td align="center">
	                <form>
	                    <a class="btn_addPic" href="javascript:void(0);">
	                    	<span>选择上传文件</span>
	                        <input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')" class="filePrew" id="resumeUpload" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3">
	                    </a>
	                </form>
	            </td>
	        </tr>
	    	<tr>
	        	<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M</td>
	        </tr>
	        <tr>
	        	<td align="left" style="color:#dd4a38; padding-top:10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
	        </tr>
	    	<tr>
	        	<td align="center"><img width="55" height="16" alt="loading" style="visibility: hidden;" id="loadingImg" src="style/images/loading.gif"></td>
	        </tr>
	    </tbody></table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div class="popup" id="uploadFileSuccess">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tbody><tr>
                 <td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
             </tr>
         	<tr>
             	<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
             </tr>
         </tbody></table>
     </div><!--/#uploadFileSuccess-->
     
	<!-- 没有简历请上传 -->
    <div class="popup" id="deliverResumesNo">
        <table width="100%">
            <tbody><tr>
                <td align="center"><p class="font_16">你在奇迹才聘还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form>
                        <a class="btn_addPic" href="javascript:void(0);">
                        	<span>选择上传文件</span>
                        	<input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')" class="filePrew" id="resumeUpload1" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M">
                        </a>
                    </form>
                </td>
            </tr>
        	<tr>
            	<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumesNo-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUpload">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">请上传标准格式的word简历</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		操作说明：<br>
                		打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#fileResumeUpload-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUploadSize">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">上传文件大小超出限制</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		提示：<br>
                		单个附件不能超过10M，请重新选择附件简历！
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumeConfirm-->
    
</div>
<!------------------------------------- end ----------------------------------------->  

<script src="style/js/Chart.min.js" type="text/javascript"></script>
<script src="style/js/profile.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
		<a class="close" href="javascript:;"></a>
	</div>
</div>
<script>
$(function(){
	$.ajax({
        url:ctx+"/mycenter/showQRCode",
        type:"GET",
        async:false
   	}).done(function(data){
        if(data.success){
             $('#qr_cloud_resume img').attr("src",data.content);
        }
   	}); 
	var sessionId = "resumeQR"+314873;
	if(!$.cookie(sessionId)){
		$.cookie(sessionId, 0, {expires: 1});
	}
	if($.cookie(sessionId) &amp;&amp; $.cookie(sessionId) != 5){
		$('#qr_cloud_resume').removeClass('dn');
	}
	$('#qr_cloud_resume .close').click(function(){
		$('#qr_cloud_resume').fadeOut(200);
		resumeQR = parseInt($.cookie(sessionId)) + 1;
		$.cookie(sessionId, resumeQR, {expires: 1});
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="h/about.html">联系我们</a>
		    <a target="_blank" href="http://www.baidu.com">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href=https://weibo.com/u/5704043792>奇迹才聘微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->

<script type="text/javascript">
$(function(){
	
	console.log(222);
	check();
	
});

var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
function mydelete(op){
	if(op==''){
		alert("没有对应id的简历，无法删除");
		return;
	}
	
	if(confirm('你确定要删除这个简历吗？')){		
		if(confirm('删除之后不能恢复，你确定要删除吗？')){
			location.href="DoRecord?flag=deleteRecordByRid&r_recordid="+op;	
		}
		
	}
}
function check(){
	$.ajax({
		 url:"DoCustomer",    //请求的地址
		 type:"GET",
		 data:{flag:"getSession2"}, //发送到servlet端的参数 
		 dataType:"json",
		 error : function() {
			 alert('请先登录！');
			 location.href='login.jsp';
		 },
		 success: function(msg){
			 check1();
		 }		 
		});
}
function check1(){
	 $.ajax({
		 url:"DoCustomer",    //请求的地址
		 type:"GET",
		 data:{flag:"getSession1"}, //发送到servlet端的参数 
		 dataType:"json",
		 error : function() {
			 console.log(2);
			 alert('失败 ');
		 },
		 success: function(msg){
			let str="";
			console.log(msg);
			str=str+"<li>你好,"+msg.msgobject.u_username+"</li>\r\n" + 
			"					<li>|</li>\r\n" + 
			"					<li><a href=\'javascript:loginout()\' rel=\'nofollow\'>注销</a></li>";
			$("#loginTop").html(str);
			myajax(1,3);
		 }
	
	})
};
function loginout(){
	
	if(confirm('你确定要注销当前登录状态吗？')){
		
		location.href="DoCustomer?flag=loginout";
		
	}
	
}
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>