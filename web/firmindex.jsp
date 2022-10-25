
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script>
//当html文件都加载完毕时
$(document).ready(function(){
	myajax(1,2,'${loginfirm.firm_id}');
});
</script>

<script>


function myajax(page,size,firm_id){
	$.ajax({
		type:"GET",
		url:"queryfirmposition.do",
		data:{flag:"queryfirmposition",page:page,size:size,firm_id:firm_id},
		dataType: "json",
		success: function(msg){
			//alert(msg.msgobject[1].p_address);
			var str ='';
			//alert("p_id="+msg.msgobject[0].p_id);
			for(let i=0;i < msg.msgobject.length;i++){
				str=str+'<div class="addnew" ><span class="c9">工作地址:'+msg.msgobject[i].p_address+'</span>&nbsp;&nbsp;&nbsp;&nbsp;'
				+'<span><em class="c7">工作类型：<a class="c7" onclick="jump('+msg.msgobject[i].p_id+')">'+msg.msgobject[i].p_type+'</a></span>&nbsp;&nbsp;&nbsp;&nbsp;'+
                '<br><span><em class="c7">月薪：'+msg.msgobject[i].p_salary+'</span>&nbsp;&nbsp;&nbsp;&nbsp;'+
                
                '<span><em class="c7">最低学历：'+msg.msgobject[i].p_graduation+'</span>&nbsp;&nbsp;&nbsp;&nbsp;'+
                '<br><span><em class="c7">职位福利：'+msg.msgobject[i].p_welfare+'</span> </div><br>'+
                '<p style="text-align: center"><a href="getPositionById.do?p_id='+msg.msgobject[i].p_id+'&p_firmid='+${loginfirm.firm_id}+'">查看编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
                '<a href="delPositionById.do?p_id='+msg.msgobject[i].p_id+'">删除岗位</a></p>';
                		
			}
			 $("#position").html(str);
			 var str2='<a href="javascript:myajax(1,'+msg.size+','+${loginfirm.firm_id}+')">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;'+
			 '<a href="javascript:myajax('+(msg.page-1)+','+msg.size+','+${loginfirm.firm_id}+')">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;'+
			 '<a href="javascript:myajax('+(msg.page+1)+','+msg.size+','+${loginfirm.firm_id}+')">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;'+
			 '<a href="javascript:myajax('+(msg.maxpage)+','+msg.size+','+${loginfirm.firm_id}+')">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;';
			 $("#mypage").html(str2);
		}
	});
}
</script>
<script>
function jump(positionid){
	//location.href="firmRecivedResume.jsp?positionid="+positionid;
	location.href="getRecordByPositionId.do?positionid="+positionid+"&status=4";
}
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
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
                    <dd class="logout"><a rel="nofollow" href="firmout.do">退出</a></dd>
            	</dl>
          </div>
    </div>
    <!-- end #header -->
    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">
        				
            <div class="content_l"> 
            		<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>公司详情</h2>
		                    	
		                    </dt>
		        	</dl>
		        	<div class="clear"></div>
		            <div class="c_breakline"></div>             
	                <div class="c_detail">
	                	<div style="background-color:#fff;" class="c_logo">
							<c:if test="${sessionScope.loginfirm.firm_logo==''}">
								<img width="190" height="190" alt="公司logo" src="style/images/logo_default.png">
							</c:if>
							<c:if test="${loginfirm.firm_logo!=''}">
								<img id="MYIMG" width="190" height="190" src="uploadimg/${sessionScope.loginfirm.firm_logo}" >
							</c:if>
	                        </a>
		                </div>

		                <div class="c_logo" style="background-color:#fff;">
			                <div id="logoShow">
								<c:if test="${sessionScope.loginfirm.firm_logo==''}">
									<img width="190" height="190" alt="公司logo" src="style/images/logo_default.png">
								</c:if>
								<c:if test="${loginfirm.firm_logo!=''}">
									<img id="MYIMG" width="190" height="190" src="uploadimg/${sessionScope.loginfirm.firm_logo}" >
								</c:if>
								</a>
		                    </div>
			            </div>
		                <span class="error" id="logo_error" style="display:none;"></span>
	                    <div class="c_box companyName">
	                    	<h2 title="公司名称">公司名称</h2>
	                        	<em class="unvalid"></em>
                        		<span class="va dn" style="display: none;">奇迹才聘未认证企业</span>
	                        	<div class="clear"></div>
	                       		<h1  class="fullname">${sessionScope.loginfirm.firm_realname }</h1>
	                       		
	                       		<div class="clear oneword" style="display: block;"><span>社会信用代码：</span>
	                       			<img width="17" height="15" src="style/images/quote_l.png">&nbsp; 
	                       			<span>${sessionScope.loginfirm.firm_creditcode}</span> &nbsp;<img width="17" height="15" src="style/images/quote_r.png">
	                       		</div>
	                      
	                        	<div class="clear oneword" style="display: block;"><span>公司地址：</span>
	                        		<img width="17" height="15" src="style/images/quote_l.png">&nbsp;
	                        	 	<span>${sessionScope.loginfirm.firm_address}</span> &nbsp;<img width="17" height="15" src="style/images/quote_r.png">
	                        	</div>
	           
	                       		<div class="clear oneword" style="display: block;"><span>注册时间：</span>
	                       			<img width="17" height="15" src="style/images/quote_l.png">&nbsp; 
	                       			<span>${sessionScope.loginfirm.firm_birthday}</span> &nbsp;<img width="17" height="15" src="style/images/quote_r.png">
	                       		</div>
	                       		
	                       		<div class="clear oneword" style="display: block;"><span>公司类型：</span>
	                       			<img width="17" height="15" src="style/images/quote_l.png">&nbsp; 
	                       			<span>${sessionScope.loginfirm.firm_type}</span> &nbsp;<img width="17" height="15" src="style/images/quote_r.png">
	                       		</div>
	                       		
	                    </div>
	                	<div class="clear"></div>
	                </div>
                	<div class="c_breakline"></div>
       				
       				<div id="Profile">
			         	<div class="profile_wrap">
					             
					        <!--有介绍-->
					          <dl class="c_section" style="display: block;">
					               <dt>
					                    <h2><em></em>公司介绍</h2>
					               </dt>
					               <dd>
					                     <div class="c_intro">${sessionScope.loginfirm.firm_info}</div>
					               </dd>
					         </dl>
				        </div>
	     			</div><!-- end #Profile -->
      	
      	<!--[if IE 7]> <br /> <![endif]-->
	    
	        	 		        	<!--无招聘职位-->
						<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>招聘职位</h2>
		                    </dt>
		                    
		                    <dd>
		                    	<div id="position">
		                    	
		                    	</div>
		                    	<div align="center" id="mypage">
		                    	
		                    	</div>
		                    </dd>
		                </dl>
	          	
	        
            </div>	<!-- end .content_l -->
            
            <div class="content_r">
            	<div id="Tags">
	            	<div id="c_tags_show" class="c_tags solveWrap" style="display: block;">
	                    <table>
	                    	<tbody>
	                    		<tr>
	                    		<td>电话</td><td>${sessionScope.loginfirm.firm_tel}</td>
	                    		</tr>
	                    		<tr><td>邮箱</td><td>${sessionScope.loginfirm.firm_email}</td>
	                    		</tr>
	                    		
	                    	</tbody>
	                    </table>
	                </div>
	                
       			</div><!-- end #Tags -->
       			
	       		<div id="Member">		
		       			       		<!--有创始团队-->
		                <dl class="c_section c_member">
		                	<dt>
		                    	<h2><em></em>公司法人</h2>
	                    				                    </dt>
		                    <dd> 
		                    			                    				                    
			       					<div class="member_wrap">
			       						
				                        <!-- 显示联系人 -->
				                    	<div class="member_info">
				                        	<div class="m_portrait">
				                            	<div></div>
				                            	<img width="120" height="120" alt="孙泰英" src="style/images/leader_default.png">
					                        </div>
				                            <div class="m_name">${sessionScope.loginfirm.firm_legalperson}</div>
				                            <div class="m_position">法人</div>
				                    		<div class="m_intro">有合作意向可以使用电子邮箱或在工作时间拨打公司联系电话，期待与您的合作！</div>
				                        </div>
				                        
				                     </div><!-- end .member_wrap -->
				                     				                 		                    </dd>
		                </dl>
		       			       	</div> <!-- end #Member -->
	       		
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