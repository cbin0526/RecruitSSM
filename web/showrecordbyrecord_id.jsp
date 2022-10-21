<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历-奇迹才聘网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="奇迹才聘网是互联网领域垂直招聘网站,互联网职业机会尽在奇迹才聘网">
<meta name="keywords"
	content="奇迹才聘,奇迹才聘网,奇迹才聘招聘 ,互联网招聘,奇迹才聘互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 奇迹才聘官网, 奇迹才聘百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
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
<!-- <script src="style/js/additional-methods.js" type="text/javascript"></script> -->
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script>
<script src="style/js/conv.js" type="text/javascript"></script>

<script type="text/javascript">
function jumptoDoPosition(){
	
}		    		

</script>


</head>
<body>
	<div id="body">
		<div id="header">
			<div class="wrapper">
				<a class="logo" href="h/"> <img width="229" height="43"
					alt="奇迹才聘招聘-专注互联网招聘" src="style/images/logo.png">
				</a>
				<ul id="navheader" class="reset">
					<li><a href="index.jsp">首页</a></li>
					<li><a href="companylist.html">公司</a></li>
					<li><a target="_blank" href="htoForum.html">职业预测</a></li>
					<li class="current"><a rel="nofollow" href="jianli.html">我的简历</a></li>
				</ul>
				<dl class="collapsible_menu">
					<dt>
						<span>jason&nbsp;</span> <span class="red dn" id="noticeDot-0"></span>
						<i></i>
					</dt>
					<dd>
						<a rel="nofollow" href="jianli.html">我的简历</a>
					</dd>
					<dd>
						<a href="collections.html">我收藏的职位</a>
					</dd>
					<dd class="btm">
						<a href="subscribe.html">我的订阅</a>
					</dd>
					<dd>
						<a href="create.html">我要招人</a>
					</dd>
					<dd>
						<a href="accountBind.html">帐号设置</a>
					</dd>
					<dd class="logout">
						<a rel="nofollow" href="login.jsp">退出</a>
					</dd>
				</dl>
				<div class="dn" id="noticeTip">
					<span class="bot"></span> <span class="top"></span> <a
						target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
					<a class="closeNT" href="javascript:;"></a>
				</div>
			</div>
		</div>
		<!-- end #header -->
		<div id="container">

			<div class="clearfix">
				<div class="content_l" style="width: 1000px;">
					<div class="fl" id="resume_name">
						<div class="nameShow fl">
	            		<h1 title="我的简历">${MyRecord.r_name}的简历</h1>
            			</div>
					</div>
					<!--end #resume_name-->
					<!--  
					<div class="fr c5" id="lastChangedTime">
						最后一次更新：<span>2014-07-01 15:14 </span>
					</div>
					-->
					<!--end #lastChangedTime-->
					

					<div class="profile_box" id="basicInfo" style="float: left;">
						<h2>基本信息</h2>
						<span class="c_edit dn"></span>
						
						<!--end .basicShow-->

						<div class="basicEdit">
							<form id="profileForm" >
							 
							 <input type="hidden" id="MyRecordId" name="recordid" value="${MyRecord.r_recordid}">
							 <input type="hidden" name="r_count" value="${MyRecord.r_count}">
							 <input type="hidden" id="r_photo" name="r_photo" >
								<table>
									<tbody>
										
										<tr>
											<td><span display:inline>姓名:&nbsp;&nbsp;&nbsp;</span><input type="text" placeholder="姓名" value="${MyRecord.r_name}" name="r_name" readonly="true"></td>
											<td>
												<ul>
													<li class="current">男<em></em> <input type="radio" checked="checked" name="gender" value="男" readonly="true">
													</li>
													<li>女<em></em> <input type="radio" name="gender" value="女" readonly="true">
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											
											<td><span display:inline>年龄:&nbsp;&nbsp;&nbsp;</span><input type="text" placeholder="年龄" value="${MyRecord.r_age}" id="r_age" name="r_age" readonly="true"><span style="font:22px "微软雅黑","宋体",Arial">岁</span></td>
											
											<td><span display:inline>工作经验:&nbsp;&nbsp;&nbsp;</span><input type="text" placeholder="工作年限" value="${MyRecord.r_workedyear}" id="r_workedyear" name="r_workedyear" readonly="true">
												
													
													</ul>
												</div></td>
										</tr>
										<tr>
											
											<td colspan="3"><span display:inline>电话:&nbsp;&nbsp;&nbsp;</span><input type="text" placeholder="手机号码" value="${MyRecord.r_tel}" id="r_tel" name="r_tel" readonly="true"></td>
										</tr>
										<tr>
											<td colspan="3"><span display:inline>邮箱:&nbsp;&nbsp;&nbsp;</span><input type="text" placeholder="接收面试通知的邮箱" value="${MyRecord.r_email}" id="r_email" name="r_email" readonly="true"></td>
										</tr>
										
										<tr>
											<td><span display:inline>期望城市:&nbsp;&nbsp;&nbsp;</span>
												<input type="text" placeholder="期望城市，不限" value="${MyRecord.r_city}" id="r_city" name="r_city" readonly="true">
											</td>
										</tr>
										<tr>
											<td><span display:inline>应聘职位:&nbsp;&nbsp;&nbsp;</span>
											<input type="text" placeholder="期望职位" value="${MyRecord.r_position}" name="r_osition" id="r_position" readonly="true">
											</td>
											<td>
												<span display:inline>期望月薪:&nbsp;&nbsp;&nbsp;</span>
												<input type="text" placeholder="期望月薪：不限" value="${MyRecord.r_salary}" name="r_salary" id="r_salary" readonly="true">
											</td>
										</tr>
										<tr>
											<td>
											<span display:inline>毕业院校:&nbsp;&nbsp;&nbsp;</span>
											<input type="text" placeholder="学校名称" value="${MyRecord.r_school}" name="r_school" class="r_school" readonly="true"></td>
								
											<td>
												<span display:inline>最高学历:&nbsp;&nbsp;&nbsp;</span>
												<input type="text" placeholder="学历" value="${MyRecord.r_graduation}" id="r_graduation" name="r_graduation" readonly="true" >
											</td>
										</tr>
										<tr>
											<td>
												<span display:inline>专业名称:&nbsp;&nbsp;&nbsp;</span>
												<input type="text" placeholder="专业名称"name="r_professional" id="r_professional" value="${MyRecord.r_professional}" class="professionalName" readonly="true"></td>
										
											<td>
												<div class="fl">
													<span display:inline>毕业年份:&nbsp;&nbsp;&nbsp;</span>
		            								<input type="text" placeholder="毕业年份" value="${MyRecord.r_graduateyear}" name="r_graduateyear" id="r_graduateyear" readonly="true">
													
												</div>
												<div class="clear"></div>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<span display:inline>工作经历:&nbsp;&nbsp;&nbsp;</span>
												<textarea class="workExperience s_textarea" name="r_skill" id="r_skill" placeholder="工作经历" readonly="true">${MyRecord.r_skill}</textarea>
											</td>
										</tr>
										<tr>
											<td colspan="2">
											<span display:inline>自我介绍:&nbsp;&nbsp;&nbsp;</span>
											<textarea class="selfDescription s_textarea" name="r_info" id="r_info" placeholder="自我介绍" readonly="true">${MyRecord.r_info}</textarea>
											</td>
										
										<tr>
											<td></td>
											<td colspan="3">
											<input type="submit" value="返回" class="btn_profile_save" onclick="history.go(-1)">
											
										</tr>
									</tbody>
								</table>
							</form>
							<!--end #profileForm-->
							<div class="new_portrait">
								<div class="portrait_upload" id="portraitNo" style="display: none;">
									<span>上传自己的头像</span>
								</div>
								<div class="portraitShow dn" id="portraitShow" style="display: block;">
									<img id="MYIMG" width="120" height="120" src="uploadimg/${MyRecord.r_photo}" > <span>更换头像</span>
								</div>
								<input type="file" id="uploadimg" accept="image/*" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="showUpload(this)">
								<em> 尺寸：120*120px <br> 大小：小于5M
								</em> <span style="display: none;" id="headPic_error" class="error"></span>
								<script type="text/javascript">
								function showUpload(file){
										var reader = new FileReader();	// 实例化一个FileReader对象，用于读取文件
										var img = document.getElementById('MYIMG'); 	// 获取要显示图片的标签

										//读取File对象的数据
										reader.onload = function(evt){
											img.width  =  "120";
									        img.height =  "120";
											img.src = evt.target.result;
										}
									    reader.readAsDataURL(file.files[0]);
										
								}
								</script>
							</div>
							<!--end .new_portrait-->
						</div>
						<!--end .basicEdit-->
					</div>
					<!--end #basicInfo-->

					
				<!--end .content_l-->
				
			</div>

			<input type="hidden" id="userid" name="userid" value="314873">

			<!-------------------------------------弹窗lightbox ----------------------------------------->
			<div style="display: none; overflow:auto ;">
				<!-- 上传简历 -->
				<div class="popup" id="uploadFile">
					<table width="100%">
						<tbody>
							<tr>
								<td align="center">
									<form>
										<a class="btn_addPic" href="javascript:void(0);"> <span>选择上传文件</span>
											<input type="file"
											onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')"
											class="filePrew" id="resumeUpload" name="newResume" size="3"
											title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3">
										</a>
									</form>
								</td>
							</tr>
							<tr>
								<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M
								</td>
							</tr>
							<tr>
								<td align="left" style="color: #dd4a38; padding-top: 10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
							</tr>
							<tr>
								<td align="center"><img width="55" height="16"
									alt="loading" style="visibility: hidden;" id="loadingImg"
									src="style/images/loading.gif"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#uploadFile-->

				<!-- 简历上传成功 -->
				<div class="popup" id="uploadFileSuccess">
					<h4>简历上传成功！</h4>
					<table width="100%">
						<tbody>
							<tr>
								<td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
							</tr>
							<tr>
								<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#uploadFileSuccess-->

				<!-- 没有简历请上传 -->
				<div class="popup" id="deliverResumesNo">
					<table width="100%">
						<tbody>
							<tr>
								<td align="center"><p class="font_16">你在奇迹才聘还没有简历，请先上传一份</p></td>
							</tr>
							<tr>
								<td align="center">
									<form>
										<a class="btn_addPic" href="javascript:void(0);"> <span>选择上传文件</span>
											<input type="file"
											onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')"
											class="filePrew" id="resumeUpload1" name="newResume" size="3"
											title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M">
										</a>
									</form>
								</td>
							</tr>
							<tr>
								<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#deliverResumesNo-->

				<!-- 上传附件简历操作说明-重新上传 -->
				<div class="popup" id="fileResumeUpload">
					<table width="100%">
						<tbody>
							<tr>
								<td>
									<div class="f18 mb10">请上传标准格式的word简历</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="f16">
										操作说明：<br> 打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
									</div>
								</td>
							</tr>
							<tr>
								<td align="center"><a title="上传附件简历" href="#uploadFile"
									class="inline btn cboxElement">重新上传</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#fileResumeUpload-->

				<!-- 上传附件简历操作说明-重新上传 -->
				<div class="popup" id="fileResumeUploadSize">
					<table width="100%">
						<tbody>
							<tr>
								<td>
									<div class="f18 mb10">上传文件大小超出限制</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="f16">
										提示：<br> 单个附件不能超过10M，请重新选择附件简历！
									</div>
								</td>
							</tr>
							<tr>
								<td align="center"><a title="上传附件简历" href="#uploadFile"
									class="inline btn cboxElement">重新上传</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!--/#deliverResumeConfirm-->

			</div>
			<!------------------------------------- end ----------------------------------------->

			<script src="style/js/Chart.min.js" type="text/javascript"></script>
			<script src="style/js/profile.min.js" type="text/javascript"></script>
			<!-- <div id="profileOverlay"></div> -->
			<div class="" id="qr_cloud_resume" style="display: none;">
				<div class="cloud">
					<img width="134" height="134" src=""> <a class="close"
						href="javascript:;"></a>
				</div>
			</div>
			<script>

</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop" style="display: none;"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="h/about.html">联系我们</a> <a
				target="_blank" href="http://www.baidu.com">互联网公司导航</a> <a
				rel="nofollow" target="_blank" href=https://weibo.com/u/5704043792>奇迹才聘微博</a>
			<a rel="nofollow" href="javascript:void(0)" class="footer_qr">奇迹才聘微信<i></i></a>
			<div class="copyright">
				&copy;2018-2020 QiJiCaiPin <a
					href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action"
					target="_blank">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->

	

	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
	</div>
</body>
</html>