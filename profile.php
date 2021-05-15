<?php
include('connectDB.php');
include('header.php');
$mem_username = $_SESSION['mem_username'];
$sql = "select mem_fname,mem_lname,mem_email
        from member where mem_username = '" . $mem_username . "'";
$query = mysqli_query($con, $sql);
$result = mysqli_fetch_array($query);
?>
html>

<head>
    <title>Profile</title>
</head>

<body class="bgbg">
    <div class="iniDiv">
        

    </div>

</body>


</html>