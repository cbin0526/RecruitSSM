<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>前端开发全国-职位搜索-奇迹才聘网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="前端开发招聘  全国地区招聘 紫色医疗招聘前端开发,月薪:10k-20k,要求:本科及以上学历,3-5年工作经验。职位诱惑：借移动医疗大势享受坐直升飞机的职场发展 公司规模:15-50人移动互联网 ,健康医疗类公司招聘信息汇总  最新最热门互联网行业招聘信息，尽在拉勾网" name="description">
<meta content="前端开发招聘,全国地区前端开发招聘,紫色医疗招聘前端开发,移动互联网 类公司招聘信息汇总,健康医疗类公司招聘信息汇总,拉勾招聘,拉勾网,互联网招聘" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
<script>

$(document).ready(function(){
	
});
//当所有的html文件加载完毕
$(document).ready(function(){
	//获取页数和最大页数
	let maxpage='${requestScope.maxpage}';
	let page='${requestScope.page}';
	let str="";
	if(maxpage!=''&&page!=''){
		maxpage=parseInt(maxpage);
		page=parseInt(page);
		for(let i=0;i<maxpage;i++){
			if(page==(i+1)){
				str=str+"第"+(i+1)+"页&nbsp;&nbsp;&nbsp;&nbsp;"
			}else{
				str=str+"<a href='DoPosition?flag=ForGetFirmPositionByKey&key=${requestScope.key}&size=7&page="+(i+1)+"'>第"+(i+1)+"页</a>&nbsp;&nbsp;"
			}
		}
		 $("#mydiv").html(str); 
	}
	
});
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
		<!-- end #header -->
		<div id="container">
        
       	<div class="sidebar">

       		            <div id="options" class="greybg">
                                <dl >
                   	<dt>月薪范围 <em ></em></dt>
	                <dd >
	                    	                    	<div>2k以下</div>
	                    	                    	<div>2k-5k</div>
	                    	                    	<div>5k-10k</div>
	                    	                    	<div>10k-15k</div>
	                    	                    	<div>15k-25k</div>
	                    	                    	<div>25k-50k</div>
	                    	                    	<div>50k以上</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>工作经验 <em ></em></dt>
	                <dd >
	                    	                    	<div>不限</div>
	                    	                    	<div>应届毕业生</div>
	                    	                    	<div>1年以下</div>
	                    	                    	<div>1-3年</div>
	                    	                    	<div>3-5年</div>
	                    	                    	<div>5-10年</div>
	                    	                    	<div>10年以上</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>最低学历 <em ></em></dt>
	                <dd >
	                    	                    	<div>不限</div>
	                    	                    	<div>大专</div>
	                    	                    	<div>本科</div>
	                    	                    	<div>硕士</div>
	                    	                    	<div>博士</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>工作性质 <em ></em></dt>
	                <dd >
	                    	                    	<div>全职</div>
	                    	                    	<div>兼职</div>
	                    	                    	<div>实习</div>
	                    	                </dd> 
                </dl>
                                <dl >
                   	<dt>发布时间 <em ></em></dt>
	                <dd >
	                    	                    	<div>今天</div>
	                    	                    	<div>3天内</div>
	                    	                    	<div>一周内</div>
	                    	                    	<div>一月内</div>
	                    	                </dd> 
                </dl>
                            </div>
            
            <!-- QQ群 -->
            	            		            <div class="qq_group">
		            	加入<span>前端</span>QQ群
		            	<div class="f18">跟同行聊聊</div>
		            	<p>160541839</p>
		            </div>
		                                
            <!-- 对外合作广告位  -->
             	            		        	<a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
		            	<img src="style/images/w3cplus.png" width="230" height="80" alt="w3cplus" />
		            </a>
		            <a href="" target="_blank" class="partnersAd">
		            	<img src="style/images/jquery_school.jpg" width="230" height="80" alt="JQ学校" />
		            </a>
		                                	            <a href="http://linux.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/linuxcn.png" width="230" height="80" alt="Linux中文社区"  />
	            </a>
	            <a href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl" target="_blank" class="partnersAd">
	            	<img src="style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
	            </a>
	            <a href="http://www.imooc.com" target="_blank" class="partnersAd">
	            	<img src="style/images/muke.jpg" width="230" height="80" alt="幕课网" />
	            </a>
	        	       	<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
        </div>
        
        <div class="content">
        	<div id="search_box">
		<form  action="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7" method="post">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "key"  tabindex="1" value="${requestScope.key}"  placeholder="请输入职位名称，如：产品经理"  />
        
                <input type="submit"  value="搜索" />
    </form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<script type="text/javascript" src="style/js/search.min.js"></script>
<dl class="hotSearch">
	<dt>热门搜索：</dt>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=Java">Java</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=PHP">PHP</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=Android">Android</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=iOS">iOS</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=前端">前端</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=产品经理">产品经理</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=UI">UI</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=运营">运营</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=BD">BD</a></dd>
	<dd><a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=实习">实习</a></dd>
</dl>			<div class="breakline"></div>
            <dl class="workplace" id="workplaceSelect">
                <dt class="fl">工作地点：</dt>
               	               	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=福建" class="current">福建省</a> 
                	                	|
                	               	</dd>
               	               	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=厦门" >厦门市</a> 
                	                	|
                	               	</dd>
               	         	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=福州" >福州市</a> 
                	                	|
                	               	</dd>
                	                 	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=三明" >三明市</a> 
                	                	|
                	               	</dd>
                	               	     	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=龙岩" >龙岩市</a> 
                	                	|
                	               	</dd>
                	               	     	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=泉州" >泉州市</a> 
                	                	|
                	               	</dd>
                	               	     	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=莆田" >莆田市</a> 
                	                	|
                	               	</dd>
                	               	     	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=南平" >南平市</a> 
                	                	|
                	               	</dd>
                	               	     	<dd >
                	<a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&siez=7&key=宁德" >宁德市</a> 
                	                	|
                	               	</dd>
             
			    	  	</dl>
			    	  				    				
 
            <div id="tip_didi" class="dn">
            	<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span>
            	<a href="javascript:;">我知道了</a>
            </div>
            
            	            <ul class="hot_pos reset">
            					 <c:forEach  items="${requestScope.list}"  var="firmposition"  >
	                    		    <li class="odd clearfix">
			                		<div class="hot_pos_l">
			                        <div class="mb10">
			                            <a href="DoPosition?flag=GetFirmPositionDetailByid&p_id=${pageScope.firmposition.p_id}"  title="前端开发" target="_blank">${pageScope.firmposition.p_name}</a> 
			                            &nbsp;
			                            <span class="c9">${pageScope.firmposition.p_address}</span>
			                            			                        </div>
			                        <span><em class="c7">月薪：</em>${pageScope.firmposition.p_salary}</span>
			                        <span><em class="c7">经验：</em> ${pageScope.firmposition.p_wexperience}年</span>
			                        <span><em class="c7">最低学历： </em>${pageScope.firmposition.p_graduation}</span>
			                        <br />
			                        
			                        <br />
			                        <span>1天前发布</span>
			                    </div> 
						        <div class="hot_pos_r">
			                        <div class="apply">
			                        <a href="DoSubmitRecord?flag=selectRecord&p_id=${pageScope.firmposition.p_id}" target="_blank">投个简历</a>
			                        				                        </div>
			                        <div class="mb10"><a href="h/c/1712.html" title="紫色医疗" target="_blank">${pageScope.firmposition.firm_realname}</a></div>
			      
			                         <span><em class="c7">创始人：</em> ${pageScope.firmposition.firm_legalperson}</span>
			                        			                        <br />
									<span><em class="c7">职位福利：</em>${pageScope.firmposition.p_welfare}</span>
			                    </div>
			                 </li>
			                 </c:forEach>
		<div align="center"  heigh="50px">
      <a href="DoPosition?flag=ForGetFirmPositionByKey&page=1&size=7&key=${requestScope.key}">首页</a>&nbsp;&nbsp;
      <a href="DoPosition?flag=ForGetFirmPositionByKey&page=${requestScope.page-1}&size=7&key=${requestScope.key}">上一页</a>&nbsp;&nbsp;
      <span  id="mydiv" style="weigth:150px">
		</span>
      <a href="DoPosition?flag=ForGetFirmPositionByKey&page=${requestScope.page+1}&size=7&key=${requestScope.key}">下一页</a>&nbsp;&nbsp;
      <a href="DoPosition?flag=ForGetFirmPositionByKey&page=${requestScope.maxpage}&size=7&key=${requestScope.key}">尾页</a>
      </div>                  
 
		
<script>
$(function(){
	/***************************
 	 * 分页
 	 */
 	 check();
 	 						$('.Pagination').pager({
		      currPage: 1,
		      pageNOName: "pn",
		      form: "searchForm",
		      pageCount: 30,
		      pageSize:  5 
		});
		
	$(".workplace dd").not('.more').children('a').click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$("#box_expectCity dd span").click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).html());
	});
	
	$('#options dd div').click(function(){
		var firstName = $(this).parents('dl').children('dt').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围"){
			editForm("yxInput" , $(this).html());
		}
		else if(fn=="工作经验"){
			editForm("gjInput" , $(this).html());
		}
		else if(fn=="最低学历"){
			editForm("xlInput" , $(this).html());
		}
		else if(fn=="工作性质"){
			editForm("gxInput" , $(this).html());
		}
		else if(fn=="发布时间"){
			editForm("stInput" , $(this).html());
		}
	});
	
	$('#selected ul').delegate('li span.select_remove','click',function(event){
		var firstName = $(this).parent('li').find('strong').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围")
			editForm("yxInput" , "");
		else if(fn=="工作经验")
			editForm("gjInput" , "");
		else if(fn=="最低学历")
			editForm("xlInput" , "");
		else if(fn=="工作性质")
			editForm("gxInput" , "");
		else if(fn=="发布时间")
			editForm("stInput" , "");
	});
	
	/* search结果飘绿	*/
	(function($) {
		var searchVal = $('#search_input').val();
		var reg = /\s/g;     
		searchVal = searchVal.replace(reg, "").split(""); 
		
		var resultL = '';
		var resultR = '';
		$('.hot_pos li').each(function(){
			resultL = $('.hot_pos_l a',this).text().split("");
			$.each(resultL,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultL[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_l a',this).html(resultL.join(''));
			
			resultR = $('.hot_pos_r .mb10 a',this).text().split("");
			$.each(resultR,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultR[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_r .mb10 a',this).html(resultR.join(''));
		});
		
	})(jQuery);
	
	//didi tip
   	if($.cookie('didiTip') != 1 && false){
		$('#tip_didi').show();
	}
	$('#tip_didi a').click(function(){
		$(this).parent().remove();
		$.cookie('didiTip',1,{ expires: 30, path: '/'});
	});
	
});

function editForm(inputId,inputValue){
	$("#"+inputId).val(inputValue);
	var keyword = $.trim($('#search_input').val());
	var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
	var re = /#/g;
	var r = /\./g;
	var kw = keyword.replace(reg," ");

	if(kw == ''){
		$('#searchForm').attr('action','list.html所有职位').submit();	
	}else{
		kw = kw.replace(re,'井');
		kw = kw.replace(r,'。');
		$('#searchForm').attr('action','list.html'+kw).submit();
	}
	//$("#searchForm").submit();
}
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

			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="about.html" target="_blank" rel="nofollow">联系我们</a>
		    
		    <a href=https://weibo.com/u/5704043792 target="_blank" rel="nofollow">奇迹才聘微博</a>
		    <a class="footer_qr" href="javascript:void(0)" rel="nofollow">奇迹才聘微信<i></i></a>
			<div class="copyright">&copy;2018-2020 QiJiCaiPin <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>


<!--  -->

</body>
</html>