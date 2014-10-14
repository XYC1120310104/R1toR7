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
    
    
    <title>My JSP 'hello.jsp' starting page</title>
    
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
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <div class="container">
    <h1 class="text-center">图书信息</h1>
    <br/>
    
    <table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>ISBN</th>  
            <th>Title</th>
            <th>AuthorID</th>    
            <th>Publisher</th>  
            <th>PublishDate</th>  
            <th>Price</th>
            <th></th>
    </tr>
  </thead>
  <tbody>
  	<s:iterator value="#request.list" status="st">  
    <tr>
      <td><s:property value="ISBN"/></td>
      <td><a href='shoe.action?Title=<s:property value="Title"/>'>  <s:property value="Title" /> </a></td>
      <td><s:property value="AuthorID"/></td>
      <td><s:property value="Publisher"/></td>
      <td><s:property value="PublishDate"/></td>
      <td><s:property value="Price"/></td>
      <td><a href='Delete.action?Title=<s:property value="Title"/>&AuthorID=<s:property value="AuthorID"/>'>删除 </a></td>
    </tr>
    </s:iterator>
    <h5>点击Title可查询作者详细信息</h5>
  </tbody>
</table> 



	</div>
	<!-- 
	<ul style="list-style:none; text-align: center;">  
            <li style="float: left;width: 200px">ISBN</li>  
            <li style="float: left;width: 200px">Title</li>  
            <li style="float: left;width: 200px">Publisher</li>  
            <li style="float: left;width: 200px">PublishDate</li>  
            <li style="float: left;width: 200px">Price</li>  
          </ul>  
          <div style="clear: both;"></div>  
    <s:iterator value="#request.list" status="st">  
         <ul style="list-style:none;text-align: center;">  
            <li style="float: left;width: 200px;">  
                <s:property value="ISBN"/>  
            </li>  
            <li style="float: left;width: 200px;">  
                <s:property value="Title"/>  
            </li>  
            <li style="float: left;width: 200px;">  
                <s:property value="Publisher"/>  
            </li>  
            <li style="float: left;width: 200px;">  
                <s:property value="PublishDate"/>  
            </li>  
            <li style="float: left;width: 200px;">  
                <s:property value="Price"/>  
            </li>  
          </ul>  
          <div></div>  
    </s:iterator>
	 -->
  </body>
</html>
