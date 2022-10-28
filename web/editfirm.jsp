
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>编辑公司信息</title>
<meta content="23635710066417756375" property="qc:admins">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">

console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>

<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->

<script src="style/js/conv.js" type="text/javascript"></script>


</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index.jsp">
    			<img width="229" height="43" alt="奇迹才聘招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li class="current"><a href="firmindex.jsp">公司</a></li>
	    		<li><a rel="nofollow" href="createjob.jsp">发布职位</a></li>
	    		<li><a rel="nofollow" href="editfirm.jsp">编辑公司信息</a></li>
	    		<li><a rel="nofollow" href="myjob.jsp">已经发布的岗位</a></li>
	    	</ul>
        	     <dl class="collapsible_menu">
            	<dt>
           			<span>${loginfirm.firm_realname} &nbsp;</span> 
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                    <dd><a href="positions.html">我发布的职位</a></dd>
                    <dd><a href="editfirm.jsp">帐号设置</a></dd>
                    <dd class="logout"><a rel="nofollow" href="/firmout.do">退出</a></dd>
            	</dl>
          </div>
    </div>
    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">
        				
            <div class="content_l" style="width: 1000px;" >    
            	<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>完善公司信息</h2>
		                    </dt>
		        </dl>
		        	<div class="clear"></div>
		            <div class="c_breakline"></div>   
	                <div class="c_detail" style="float:left;height: 2px;width: 650px;" >
	                	<div style="background-color:#fff;" class="c_logo">
								<div >
									<c:if test="${sessionScope.loginfirm.firm_logo==''}">
										<img id="MYIMG" width="190" height="190" alt="公司logo" src="style/images/logo_default.png">
									</c:if>
									<c:if test="${loginfirm.firm_logo!=''}">
										<img id="MYIMG" width="190" height="190" src="uploadimg/${sessionScope.loginfirm.firm_logo}" >
									</c:if>
									<a>点击图片更换头像</a>
									<input style="left: 0px;" type="file" id="uploadimg" accept="image/*" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="showUpload(this)">
								</div>
								<script type="text/javascript">
								function showUpload(file){
									//选择之后显示到img中
										var reader = new FileReader();	// 实例化一个FileReader对象，用于读取文件
										var img = document.getElementById('MYIMG'); 	// 获取要显示图片的标签
										let id = $("#MYIMG");
										//读取File对象的数据
										reader.onload = function(evt){
											img.width  =  "190";
									        img.height =  "190";
											img.src = evt.target.result;

										}
									    reader.readAsDataURL(file.files[0]);

								}
								</script>
		                </div>
		                
		                
		                
	                    <div class="c_box companyName">
	                   
	                     <div class="clear"></div>
	                                        			
	                        <form class="clear editDetail" id="editDetailForm" action="editFirm.do" method="get">
	                        	<input type="hidden" name="flag" value="editFirm">
	                        	<input type="hidden" name = "firm_logo" id = "firm_logo" value="${sessionScope.loginfirm.firm_logo}"/>
	                            <input type="text" placeholder="请输入公司简称" maxlength="15" value="${sessionScope.loginfirm.firm_realname }" name="firm_realname" id="firm_realname">     
	                            <input type="text" placeholder="公司类型" maxlength="100" value="${sessionScope.loginfirm.firm_type }" name="firm_type" id="firm_type">
	                            
	                            <input type="text" placeholder="公司地址" maxlength="100" value="${sessionScope.loginfirm.firm_address }" name="firm_address" id="firm_address">
	                            <input type="text" placeholder="公司注册时间"  value="${sessionScope.loginfirm.firm_birthday }" name="firm_birthday" id="firm_birthday">
	                            <input type="text" placeholder="公司的18位社会信用代码" maxlength="20" value="${sessionScope.loginfirm.firm_creditcode }" name="firm_creditcode" id="firm_creditcode">
	                            <input type="text" placeholder="公司法人名字" maxlength="10" value="${sessionScope.loginfirm.firm_legalperson }" name="firm_legalperson" id="firm_legalperson">
	     
	                            <div class="clear"></div>
	                            <textarea style="width:400px;" placeholder="请分段详细描述公司简介、企业文化等" name="firm_info" id="firm_info" value="${sessionScope.loginfirm.firm_info }"></textarea>		                                       
						        <div class="clear"></div>
	                            <input type="button" value="保存" id="saveDetail" class="btn_small" onclick="MyUpload()">
	      
		                    </form>
	                            
	                       
	                    </div>
	                     <script type="text/javascript">
	                     	//图片文件上传
	                     	function MyUpload(){
	                     		let formData = new FormData();
								// 获取文件
								let fileData = $("#uploadimg").prop("files")[0];
								formData.append("uploadimg", fileData);
								let img = "";
								$.ajax({
									url :"uploadfile.do",
									type:"POST",
									data: formData,
									processData: false,
									contentType: false,
									success:function(msg){
										alert(msg);
										$("#firm_logo").val(msg);
										document.getElementById("editDetailForm").submit();
									}
								})
	                     	}
	                     </script>
	       
	                	<div class="clear"></div>
	                </div>
               
       	
       					<!-- end .content_l -->
            
            <div class="content_r" style="float:right;">

	       	<!--公司深度报道-->
            	<div id="Reported">	
	            		            
		            <dl class="c_section c_reported">
		            	<dt>
		                	<h2><em></em>公司深度报道</h2>
                   			
		                </dt> 
		                <dd>
		                
		                	<!-- 无报道 -->
	                        <div class="addnew_right reported_info">
	                        	快来完善公司信息，展示公司的良好面貌，
	                        <br>便于求职者了解公司！<br>
	                        </div>
	                        
				        </dd>
		            </dl><!-- end .c_reported -->
		       </div><!-- end #Reported -->
	       	
        </div>
   	</div>

<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<div style="width:650px;height:470px;" class="popup" id="logoUploader">
		<object width="650" height="470" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
		  <param value="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" name="movie">
		  <param value="high" name="quality">
		  <param value="opaque" name="wmode">
		  <param value="111.0.0.0" name="swfversion">
		  <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
		  <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		  <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
		  <!--[if !IE]>-->
		  <object width="650" height="470" data="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" type="application/x-shockwave-flash">
		    <!--<![endif]-->
		    <param value="high" name="quality">
		    <param value="opaque" name="wmode">
		    <param value="111.0.0.0" name="swfversion">
		    <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		    <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
		    <div>
		      <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
		      <p><a href="http://www.adobe.com/go/getflashplayer"><img width="112" height="33" src="style/images/get_flash_player.gif" alt="获取 Adobe Flash Player"></a></p>
		    </div>
		    <!--[if !IE]>-->
		  </object>
		  <!--<![endif]-->
		</object>
	</div><!-- #logoUploader -->
</div>
<!------------------------------------- end ----------------------------------------->

<script src="style/js/company.min.js" type="text/javascript"></script>
<script>
var avatar = {};
avatar.uploadComplate = function( data ){
	var result = eval('('+ data +')');
	if(result.success){
		jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
		jQuery.colorbox.close();
	}
};
</script>
			<div class="clear"></div>
			<input type="hidden" value="af5b64a9520a4b7da6287ff3400dde11" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.baidu.com">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href=https://weibo.com/u/5704043792>奇迹才聘微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>