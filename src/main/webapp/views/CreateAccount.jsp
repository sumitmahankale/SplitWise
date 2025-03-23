<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Create Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
       
        function validatePassword(password) {
            const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$/;
            const feedbackElement = document.getElementById('passwordFeedback');
            
            if (regex.test(password)) {
                feedbackElement.textContent = 'Password is valid.';
                feedbackElement.style.color = 'green';
                return true;
            } else {
                feedbackElement.textContent = 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character.';
                feedbackElement.style.color = 'red';
                return false;
            }
        }

        function handleSubmit(event) {
            event.preventDefault(); 

            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('password2').value;

            
            if (password !== confirmPassword) {
                Swal.fire({
                    title: 'Error!',
                    text: 'Passwords do not match. Please try again.',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
                return; 
            }

           
            if (!validatePassword(password)) {
                Swal.fire({
                    title: 'Error!',
                    text: 'Password is invalid. Please follow the password rules.',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
                return; 
            }

            
            fetch('${pageContext.request.contextPath}/createnewuser', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: 'newUserName=' + encodeURIComponent(username) + 
                      '&newPassWord=' + encodeURIComponent(password) + 
                      '&ConfirmNewPassword=' + encodeURIComponent(confirmPassword)
            })
            .then(response => response.text())
            .then(data => {
                
                Swal.fire({
                    title: 'Account Created!',
                    text: 'Your account has been created successfully.',
                    icon: 'success',
                    confirmButtonText: 'OK'
                }).then(() => {
                    window.location.href = '${pageContext.request.contextPath}/loginpage'; // Redirect to login page
                });
            })
            .catch(error => {
               
                console.error('Error during account creation:', error);
                Swal.fire({
                    title: 'An Error Occurred!',
                    text: 'There was a problem creating your account. Please try again later.',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
            });
        }
    </script>
</head>
<body>
    <div class="d-flex justify-content-center align-items-center vh-100">
        <div class="container">
            <div class="heading">Sign Up</div>
            <form action="/createnewuser" onsubmit="handleSubmit(event)" method="POST" class="form" align="center" >
                <input required class="input" type="text" name="newUserName" id="username" placeholder="Username">
                <input required class="input" type="password" name="newPassWord" id="password" placeholder="Password" oninput="validatePassword(this.value)">
                <!-- Password feedback -->
                <div id="passwordFeedback" style="margin-top: 5px;"></div>
                <input required class="input" type="password" name="ConfirmNewPassword" id="password2" placeholder="Enter Password Again">
                <input class="login-button" type="submit" value="Create Account">
                <span class="forgot-password">
                    <a href="loginpage">Back To Login</a>
                </span>
            </form>
        </div>
    </div>
</body>
</html>

<style>
    /* Center the form vertically and horizontally using Flexbox */
    .d-flex {
        display: flex;
        justify-content: center; /* Horizontally center */
        align-items: center;     /* Vertically center */
        height: 100vh;           /* Full height of the viewport */
    }

    .container {
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
