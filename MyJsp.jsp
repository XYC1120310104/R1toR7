<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
  	<%request.setCharacterEncoding("UTF-8"); 
  		response.setCharacterEncoding("UTF-8");
  	%>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<s:url value="/public/css/bootstrap.min.css" />">

<link rel="stylesheet" href="<s:url value="/public/css/cerulean.css" />">


<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<s:url value="/public/js/bootstrap.min.js" />"></script>


	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  
    <body>
  
  <div class="container">
    <h1 class="text-center">作者信息</h1>
    <br/>
    
    <table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>AuthorID</th>  
            <th>Name</th>  
            <th>Age</th>  
            <th>Country</th>  
    </tr>
  </thead>
  <tbody>
	 <s:iterator value="#request.list" status="st">  
    <tr>
      <td><s:property value="AuthorID"/></td>
      <td><s:property value="Name"/></td>
      <td><s:property value="Age"/></td>
      <td><s:property value="Country"/></td>     
    </tr>
    </s:iterator>
  </tbody>
</table>      
	</div>
</body>
</html>
