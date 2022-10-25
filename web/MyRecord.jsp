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

function Myupload(img){
	document.getElementById("profileForm").submit();
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
						
						<form class="fl" id="resumeNameForm">
							<div class="nameShow fl">
	            		<h1 title="我的简历">新建简历</h1>
            			</div>
						</form>
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
							<form id="profileForm" action="addRecord.do" method="post">
							 <input type="hidden" name="flag" value="addRecord">
							 <input type="hidden" id="r_photo" name="r_photo" >
								<table>
									<tbody>
										<tr>
										<input type="text" placeholder="简历名称" value="" name="recordname" >
										</tr>

										<tr>
											<td><input type="text" placeholder="姓名" value="" name="name"></td>
											<td>
												<ul>
													<li class="current">男<em></em> <input type="radio" checked="checked" name="gender" value="男">
													</li>
													<li>女<em></em> <input type="radio" name="gender" value="女">
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											
											<td><input type="text" placeholder="年龄" value="" name="age"><span style="font:22px "微软雅黑","宋体",Arial">岁</span></td>
											
											<td><input type="hidden" id="workedyear" value="3年" name="workedyear"> <input type="button" value="工作经验" id="select_workyear" class="profile_select_190 profile_select_normal" style="color: rgb(51, 51, 51);">
												<div class="boxUpDown boxUpDown_190 dn" id="box_workyear" style="display: none;">
													<ul>
														<li>应届毕业生</li>
														<li>1年</li>
														<li>2年</li>
														<li>3年</li>
														<li>4年</li>
														<li>5年</li>
														<li>6年</li>
														<li>7年</li>
														<li>8年</li>
														<li>9年</li>
														<li>10年</li>
														<li>10年以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											
											<td colspan="3"><input type="text" placeholder="手机号码" name="tel"></td>
										</tr>
										<tr>
											<td colspan="3"><input type="text" placeholder="接收面试通知的邮箱" name="email"></td>
										</tr>
										
										<tr>
											<td><input type="hidden" id="expectCity" value="" name="expectCity"> 
												<input type="button"
												value="期望城市，如：北京" id="select_expectCity"
												class="profile_select_287 profile_select_normal">
												<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity"
													style="display: none;">
													<dl>
														<dt>热门城市</dt>
														<dd>
															<span>北京</span> <span>上海</span> <span>广州</span> <span>深圳</span>
															<span>成都</span> <span>杭州</span>
														</dd>
													</dl>
													<dl>
														<dt>ABCDEF</dt>
														<dd>
															<span>北京</span> <span>长春</span> <span>成都</span> <span>重庆</span>
															<span>长沙</span> <span>常州</span> <span>东莞</span> <span>大连</span>
															<span>佛山</span> <span>福州</span>
														</dd>
													</dl>
													<dl>
														<dt>GHIJ</dt>
														<dd>
															<span>贵阳</span> <span>广州</span> <span>哈尔滨</span> <span>合肥</span>
															<span>海口</span> <span>杭州</span> <span>惠州</span> <span>金华</span>
															<span>济南</span> <span>嘉兴</span>
														</dd>
													</dl>
													<dl>
														<dt>KLMN</dt>
														<dd>
															<span>昆明</span> <span>廊坊</span> <span>宁波</span> <span>南昌</span>
															<span>南京</span> <span>南宁</span> <span>南通</span>
														</dd>
													</dl>
													<dl>
														<dt>OPQR</dt>
														<dd>
															<span>青岛</span> <span>泉州</span>
														</dd>
													</dl>
													<dl>
														<dt>STUV</dt>
														<dd>
															<span>上海</span> <span>石家庄</span> <span>绍兴</span> <span>沈阳</span>
															<span>深圳</span> <span>苏州</span> <span>天津</span> <span>太原</span>
															<span>台州</span>
														</dd>
													</dl>
													<dl>
														<dt>WXYZ</dt>
														<dd>
															<span>武汉</span> <span>无锡</span> <span>温州</span> <span>西安</span>
															<span>厦门</span> <span>烟台</span> <span>珠海</span> <span>中山</span>
															<span>郑州</span>
														</dd>
													</dl>
												</div></td>
										</tr>
										<tr>
											<td><input type="text" placeholder="期望职位"
												value="" name="expectPosition" id="expectPosition">
											</td>
											<td><input type="hidden" id="expectSalary" value="" name="expectSalary"> 
												<input type="button"
												value="期望月薪" id="select_expectSalary"
												class="profile_select_287 profile_select_normal">
												<div class="boxUpDown boxUpDown_287 dn"
													id="box_expectSalary" style="display: none;">
													<ul>
														<li>2k以下</li>
														<li>2k-5k</li>
														<li>5k-10k</li>
														<li>10k-15k</li>
														<li>15k-25k</li>
														<li>25k-50k</li>
														<li>50k以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td><input type="text" placeholder="学校名称"
												name="schoolName" class="schoolName"></td>
								
											<td><input type="hidden" class="degree" value=""
												name="degree"> <input type="button" value="学历"
												class="profile_select_287 profile_select_normal select_degree">
												<div class="box_degree boxUpDown boxUpDown_287 dn"
													style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td><input type="text" placeholder="专业名称"
												name="professionalName" class="professionalName"></td>
										
											<td>
												<div class="fl">
		            						<input type="hidden" class="companyYearEnd" value="2024" id="companyYearEnd_id" name="companyYearEnd">
								        	<input type="button" value="2024" id="r_graduateyear" class="profile_select_139 profile_select_normal select_companyYearEnd">
													<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
														<ul>
															<li>2024</li>
															<li>2023</li>
															<li>2022</li>
															<li>2021</li>
															<li>2020</li>
															<li>2019</li>
															<li>2018</li>
															<li>2017</li>
															<li>2016</li>
															<li>2015</li>
															<li>2014</li>
															<li>2013</li>
															<li>2012</li>
															<li>2011</li>
															<li>2010</li>
															<li>2009</li>
															<li>2008</li>
															<li>2007</li>
															<li>2006</li>
															<li>2005</li>
															<li>2004</li>
															<li>2003</li>
															<li>2002</li>
															<li>2001</li>
															<li>2000</li>
															<li>1999</li>
															<li>1998</li>
															<li>1997</li>
															<li>1996</li>
															<li>1995</li>
															<li>1994</li>
															<li>1993</li>
															<li>1992</li>
															<li>1991</li>
															<li>1990</li>
															<li>1989</li>
															<li>1988</li>
															<li>1987</li>
															<li>1986</li>
															<li>1985</li>
															<li>1984</li>
															<li>1983</li>
															<li>1982</li>
															<li>1981</li>
															<li>1980</li>
															<li>1979</li>
															<li>1978</li>
															<li>1977</li>
															<li>1976</li>
															<li>1975</li>
														</ul>
													</div>
												</div>
												<div class="clear"></div>
											</td>
										</tr>
										<tr>
											<td colspan="2"><textarea
													class="workExperience s_textarea" name="workExperience"
													placeholder="工作经历"></textarea>
											</td>
										</tr>
										<tr>
											<td colspan="2"><textarea
													class="selfDescription s_textarea" name="selfDescription"
													placeholder="自我介绍"></textarea>
											</td>
										
										<tr>
											<td></td>
											<td colspan="3"><input type="button" value="保 存" class="btn_profile_save" onclick="Upload()"> <a class="btn_profile_cancel" href="history.go(-1)">取 消</a></td>
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
									<img id="MYIMG" width="120" height="120" src="style/images/default_headpic.png"> <span>更换头像</span>
								</div>
								<input type="file" id="uploadimg" accept="image/*" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="showUpload(this)">
								<!-- <input type="hidden" id="headPicHidden" /> -->
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
				<div class="content_r">
					<div class="mycenterR" id="myInfo">
						<h2>我的信息</h2>
						<a target="_blank" href="collections.html">我收藏的职位</a> <br> <a
							target="_blank" href="subscribe.html">我订阅的职位</a>
					</div>
					<!--end #myInfo-->

					<div class="mycenterR" id="myResume">
						<h2>
							我的附件简历 <a title="上传附件简历" href="#uploadFile"
								class="inline cboxElement">上传简历</a>
						</h2>
						<div class="resumeUploadDiv">暂无附件简历</div>
					</div>
					<!--end #myResume-->

					<div class="mycenterR" id="resumeSet">
						<h2>
							投递简历设置 <span>修改设置</span>
						</h2>
						<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
						<div class="noSet set0 dn">
							默认使用<span>附件简历</span>进行投递
						</div>
						<div class="noSet set1 dn">
							默认使用<span>在线简历</span>进行投递
						</div>
						<div class="noSet">暂未设置默认投递简历</div>
						<input type="hidden" class="defaultResume" value="-1">
						<form class="dn" id="resumeSetForm">
							<label><input type="radio" value="1" class="resume1"
								name="resume">默认使用<span>在线简历</span>进行投递</label> <label><input
								type="radio" value="0" class="resume0" name="resume">默认使用<span>附件简历</span>进行投递</label>
							<span class="setTip error"></span>
							<div class="resumeTip">设置后投递简历时将不再提醒</div>

							<!-- 获取图像开始 -->
							<input type="button" onclick="Upload()" value="保 存" class="btn_profile_save" >
							<input type="button" onclick="Upload()" value="保 存" >
							<script type="text/javascript">
								function Upload(){
									var formData = new FormData();
									// 获取文件
									var fileData = $("#uploadimg").prop("files")[0];
									formData.append("uploadimg", fileData);
									let img = ""
									$.ajax({
										url :"uploadfile.do",
										type:"POST",
										data: formData,
										processData: false,
									    contentType: false,
										success:function(msg){
											img = msg+".jpg";
											$("#r_photo").val(img);
											Myupload(img);
										}
									})
								}
							</script>
							<!-- 获取图像结束 -->
							<a class="btn_profile_cancel" href="javascript:;">取 消</a>
						</form>
					</div>
					<!--end #resumeSet-->
<input type="button"  value="保 存" onclick="Upload()">
					<div class="mycenterR" id="myShare">
						<h2>当前每日投递量：10个</h2>
						<a target="_blank" href="h/share/invite.html">邀请好友，提升投递量</a>
					</div>
					<!--end #myShare-->


					<div class="greybg qrcode mt20">
						<img width="242" height="242" alt="奇迹才聘微信公众号二维码"
							src="style/images/qr_resume.png"> <span class="c7">微信扫一扫，轻松找工作</span>
					</div>
				</div>
				<!--end .content_r-->
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