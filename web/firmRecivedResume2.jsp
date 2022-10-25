<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>奇迹才聘网-最专业的互联网招聘平台</title>


<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
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
var positionid='${requestScope.positionid}';
</script> 
<script src="style/js/conv.js" type="text/javascript"></script>

<script>


//html标签都加载完毕后触发


//当所有的htm文件加载完毕后触发
$(document).ready(function(){
    //获取最大页数
    let maxpage='${requestScope.maxpage}';
    let currentPage='${requestScope.page}';
    let status='${requestScope.status}';
    if(status == 0){
    	$("#jianliType").html("未处理的简历"); 
    }else if(status == 2){
    	$("#jianliType").html("已经处理的简历"); 
    }else if(status == 3){
    	$("#jianliType").html("未通过的简历");
    }else{
    	$("#jianliType").html("全部简历");
    }
    //alert("maxPage="+maxpage+"; currrentPage="+currentPage+"; positionid="+positionid+" ;status="+status);
    let str="";
    if(maxpage!=''&&currentPage!=''){
 	   maxpage=parseInt(maxpage);
 	   currentPage=parseInt(currentPage);
 	 for(let i=0;i<maxpage;i++)  
 	   {
 		 if(currentPage==(i+1)){
 			 str=str+"第"+(i+1)+"页&nbsp;&nbsp;"	  
 		 }else{
 			 str=str+"<a href='getRecordByPositionId.do?positionid="+positionid+"&size=5&status="+status+"&page="+(i+1)+"'>第"+(i+1)+"页</a>&nbsp;&nbsp;"
 		 }
 		
 	   }
 	  $("#myspan").html(str); 
 	
    }
	
});



</script>
<script>
function updateSate(rs_id,status,positionid){
	
	location.href="updateReocrdPositionStatus.do?rs_id="+rs_id+"&status="+status+"&positionid="+positionid;
}

function jumpjianliType(status){
	
	if(status==2){
		$("#jianliType").html("已通知的简历");
		location.href="getRecordByPositionId.do?positionid="+positionid+"&status=2";
	}else if(status==3){
		$("#jianliType").html("不适合的简历");
		location.href="getRecordByPositionId.do?positionid="+positionid+"&status=3";
	}else if (status == 0){
		$("#jianliType").html("未查看的的简历");
		location.href="getRecordByPositionId.do?positionid="+positionid+"&status=0";
	}else{
		$("#jianliType").html("全部简历");
		location.href="getRecordByPositionId.do?positionid="+positionid+"&status=4";
	}
}

function showrecordByid(recordid){
	location.href="getRecordByRIdInFirm.do?r_recordid="+recordid;
}
</script>

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
    	<div class="sidebar">
        	<a class="btn_create" href="create.html">发布新职位</a>
            <dl class="company_center_aside">
		<dt>该岗位收到的简历</dt>
		
		<dd class="">
		<a onclick="jumpjianliType(4)">全部简历</a> 
		</dd>
		<dd>
		<a onclick="jumpjianliType(0)">待处理简历</a>
		<dd>
		<a onclick="jumpjianliType(2)">已通知面试简历</a>
		</dd>
		<dd>
		<a onclick="jumpjianliType(3)">不合适简历</a>
		</dd>
	
</dl>
<dl class="company_center_aside">
		<dt>我发布的职位</dt>
			<dd>
		<a href="positions.html">有效职位</a>
	</dd>
	<dd>
		<a href="positions.html">已下线职位</a>
	</dd>
	</dl>
            </div><!-- end .sidebar -->
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1 >
                            <em></em>
                            <div id="jianliType">全部简历 </div>    </h1>
                    </dt>
                    <dd>
                    	<form action="canInterviewResumes.html" method="get" id="filterForm">
	                    			                    	<div class="filter_actions">
		                        	<label class="checkbox">
		                        		<input type="checkbox">
		                                <i></i>
		                        	</label>
		                            <span>全选</span>
		                        	<a id="resumeRefuseAll">查看</a>
		                            <div id="filter_btn" class="">筛选简历 <em class=""></em></div>
		                        </div><!-- end .filter_actions -->
		                        <div class="filter_options  dn " style="display: none;">
 	<dl>
     	<dt>简历状态：</dt>
         <dd>
         	         	<a rel="-1" class="current" href="javascript:;">不限</a>
         	         	<a rel="1" href="javascript:;">未阅读</a>
         	         	<a rel="2" href="javascript:;">已阅读</a>
         	         	<a rel="3" href="javascript:;">已转发</a>
         	         	<input type="hidden" value="-1" name="resumeStatus">
         </dd>
     </dl>
 	
     <dl>
     	<dt>工作经验：</dt>
         <dd>
         	         	<a rel="-1" class="current" href="javascript:;">不限</a>
         	         	<a rel="1" href="javascript:;">应届毕业生</a>
         	         	<a rel="2" href="javascript:;">一年以下</a>
         	         	<a rel="3" href="javascript:;">1-3年</a>
         	         	<a rel="4" href="javascript:;">3-5年</a>
         	         	<a rel="5" href="javascript:;">5-10年</a>
         	         	<a rel="6" href="javascript:;">10年以上</a>
         	         	<input type="hidden" value="-1" name="workExp">
         </dd>
     </dl>
     <dl>
     	<dt>最低学历：</dt>
         <dd>
         	         	<a rel="-1" class="current" href="javascript:;">不限</a>
         	         	<a rel="1" href="javascript:;">大专及以上</a>
         	         	<a rel="2" href="javascript:;">本科及以上</a>
         	         	<a rel="3" href="javascript:;">硕士及以上</a>
         	         	<a rel="4" href="javascript:;">博士及以上</a>
         	         	<input type="hidden" value="-1" name="eduExp">
         </dd>
     </dl>
          <input type="hidden" value="0" name="filterStatus" id="filterStatus">
     <input type="hidden" value="" name="positionId" id="positionId">
 </div><!-- end .filter_options -->	
 
<c:forEach items="${requestScope.list}" var="RecordPositionDto">
 	<ul class="reset resumeLists"><li data-id="" class="onlineResume">
                
         		 <div class="resumeShow">
         			  <a title="预览在线简历" target="_blank" class="resumeImg"><img src="style/images/default_headpic.png"></a>
         			  <div class="resumeIntro">
         			        <h3 class="unread"><a onclick="showrecordByid(${pageScope.RecordPositionDto.rs_recordid})">${pageScope.RecordPositionDto.r_name}的简历 </a><em></em></h3> 
         			        <span class="fr">投递时间：2014-07-01 17:08</span>
         			  		<div>${pageScope.RecordPositionDto.r_name} / ${pageScope.RecordPositionDto.r_sex} / ${pageScope.RecordPositionDto.r_graduation} / ${pageScope.RecordPositionDto.r_workedyear} / ${pageScope.RecordPositionDto.r_city}<br>
         			  		  	 ${pageScope.RecordPositionDto.r_graduation} · ${pageScope.RecordPositionDto.r_school}
         			  		</div>
         				    <div class="jdpublisher"><span>应聘职位：${pageScope.RecordPositionDto.p_name}</span></div>
         			  </div>
         			<div class="links">
         			<input type="hidden"  value="${pageScope.RecordPositionDto.rs_positionid}" name="positionid"></input>
         			 <a data-deliverid="rs_recordid" data-name="${pageScope.RecordPositionDto.r_name}" data-positionid="${pageScope.RecordPositionDto.r_email}+" class="resume_notice" onclick="updateSate(${pageScope.RecordPositionDto.rs_id},2,${pageScope.RecordPositionDto.rs_positionid})">通知面试</a>
         			 <a data-deliverid="rs_recordid" class="resume_refuse" onclick="updateSate(${pageScope.RecordPositionDto.rs_id},3,${pageScope.RecordPositionDto.rs_positionid})">不合适</a>
         			</div>	   
         			<div class="contactInfo" style="margin-left: 0px;">
         			 <span class="c9">电话：</span>${pageScope.RecordPositionDto.r_tel}  &nbsp;&nbsp;&nbsp; 
         			 <span class="c9">邮箱：</span><a>${pageScope.RecordPositionDto.r_email}</a>
         		</div><li></ul>'
 
</c:forEach> 
  <!-- end .resumeLists -->
		    </form>
                    </dd>
      <div id="mydiv1" align="center">
      		<a href="javascript:myajax(1,3)">首页</a>&nbsp;&nbsp;
            <a href="javascript:myajax('+(msg.page-1)+',3)">上一页</a>&nbsp;&nbsp;
            <span id="myspan"></span>
            <a href="javascript:myajax('+(msg.page+1)+','+msg.size+')">下一页</a>&nbsp;&nbsp;
            <a href="javascript:myajax('+msg.maxPage+','+msg.size+')">尾页</a>
 	  </div>                     
      
      	                
           
               
                </dl><!-- end .company_center_content -->
            </div><!-- end .content -->
 
<!------------------------------------- 弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!--通知面试弹窗-->	
    <div style="overflow:auto;" class="popup" id="noticeInterview">
	    <form id="noticeInterviewForm">
	     	<table width="100%" class="f16">
	         	<tbody><tr>
	         		<td width="20%" align="right" class="c9">收件人  </td>
	         		<td width="80%"> 
	         			<span class="c9" id="receiveEmail"></span> 
	         			<input type="hidden" value="" name="email">
	         		</td>
	         	</tr>
	         	<tr>
	             	<td align="right"><span class="redstar">*</span>主题</td>
	             	<td>
						<input type="text" placeholder="公司：职位名称面试通知" name="subject">
					</td>
	           	</tr>
	           	<tr>
	             	<td align="right"><span class="redstar">*</span>面试时间</td>
	             	<td>
						<input type="text" id="datetimepicker" name="interTime" class="hasDatepicker">
					</td>
	           	</tr>
	           	<tr>
	             	<td align="right"><span class="redstar">*</span>面试地点</td>
	             	<td>
						<input type="text" name="interAdd">
					</td>
	           	</tr>
	           	<tr>
	             	<td align="right">联系人</td>
	             	<td>
						<input type="text" name="linkMan">
					</td>
	           	</tr>
	           	<tr>
	             	<td align="right"><span class="redstar">*</span>联系电话</td>
	             	<td>
						<input type="text" name="linkPhone">
					</td>
	           	</tr>
	           	<tr>
	             	<td valign="top" align="right">补充内容</td>
	             	<td>
						<textarea name="content"></textarea>
					</td>
	           	</tr>
	            <tr>
	            	<td></td>
	             	<td>
	             		<input type="submit" value="发送" class="btn">
	             		<a class="emailPreview" href="javascript:;">预览</a>
	             	</td>
	             </tr>
	         </tbody></table>
			<input type="hidden" value="" name="name">
			<input type="hidden" value="" name="positionName">
			<input type="hidden" value="" name="companyName">
			<input type="hidden" value="" name="deliverId">
        </form>
    </div><!--/#noticeInterview-->
    
    <!--预览通知面试弹窗-->	
    <div class="popup" id="noticeInterviewPreview">
    	<div class="f18">奇迹才聘网：产品经理面试通知 </div>
        <div class="c9">发给：<span>2215545969@qq.com</span></div>
		<div id="emailText"></div>      
        <input type="button" value="提交" class="btn fl">
        <a title="通知面试" class="inline fl cboxElement" href="#noticeInterview">返回修改</a>
    </div><!--/#noticeInterviewPreview-->
    
    <!--通知面试成功弹窗-->	
    <div class="popup" id="noticeInterviewSuccess">
	   	<table width="100%" class="f16">
         	<tbody><tr>
         		<td align="center" class="f16">
         			面试通知已发送成功<br>
         			 该简历已进入“已通知面试简历”列表
         		</td>
         	</tr>
         	 <tr>
             	<td align="center">
             		<input type="button" value="确认" class="btn">
             	</td>
             </tr>
        </tbody></table>
    </div><!--/#noticeInterviewSuccess-->
    
    <!--转发简历弹窗-->	
    <div class="popup" id="forwardResume">
	     <form id="forwardResumeForm">
	     	<table width="100%" class="f16">
	           	<tbody><tr>
	             	<td width="20%" align="right">收件人</td>
	             	<td width="80%">
						<input type="text" placeholder="最多可添加两个邮箱，用“；”隔开" id="recipients" name="recipients">
						<span id="forwardResumeError" style="display:none" class="beError"></span>
					</td>					
	           	</tr>
	           	<tr>
	             	<td align="right">主题</td>
	             	<td>
						<input type="text" value="" name="title">
					</td>
	           	</tr>
	           	<tr>
	             	<td valign="top" align="right">正文</td>
	             	<td>
						<textarea name="content"></textarea>
						<span style="display:none;" class="beError error"></span>
					</td>
	           	</tr>
	            <tr>
	            	<td></td>
	             	<td>
	             		<input type="submit" value="发送" class="btn">
	             		<a class="emial_cancel" href="javascript:;">取消</a>
	             	</td>
	             </tr>
	        </tbody></table>
			<input type="hidden" value="" name="resumeKey">
			<input type="hidden" value="" name="positionId">
			<input type="hidden" value="" name="deliverId">
        </form>
    </div><!--/#forwardResume-->
    
    <!--转发简历成功弹窗-->	
    <div class="popup" id="forwardResumeSuccess">
	   	<table width="100%" class="f16">
         	<tbody><tr>
         		<td align="center" class="f16">简历已转发成功  </td>
         	</tr>
         	 <tr>
             	<td align="center">
             		<input type="button" value="确认" class="btn">
             	</td>
             </tr>
        </tbody></table>
    </div><!--/#forwardResumeSuccess-->
    
    <!--确认不合适弹窗-->	
    <div style="height:400px;" class="popup" id="confirmRefuse">
	    <form id="refuseMailForm">
	     	<table width="100%">
	         	<tbody><tr>
	         		<td>
	         			<div class="refuse_icon">
	         				<h3>确认这份简历不合适吗？</h3>
	         				<span>确认后，系统将自动发送以下内容至用户邮箱</span>
	         			</div>
	         		</td>
	         	</tr>
	         	<tr>
	             	<td>
	             		<textarea name="content">非常荣幸收到您的简历，在我们仔细阅读您的简历之后，却不得不很遗憾的通知您：
您的简历与该职位的定位有些不匹配，因此无法进入面试。

但您的信息已录入我司人才储备库，当有合适您的职位开放时我们将第一时间联系您，希望在未来我们有机会成为一起拼搏的同事；
再次感谢您对我们的信任，祝您早日找到满意的工作。</textarea>
	             	</td>
	            </tr>
	            <tr>
	             	<td>
	             		<input type="submit" value="确认不合适" class="btn">
	             		<a class="emial_cancel" href="javascript:;">取消</a>
	             	</td>
	            </tr>
	        </tbody></table>
	        <input type="hidden" value="" name="deliverId">
        </form>
    </div><!--/#confirmRefuse-->
    
    <!--拒绝email成功弹窗-->	
    <div class="popup" id="refuseMailSuccess">
	   	<table width="100%" class="f16">
         	<tbody><tr>
         		<td align="center" class="f16">
         			不合适通知已发送成功<br>
         			该简历已进入“不合适简历”列表
         		</td>
         	</tr>
         	 <tr>
             	<td align="center">
             		<input type="button" value="确认" class="btn">
             	</td>
             </tr>
        </tbody></table>
    </div><!--/#refuseMailSuccess-->
</div>
<!------------------------------------- end -----------------------------------------> <script src="style/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
<script src="style/js/received_resumes.min.js" type="text/javascript"></script> 
<script>
</script>  
			<div class="clear"></div>
			<input type="hidden" value="b4bc225f0d084ee5b8d045f9c98a49ff" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.baidu.com">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="https://weibo.com/u/5704043792">奇迹才聘微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->



<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div><div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" id="ui-datepicker-div"></div></body></html>