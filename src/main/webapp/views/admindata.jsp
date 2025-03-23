<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.Model.UserCreation" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<script>

  function deleteData()
  {	
	  let radio1 = document.querySelector('input[name="user"]:checked');
	   if(radio1){
		   alert("You are Deleting data");
		   document.myform.action="deleteuser";
	   }
	   else
		   {
		   alert("Please Select a Row");
		   document.myform.action="relogin";
		   }
  }
</script>
</head>
<body style="background-color: #f4faff; color: #333;">
<br>
<h1 align="center" style="color: #007bff;">Welcome to Admin Page</h1>
<br>
<%
    List<UserCreation> sList=(List<UserCreation>) request.getAttribute("data");
%>
<%
List<UserCreation> AList=(List<UserCreation>) request.getAttribute("newUserName");
%>
<div>
<form name="myform">
<table class="table table-bordered" style="border-color: #007bff; border-radius: 8px;">
<thead class="table-light">
			<tr>
				<th>Select</th>
				<th>Username</th>
				<th>Password</th>
			</tr>
</thead>
<tbody>
	<%
	for(UserCreation stu : sList) {
	%>
	<tr>
			<td><input type="radio" name="user" value="<%=stu.getNewUserName()%>" id="id_<%=stu.getNewUserName()%>"></td>
			<td><%=stu.getNewUserName() %></td>
			<td><%=stu.getNewPassWord() %></td>
	</tr>	
	<%
	} 
	%>
</tbody>
</table>
<div class="text-center">
<button class="btn btn-primary" onclick="deleteData()">Delete</button>
</div>
</form>
</div>
</body>
<style>
body {
    font-family: 'Arial', sans-serif;
}

h1 {
    font-family: 'Arial', sans-serif;
    font-weight: bold;
}

table th, table td {
    text-align: center;
    padding: 10px;
}

table th {
    background-color: #f1f9ff;
    color: #007bff;
}

table tr:nth-child(even) {
    background-color: #f9f9f9;
}

table tr:hover {
    background-color: #e6f0ff;
}

button {
    font-size: 1.1em;
    padding: 8px 20px;
}
</style>
</html>
