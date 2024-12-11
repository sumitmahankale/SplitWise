<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="UTF-8">
<title>SplitWise
    
</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body>
  
</div>
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
<button type="button" class="btn btn-light" id="one">&nbsp;Registration</button>
<i class="fa-solid fa-address-card fa-xl" id="img2"></i>
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



</body>
<style>
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
position:fixed;
top: -50px;
width:400px;
height: 750px;
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
    background-color:#cff0ff;
	color:rgb(9, 87, 135);
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
   background-color:#cff0ff;
	color:rgb(9, 87, 135);
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