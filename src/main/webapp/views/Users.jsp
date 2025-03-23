<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.Model.UserCreation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body  id="b1">
<%
    List<UserCreation> sList= (List<UserCreation>) request.getAttribute("data");
%>
<%
List<UserCreation> AList=(List<UserCreation>) request.getAttribute("rno");
%>
<div>
<form name="myform">
<table class="table table-dark table-striped">
<thead>
			<tr >
				<th>Username</th>
				<th>Password</th>
			
			</tr>
			</thead>
		<tbody>
			
			<%
			for(UserCreation stu : sList) {
			%>
			<tr>
					<td><%=stu.getNewUserName() %></td>
					<td><%=stu.getNewPassWord() %></td>	
			</tr>	
			<%
			} 
			%>
	
		</tbody>
		</table>
   </form>
   </div>
</body>
<style>
#b1
{
background-color:black;
color:white;
}
</style>
</body>
</html>