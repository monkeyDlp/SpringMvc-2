<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			$("#testJson").click(function(){
				var url=this.href;
				var args={};
				$.post(url,args,function(data){
					for(var i=0;i<data.length;i++){
						var id=data[i].id;
						var lastName=data[i].lastName;
						alert(id+":"+lastName);
					}
				});
				return false;
			});
		})
	</script>
	
	
  </head>
  <body>
   <a href="testResponseStatusExceptionResolver?i=19">test ResponseStatusExceptionResolver</a>
  <br><br>
  
  <a href="testExceptionHandlerExceptionResolver?i=10">test ExceptionHandlerExceptionResolver</a>
  <br><br>
  		<form action="testFileUpload" method="POST" enctype="multipart/form-data">
  			File:<input type="file" name="file">
  			Desc:<input type="text" name="desc" />
  			<input type="submit" value="submit">
  		</form>
  		<br><br>
  
  		<a href="emps">List All Employees</a>
  		<a href="testJson">test json</a>
  		<form action="testHttpMessageConverter" method="POST" enctype="multipart/form-data">
  			File:<input type="file" name="file">
  			Desc:<input type="text" name="desc" />
  			<input type="submit" value="submit">
  		</form>
  		<br><br>
  		<a href="testResponseEntity">test ResponseEntity</a>
  </body>
</html>
