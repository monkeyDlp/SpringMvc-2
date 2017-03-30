<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'input.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
  		<form action="testConversionServiceConverter" method="POST">
			Employee:<input type="text" name="employee">
			<input type="submit" value="submit">
  		</form>
  
  			<br><br>
  		<form:form action="${pageContext.request.contextPath }/emp" method="POST" modelAttribute="employee">
  			
  			<c:if test="${employee.id ==null }">
  				LastName:<form:input path="lastName"/>
  				<form:errors path="lastName"></form:errors>
  			</c:if>
  			<c:if test="${employee.id!=null }">
				<form:hidden path="id"/>
				<input type="hidden" name="_method" value="PUT"> 			
  			</c:if>
  			
  			
  			<br>
  			Email:<form:input path="email"/>
  			<form:errors path="email"></form:errors>
  			<br>
  			<%
  					Map<String,String> genders=new HashMap();
  					genders.put("1","Male");
  					genders.put("0","Female");
  					
  					request.setAttribute("genders", genders);
  			 %>
  			Gender:<form:radiobuttons path="gender" items="${genders }"/>
  			<br>
  			Department:<form:select path="department.id" >
  			items="${ departments}" itemLabel="departmentName" itemValue="id"></form:select>
  			<br>
  			Birth:<form:input path="birth" />
  			<form:errors path="birth"></form:errors>
  			<br>
  			Salary:<form:input path="salary" />
  			<br>
  			<input type="submit" value="submit">
  		</form:form>
  		
  </body>
</html>
