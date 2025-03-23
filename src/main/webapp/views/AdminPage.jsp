<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta charset="ISO-8859-1">
    <title>Home</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
</head>
<body>

<div id="home">
    <img src="${pageContext.request.contextPath}/images/home.jpg" id="home"/>
</div>

<div id="new" align="center">
    <div class="container" >
        <div class="heading">Login</div>
        <form action="/loginadmin" class="form" method="POST">
            <input class="input" type="text" name="name" id="email" placeholder="Username">
            <input  class="input" type="password" name="password" id="password" placeholder="Password">
            <input class="login-button" type="submit" value="Login">
           
        </form> 
    </div>
</div>

</body>
</html>

<style>
/* Your existing styles... */
#new {
    position: relative;
    bottom: 870px;
}

.container {
    font-family: 'poppins', sans-serif;
    z-index: 1;
    max-width: 350px;
    background: #F8F9FD;
    background: linear-gradient(0deg, rgb(255, 255, 255) 0%, rgb(244, 247, 251) 100%);
    border-radius: 40px;
    padding: 25px 35px;
    border: 5px solid rgb(255, 255, 255);
    box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 30px 30px -20px;
    margin: 20px;
    width: 100%; /* Ensure full width on small screens */
    box-sizing: border-box;
}

.heading {
    text-align: center;
    font-weight: 900;
    font-size: 30px;
    color: rgb(16, 137, 211);
}

/* Form styling */
.form {
    margin-top: 20px;
}

.form .input {
    width: 100%;
    background: white;
    border: none;
    padding: 15px 20px;
    border-radius: 20px;
    margin-top: 15px;
    box-shadow: #cff0ff 0px 10px 10px -5px;
    border-inline: 2px solid transparent;
}

.form .input:focus {
    outline: none;
    border-inline: 2px solid #12B1D1;
}

.form .forgot-password {
    display: block;
    margin-top: 10px;
    margin-left: 10px;
}

.form .forgot-password a {
    font-size: 11px;
    color: #0099ff;
    text-decoration: none;
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

.form .login-button:active {
    transform: scale(0.95);
    box-shadow: rgba(133, 189, 215, 0.8784313725) 0px 15px 10px -10px;
}

/* Other styles remain the same */
#home {
    width: 100%;
    height: auto;
    display: block;
    max-width: 100%;
    filter: brightness(0.5);
}
</style>
