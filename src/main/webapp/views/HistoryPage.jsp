<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.Model.Expense" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="UTF-8">
    <title>Splitwise Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
function insertData()
{
	   alert("You are Inserting data");
	   document.myform.action="home"
	   
}
function updateData()
{
	   let radio1 = document.querySelector('input[name="id"]:checked');
	   if(radio1){
		   alert("You are Updating data");
		   document.myform.action="updateData";
	   }
	   else
		   {
		   alert("Please Select a Row");
		   document.myform.action="relogin";
		   }
	   
}
function deleteData()
{	
	  let radio1 = document.querySelector('input[name="id"]:checked');
	   if(radio1){
		   alert("You are Deleting data");
		   document.myform.action="delete";
	   }
	   else
		   {
		   alert("Please Select a Row");
		   document.myform.action="relogin";
		   }
}
</script>

</head>
<%
    List<Expense> sList=(List<Expense>) request.getAttribute("data");
%>
<%
List<Expense> AList=(List<Expense>) request.getAttribute("id");
%>
<body>
    
<nav class="navbar bg-light" id="nav">
<img src="${pageContext.request.contextPath}/images/1733633473138.png"/ id="logo">
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
    
<div id="d1"> 
<form action="homepage">    
<button type="submit" class="btn btn-light" id="two">Dashboard</button>
</form>
<i class="fa-solid fa-gauge fa-xl" id="img1"></i>
</div>
<br>
    </li>
    <li class="nav-item">
     <div id="d2">
     <form action="notification"> 
<button type="submit" class="btn btn-light" id="one">&nbsp;Notification</button>
     </form>
<i class="fa-solid fa-bell fa-xl" id="img2"></i>
</div><br>
    </li>
    <li class="nav-item">
      <div id="d3">
<button type="button" class="btn btn-light" id="one">View History</button>
<i class="fa-solid fa-money-check-dollar fa-xl" id="img3"></i>
</div><br>
    </li>
    <li>
    <div id="d4">
    <form action="loginpage">  
  <button type="submit" class="btn btn-light" id="last">Logout</button>
  </form>
<i class="fa-solid fa-gear fa-xl" id="img4"></i>
</div><br>
    </li>
    <li>
     <div id="d5">
     <form action="account"> 
<button type="submit" class="btn btn-light" id="one">Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button><br><br>
</form>
<i class="fa-solid fa-user-check fa-xl" id="img5"></i>
</div><br>
    </li>
    <li>
    <div id="d6">
    <form action="/report">
    <button type="submit" class="btn btn-light" id="one">Reports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button><br><br>
    </form>
    <i class="fa-solid fa-clipboard fa-xl" id="img6"></i>
    </div>
    </li>
  </ul>
</nav>
 <div id="d7">
    <div id="history">History</div>
    <form name="myform">
<table class="table-info">
<thead>
			<tr >
				<th>Select</th>
				<th>Id</th>
				<th>Name</th>
				<th>Amount</th>
				<th>Description</th>
			</tr>
			</thead>
		<tbody>
			
			<%
			for(Expense stu : sList) {
			%>
			<tr>
					<td ><input type="radio" name="id" value="<%=stu.getId()%>" id="id_<%=stu.getId()%>"></td>
					<td><%=stu.getId() %></td>
					<td><%=stu.getName() %></td>
					<td><%=stu.getAmount() %></td>
					<td><%=stu.getDescp() %></td>			
			</tr>	
			<%
			} 
			%>
	
		</tbody>
		</table>
		<br>
		<div>
		<button class="btn btn-primary" onclick="insertData()">Insert</button>
		<button class="btn btn-primary" onclick="updateData()">Update</button>
		<button class="btn btn-primary" onclick="deleteData()">Delete</button>
		</div>
		
   </form>
   <br>
     <form action="total-amount">
		<button class="btn btn-success">Go For Split</button>
		</form>
   
  </div>
</body>

<style>

/* Apply styles to the heading */
    #history {
      font-size: 3rem;
      font-weight: bold;
      background: linear-gradient(90deg, #1E3A8A, #3B82F6, #60A5FA);
      background-size: 200% auto;
      color: transparent;
      -webkit-background-clip: text;
      background-clip: text;
      text-align: center;
      opacity: 0;
      transform: translateY(50px);
      animation: fadeInUp 2s ease-out forwards, gradientFlow 4s linear infinite;
      margin-bottom: 20px;
      text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
    }

    @keyframes fadeInUp {
      0% {
        opacity: 0;
        transform: translateY(50px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes gradientFlow {
      0% {
        background-position: 200% center;
      }
      100% {
        background-position: -200% center;
      }
    }

    #d7 {
      height: auto;
      width: 1136px;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      background-color: rgba(179, 199, 230, 0.382);
      color: black;
      border-radius: 10px;
      padding: 40px 20px;
      text-align: center;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      background-color: #fff;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }

    th, td {
      padding: 15px;
      text-align: center;
      border: 1px solid #ddd;
    }

    th {
      background-color: #3B82F6;
      color: #fff;
      font-weight: bold;
    }

    td {
      background-color: #f9f9f9;
    }

    /* Minimized View Button */
    .view-button {
  padding: 5px 10px; /* Smaller padding for compact size */
  font-size: 0.8rem; /* Reduce font size */
  color: #fff; /* Text color */
  background-color: #1E3A8A; /* Dark blue background */
  border: none; /* No border */
  border-radius: 3px; /* Slightly rounded corners */
  cursor: pointer; /* Pointer cursor on hover */
  transition: background-color 0.3s ease;
}

.view-button:hover {
  background-color: #3B82F6; /* Lighter blue on hover */
}


    @media (max-width: 768px) {
      table {
        font-size: 0.9rem;
      }
    
    }
    #hed
{
position:relative;
left:0px;
}

/* Style for the button */
.cta-button {
  font-family: 'poppins', sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(90deg, #1E3A8A, #3B82F6); 
  color: #fff;
  padding: 15px 40px;
  font-size: 1.2rem;
  font-weight: bold;
  border: none;
  border-radius: 50px;
  cursor: pointer;
  text-transform: uppercase;
  letter-spacing: 2px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
  transition: background 0.4s ease, transform 0.3s ease, box-shadow 0.3s ease;
  margin-top: 20px; /* Space between the paragraph and the button */
}

.cta-button:hover {
  background: linear-gradient(90deg, #3B82F6, #1E3A8A); /* Reversed blue gradient */
  transform: scale(1.1);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
}

/* Styling for system name */
.system-name {
  font-size: 3rem;
  font-weight: bold;
  color: #93C5FD; /* Light blue */
  margin-bottom: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
  animation: fadeInUp 1.5s ease-out forwards;
}

/* Responsive styling for smaller screens */
@media (max-width: 768px) {
  #heading {
    font-size: 2.5rem;
  }

  #system-info {
    font-size: 1rem;
  }

  .cta-button {
    padding: 12px 30px;
    font-size: 1rem;
  }

  #d7 {
    width: 90%; /* Adjust width on smaller screens */
    height: auto;
  }
}


#logo
{
position:relative;
height:100px;
width:130px;
left:140px;
top:40px;
 filter: grayscale(100%) brightness(50%) contrast(100%);

}
     #b2:hover
    {
        background-color:rgb(146, 0, 230); 
        color: white;

    }
    #b2:active
    {
        background-color:rgb(146, 0, 230); 
        color: white;
    }
    #b2
    {
        position: relative;
        left: 40px;
        width: 200px;
        height: 35px;
        top: 30px;
        border-radius: 12px;
        border-color: rgba(123, 123, 123, 0.184);
    }
    #d11
    {
        background-color:white;
        height: 370px;
        width: 1060px;
        position: relative;
        left: 40px;
        top: -330px;
    }
    #b1:hover
    {
        background-color:rgb(146, 0, 230); 
        color: white;

    }
    #b1:active
    {
        background-color:rgb(146, 0, 230); 
        color: white;
    }
    #b1
    {
        position: relative;
        left: 40px;
        width: 250px;
        height: 40px;
        top: -370px;
        border-radius: 9px;
    }
    #five
    {
        position: relative;
        left: 40px;
        top: -50px;
        color: gray;
font-size: 18px;
    }
    #four
    {
        position: relative;
        left: -100px;
        top: -21px;
    }
    #img9
    {
        position: relative;
        left: 5px;
        color: red;
    }
    #d10
    {
        position: relative;
        left:160px;
        height: 25px;
        width: 25px;
        border-radius: 50px;
        background-color: rgba(179, 199, 230, 0.382);
        top: -45px;
    }
    #img8
    {
        
        position: relative;
        left: 5px;
        color:rgb(3, 139, 9); 
      
       top: 0px;
        z-index: 9; 
    }
    #d9
    {
        position: relative;
        height: 25px;
        width: 25px;
        border-radius: 50px;
        background-color: rgba(179, 199, 230, 0.382);
        top: -20px;
        left: 23px;
    }
    #d8
    {
        position: relative;
        height: 35px;
        width: 35px;
        border-radius: 50px;
        background-color: rgba(203, 187, 249, 0.482);
        left:195px;
        top: -80px;
    }
    #img7
    {
        position: relative;
        left: 7px;
        color:rgb(146, 0, 230); 
        background-color:rgba(203, 187, 249, 0.482);
       top: 6px;
        z-index: 9; 
    }
    p
    {
        position: relative;
left: 23px;
top: 20px;
color: gray;
font-size: 13px;
    }
    #three
    {
position: relative;
left: 23px;
top: 20px;
    }
    h6
    {
        position: relative;
        left: 20px;
        top: 20px;
    }
     #t2
    {
        height: 150px;
        width: 250px;
        border-radius: 5px;
        background-color: white;
        position: relative;
        top: -100px;
        left: 310px;
    }
    #t3
    {
        height: 150px;
        width: 250px;
        border-radius: 5px;
        background-color: white;
        position: relative;
        top: -250px;
        left: 580px;
    }
    #t4
    {
        height: 150px;
        width: 250px;
        border-radius: 5px;
        background-color: white;
        position: relative;
        top: -400px;
        left: 850px;
    }

    #t1
    {
        height: 150px;
        width: 250px;
        border-radius: 5px;
        background-color: white;
        position: relative;
        top: 50px;
        left: 40px;
    }
  h3
  {
    position: relative;
    left: 60px;
    top: 15px;
  } 
    #two
    {
        position: relative;
        top: -1px;
    }
 #d7
    {
        height: 750px;
        width: 1136px;
        position: relative;
        background-color: rgba(179, 199, 230, 0.382);
        left: 400PX;
        position: fixed;
        top: 0px;
        color: black;
    }
#last
{
    text-align: center;
    padding-left: 0px;;
}
#d1
{
    position:relative;
	left:60px;	
	width:300px;
	height:50px;
    top: -70px;
}
#d2
{

position:relative;
	left:60px;	
	width:300px;
	height:50px;
    top: -70px;
}
#d3
{position:relative;
	left:60px;	
	width:300px;
	height:50px;
    top: -70px;
}
#d4
{position:relative;
	left:60px;	
	width:300px;
	height:50px;
    top: -70px;
}
#d5
{position:relative;
	left:60px;	
	width:300px;
	height:50px;
    top: -70px;
}
#d6
{position:relative;
	left:60px;	
	width:300px;
	height:50px;
    top: -70px;
}
#nav
{
z-index:10;
position:fixed;
top: -100px;
width:400px;
height: 850px;
background-color: white;

}
#img
{
	color:rgb(146, 0, 230);
    position:relative;
   left:0px;
   top:-77px;
   z-index: 7;
}
button
{
	position:relative;
	left:0px;	
	width:300px;
	height:50px;
	text-align:left;
    border-radius: 5px;
    
}
#last:hover
{
     background-color:rgba(179, 199, 230, 0.200);
	color:darkblue;
}
#last
{

	position:relative;	
	width:300px;
	height:50px;
	text-align:center;
}
#img1
{
    position: relative;
    top:-37px;
    left:50px;
    
}
#img2
{
    position: relative;
    top:-37px;
    left:50px;
    
}
#img3
{
    position: relative;
    top:-37px;
    left:50px;
    
}
#img4
{
    position: relative;
    top:-37px;
    left:50px;
    
}
#img5
{
    position: relative;
    top:-60px;
    left:50px;
    
}
#img6
{
    position: relative;
    top:-60px;
    left:50px;
    
}
#d1:hover,#d2:hover,#d3:hover,#d4:hover,#d5:hover,#d6:hover,#one:hover, #two:hover
{
    background-color:rgba(179, 199, 230, 0.200);
	color:darkblue;
    border-radius: 5px;

}
@media screen and (max-width: 768px) {
    /* Adjustments for smaller screens */
    #nav {
        width: 100%;
        position: static;
    }

    #d7 {
        width: 100%;
        left: 0;
    }

    #two {
        width: 100%;
        text-align: center;
    }

    #d1, #d2, #d3, #d4, #d5, #d6 {
        width: 100%;
        left: 0;
    }

    button, select {
        width: 100%;
    }

    #d11 {
        width: 100%;
        left: 0;
    }

    #t1, #t2, #t3, #t4 {
        width: 100%;
        left: 0;
    }
}

</style>
</html>