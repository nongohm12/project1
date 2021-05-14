<!DOCTYPE html>
<html lang="en">
<style>
    input[type=text],
    select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }
</style>

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="full-page" style="background-color: #E3BF9F; height: 768px; margin: -10px;">
        <div class="navbar">
            <center>
                <div>
                    <a href='login.php'><img src="img/header.png" style="border-radius: 25px; margin-top:100px; margin-bottom:100px;" /></a>
                </div>
            </center>
            <div id='login-form' class='login-page'>
                <div style="border-radius: 5px; background-color: #f2f2f2; padding: 20px; height:max-content; margin-left:500px; margin-right:500px;">
                    <form action="/menupage.php">
                        <label for="username">Username</label>
                        <input type="text" id="username" name="username" placeholder="Username">

                        <label for="password">Password</label>
                        <input type="text" id="password" name="password" placeholder="Password">
                        <input type="submit" value="Submit">
                    </form>
                </div>


            </div>
        </div>
        <script>
            var x = document.getElementById('login');
            var y = document.getElementById('register');
            var z = document.getElementById('btn');

            function register() {
                x.style.left = '-400px';
                y.style.left = '50px';
                z.style.left = '110px';
            }

            function login() {
                x.style.left = '50px';
                y.style.left = '450px';
                z.style.left = '0px';
            }
        </script>
        <script>
            var modal = document.getElementById('login-form');
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
</body>

</html>