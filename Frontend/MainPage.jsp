<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">

<meta charset="UTF-8">
    <title>Splitwise Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script>
let memberCount = 1;
function addMember() {
    memberCount++;
    let membersDiv = document.getElementById("members");
    let newMemberDiv = document.createElement("div");
    newMemberDiv.classList.add("member");

    newMemberDiv.innerHTML = `
        <label for="memberEmail${memberCount}">Member Email:</label>
        <input type="email" id="memberEmail${memberCount}" name="memberEmails" required/>
        
        <br><br>
    `;
    membersDiv.appendChild(newMemberDiv);
}

</script>

</head>
<body>
    
<nav class="navbar bg-light" id="nav">
<img src="${pageContext.request.contextPath}/images/1733633473138.png"/ id="logo">
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
    
<div id="d1">     
<button type="button" class="btn btn-light" id="two">Dashboard</button>
<i class="fa-solid fa-gauge fa-xl" id="img1"></i>
</div>
<br>
    </li>
    <li class="nav-item">
     <div id="d2">
        <form action="splitpage">
<button type="submit" class="btn btn-light" id="one"> &nbsp;Notification</button>
</form>
<i class="fa-solid fa-bell fa-xl" id="img2"></i>
</div><br>
    </li>
    <li class="nav-item">
      <div id="d3">
       <form action="history">
<button type="submit" class="btn btn-light" id="one">View History</button>
</form>
<i class="fa-solid fa-money-check-dollar fa-xl" id="img3"></i>
</div><br>
    </li>
    <li>
    <div id="d4">
<select class="form-select" aria-label="Default select example" id="select1">
  <option selected>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Modification</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select>
<i class="fa-solid fa-gear fa-xl" id="img4"></i>
</div><br>
    </li>
    <li>
    <div id="d5">
<button type="button" class="btn btn-light" id="one">Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button><br><br>
<i class="fa-solid fa-user-check fa-xl" id="img5"></i>
</div><br>
    </li>
    <li>
    <div id="d6">
    <button type="button" class="btn btn-light" id="one">Reports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button><br><br>
    <i class="fa-solid fa-clipboard fa-xl" id="img6"></i>
    </div>
    </li>
  </ul>
</nav>
<div id="d7">

  <!-- Heading -->
  <h1 id="heading">Welcome to SplitWise System</h1>
  <h6 id="hed">Let's start with creating your group</h6>
    <form action="${pageContext.request.contextPath}/addGroupWithMembers" method="POST" >
    <!-- Group Name Input -->
    <label for="groupName">Group Name:</label>
    <input type="text" id="groupName" name="groupName" required/><br><br>

    <!-- Members Section (you can add more fields dynamically) -->
    <div id="members">
        <div class="member">
            <label for="memberEmail1">Member Email:</label>
            <input type="email" id="memberEmail1" name="memberEmails" required/><br><br>
        </div>
    </div>

    <!-- Button to add more member fields -->
    <button type="button" onclick="addMember()" class="btn btn-primary">ADD MEMBER</button><br><br>

    <button type="submit"class="btn btn-primary" >CREATE GROUP</button>
</form>
</div> 
</body>
<style>

 /* Styling for the container div */

/* Center the content on the page */
#heading {
  text-align: center;
  font-size: 32px;
  font-weight: bold;
  color: #3B82F6; /* Blue color for the title */
  margin-top: 30px;
}




 	
/* Style for the button */
#hed2 {
  position:relative;
  top:20px;
}
#hed {
  position:relative;
  left:0px;
  top:0px;
}


/* Apply styles to the heading */
#heading {
  font-size: 3rem;
  font-weight: bold;
  background: linear-gradient(90deg, #1E3A8A, #3B82F6, #60A5FA); /* Blue gradient */
  background-size: 200% auto;  /* Double the size for smooth transition */
  color: transparent; /* Make the text color transparent */
  -webkit-background-clip: text;  /* Use the background as the text color (Webkit) */
  background-clip: text;  /* Use the background as the text color */
  text-align: center;  /* Centers the text */
  opacity: 0;  /* Start with the heading hidden */
  transform: translateY(50px);  /* Start from below the page */
  animation: fadeInUp 2s ease-out forwards, gradientFlow 4s linear infinite; /* Apply both animations */
  margin-bottom: 20px; /* Space between heading and content */
  text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1); /* Add soft shadow to make it pop */
}

/* Define the animation for fade-in and sliding up */
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

/* Define the animation for the gradient flow effect */
@keyframes gradientFlow {
  0% {
    background-position: 200% center; /* Start the gradient off-screen */
  }
  100% {
    background-position: -200% center; /* Move the gradient across */
  }
}

/* Center the content inside the #d7 container */
#d7 {
  height: 750px;
      width: 1136px;
      display: flex;             
      justify-content: center;   
      align-items: center;       
      flex-direction: column;   
      background-color: rgba(179, 199, 230, 0.382);
      color: black;
      border-radius: 10px;       
      text-align: center;        
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
 
            }
            
#d7 button
{
height:35px;
width:150px;
}
#d7 button:Hover
{
	background-color:darkblue;
}
#d7 form {
    flex-direction: column;
 
}

/* Styling for input fields */
#d7 input[type="text"],
#d7 input[type="email"] {
    width: 100%;
    height:25px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    transition: all 0.3s ease;
}

/* Focus state for input fields */
#d7 input:focus {
    border-color: #007bff;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}
#heading, #hed {
  text-align: center;
}


/* Styling for the new content paragraph (system info) */
#system-info {

  font-size: 1.25rem; /* Slightly larger font size */
  color: #333; /* Darker text for better readability */
  line-height: 1.6; /* Increased line height for better readability */
  max-width: 800px;
  margin: 20px auto; /* Space between content */
  padding: 15px;
  background-color: transparent; /* Remove the white background */
  border-radius: 0px; /* No border radius */
  box-shadow: none; /* Removed the box shadow */
  animation: fadeInUp 2s ease-out forwards; /* Apply same fade-in animation */
  text-align: justify; /* Justify text for better flow */
}

.cta-button {
    display: inline-flex; /* Enables flexbox */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    background-color: #3B82F6; /* Blue background */
    color: white; /* White text */
    border: none;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    font-size: 16px;
    width: 48%; /* Ensure both buttons share the available space */
    margin: 10px;
    text-align: center; /* Ensures text is centered */
}


.cta-button:hover {
  background-color: #1E3A8A; /* Darker blue on hover */
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
select
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
select:hover
{
    background-color:rgba(179, 199, 230, 0.200);
	color:darkblue;
}
select
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