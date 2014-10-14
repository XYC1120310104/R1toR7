<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>tushu</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<s:url value="/public/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<s:url value="/public/css/cerulean.css" />">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<s:url value="/public/js/bootstrap.min.js" />"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="css/style.css">
	-->
	
	<style>
	#container {
		width: 240px;
		
		margin: auto;
	}
	</style>

  </head>
  
  <body>
  <div class="container">
  <!-- 
  <h1 align = "center">图书查询</h1>
  	<br/>
	<h3 align = "center">请输入作者的名字：</h3>
	<br/>
	<s:form action="Action">
	<s:textfield name="name" label="名字"/>
	<s:submit value="查询"/>
	</s:form>
	</div>
	-->
	
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
		<h1 class="text-center">图书查询</h1>
		
		<form id="Action"  class="form-horizontal" name="Action" action="/firstapp/Action.action" method="post">
  <fieldset>
    <legend>请输入作者的ID</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">作者:</label>
      <div class="col-lg-10">
        <input type="text" name="name" value="" id="Action_name" placeholder="AuthorID">
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </fieldset>
</form>
	<a href='Input.jsp'> <s:submit value="添加图书" align="center"></s:submit></a>
		</div>
	</div>
  </body>
</html>
