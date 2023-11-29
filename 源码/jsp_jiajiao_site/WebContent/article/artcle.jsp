<%@ page language="java" import="java.util.*,com.article.web.ArticleBean" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>美文阅读</title>
	<link rel="short icon" href="images/logo.png" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/styleindex.css">
 	<style type="text/css">
 		html,body,div{margin:0 auto;padding:0;}
 		.artclelist .box1{
			padding-top: 25px;
			margin: 25px 4px auto;
			width: 100%;
			border-style: solid;
			border-width: 1px;
			border-color: #D5E6B9;
			padding:0px 0px 0px 0px;
		}
		h1{
			width:60%;
			height:50px;
			/* background:#ECEFEE; */
			text-align:center;
			line-height:50px;
			font-size:24px;
			margin:-35px 0px 0px 17%;
		}
		.article p{
			margin-bottom:1.5em;
			text-indent:2em;
			font-size:15px;
			font-family:"微软雅黑";
			color:#444;
			
		}
		.article{
			width:98%;
		}
		.info{
			margin-left:37%;
			color:#313131;
		}
		.info a{
			text-decoration:none;
		}
		.info a:hover{
			text-decoration:underline;
			color:blue;
		}
		.box1 .sanwen{
			color:#00BEB7;
			margin-left:2%;
			font-size:16px;
		}
		.box1 .sanwen a{
			color:red;
			font-size:16px;
		}
		
 	</style>
</head>
<body>
    <% 
    String name=(String)session.getAttribute("name");
    String role=(String)session.getAttribute("role");
    if(name!=null){
    	%>
    <div id="top" name="top1">
    	<%
    		if(role.equals("教员")){
    	%>
    	<a href="teacher/set_teacher.jsp" id="topd">您好&nbsp;&nbsp;<font style="font-size:18px"><%=name %></font></a>
    	<a href="login.html" id="topz">│退出</a>
    	<%
    		}else{
    	%>
    	<a href="student/set_request.jsp" id="topd">您好<%=name %></a>
    	<a href="login.html" id="topz">│退出</a>
       <%} %>
    </div>
    <% 
    }else{
    %>
    <div id="top" name="top1">
       <a href="login.html" id="topd">登录</a>
       <a href="regester.html" id="topz">│注册</a>
    </div>
    <%} %>
<!--nav-->
<div id="nav">
    <a href="index.jsp" onclick="dh(this)">易教首页</a>
    <a href="StudentpageAction?pageNow=1">学员需求</a>
    <a href="TpageAction?pageNow=1">找教员</a>
    <a href="user/introduct.jsp" onclick="dh(this)">平台介绍</a>
    
    <a href="user/aboutus.jsp" onclick="dh(this)">关于我们</a>
    <a href="FeedbackAction?pageNow=1">反馈</a>
    <a target="_blank" href="/jiajiao_site/manager/login.html">管理员登录</a>
</div>
    
    
    
  <div style="border-style:solid;border-width:0px;border-color:#000; width:70%;" class="artclelist">
	<!--分类-->
	
	<%
	ArticleBean article=(ArticleBean)request.getAttribute("article");
	
	%>
		<div class="box1">
			<a href="<%=article.getArticleUrl().replaceAll("http://m", "http://www") %>" style="text-decoration:none;" target="blank_"><span style="display:inline-block;background:#FFE1FF;font-size:15px;vertical-align:middle;">
				<font style="color:#919191;font-weight:bold">点击阅读原文》》》</font>
			</span></a></br></br></br>
			<div class="sanwen">文章来自
				<a href="http://www.sanwen.net/" target="_blank">
				中国散文网
				</a>
			</div>
			<%=article.getContent() %>
		</div>
</div>
  
  
  <!-- 底部开始 -->
    <div class="bottom" style="margin-top:100px;">
      <ul class="bottom-left">
        <li>
          <ul>
            <li class="titles">关于易教</li>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">加入我们</a></li>
            <li><a href="#">友情链接</a></li>
          </ul>
        </li>
        <li>
          <ul>
            <li class="titles">帮助中心</li>
            <li><a href="#">意见反馈</a></li>
            <li><a href="#">投诉中心</a></li>
            <li><a href="#">服务说明</a></li>
          </ul>
        </li>
        <li>
          <ul>
            <li class="titles">平台特色</li>
            <li><a href="#">安全可靠</a></li>
            <li><a href="#">四大保障</a></li>
            <li><a href="#">四大优势</a></li>
          </ul>
        </li>
        <li>
          <ul>
            <li class="titles">关注我们</li>
            <li><a href="#">官方微信</a></li>
            <li><a href="#">新浪微博</a></li>
            <li><a href="#">腾讯微博</a></li>
          </ul>
        </li>
      </ul>
      <ul class="bottom-right">
        <li class="phone"></li>
        <li class="code">4008-310-100</li>
        <li>周一至周日 9:00-23:00</li>
        <li>（仅收市话费）</li>
      </ul>
      <p>家教服务平台</a></p>
    </div><!-- 底部结束 -->
  	
</body>
</html>