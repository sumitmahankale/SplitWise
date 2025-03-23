<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Model.Expense" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Create Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <% Expense stu=(Expense) request.getAttribute("stu"); %>
</head>
<body>
<div id="home">
    <img src="${pageContext.request.contextPath}/images/home.jpg" id="home"/>
</div>
    <div id="new">
    
 <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="container">
            <div class="heading">Update Expense</div>
            <form action="/addexpense" method="POST" class="form">
            <input required class="input" type="text" name="Id" value="<%=stu.getId()%>" readonly >
                <input required class="input" type="text" name="name" value="<%=stu.getName()%>">
                <input required class="input" type="text" name="amount" value="<%=stu.getAmount()%>">
                <input required class="input" type="text" name="descp" value="<%=stu.getDescp()%>">
                <input class="login-button" type="submit" value="Update">
            </form>
        </div>
    </div>

</div> 
</body>
</html>

<style>
#new {
    position: relative;
    bottom:1030px;
    left:50px;
}
#home {
    width: 100%;
    height: auto;
    display: block;
    max-width: 100%;
    filter: brightness(0.5);
}
    .d-flex {
        display: flex;
        justify-content: center; /* Horizontally center */
        align-items: center;     /* Vertically center */
        height: 100vh;           /* Full height of the viewport */
    }

    .container {
    z-index:2;
        font-family: 'poppins', sans-serif;
        max-width: 350px;
        background: #F8F9FD;
        background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%);
        border-radius: 40px;
        padding: 25px 35px;
        border: 5px solid rgb(255, 255, 255);
        box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
        margin: 20px;
    }

    .heading {
        text-align: center;
        font-weight: 900;
        font-size: 30px;
        color: rgb(16, 137, 211);
    }

    .form .input {
        width: 100%;
        background: white;
        border: none;
        padding: 15px 20px;
        border-radius: 20px;
        margin-top: 15px;
        box-shadow: #cff0ff 0px 10px 10px -5px;
    }

    .form .input:focus {
        outline: none;
        border-inline: 2px solid #12B1D1;
    }

    .form .login-button {
        display: block;
        width: 100%;
        font-weight: bold;
        background: linear-gradient(45deg, rgb(16, 137, 211) 0%, rgb(18, 177, 209) 100%);
        color: white;
        padding-block: 15px;
        margin: 20px auto;
        border-radius: 20px;
        box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 20px 10px -15px;
        border: none;
        transition: all 0.2s ease-in-out;
    }

    .form .login-button:hover {
        transform: scale(1.03);
        box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 23px 10px -20px;
    }

    .form .forgot-password a {
        font-size: 11px;
        color: #0099ff;
        text-decoration: none;
    }
</style>
