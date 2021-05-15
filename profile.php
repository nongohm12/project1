<?php
include('connectDB.php');
include('header.php');
session_start();
$mem_username = $_SESSION['mem_username'];
$sql = "select mem_fname,mem_lname,mem_email
        from member where mem_username = '" . $mem_username . "'";
$query = mysqli_query($cid, $sql);
$result = mysqli_fetch_array($query);
// echo $_SESSION["mem_tel"];
?>
<html>

<head>
    <title>Profile</title>
</head>

<body class="bgbg">
    <div class="iniDiv">
        <div class="box3">
            <div>
                <div>
                    <form>
                        <label>Firstname </label>
                        <input type="text" id="Name" style="margin-top: 50px;margin-left: 35px;border-radius: 25px;text-align: center;" value="<?php echo $result['mem_fname'] ?>">
                    </form>
                </div>

            </div>
            <div>
                <div>
                    <form>
                        <label>Lastname</label>
                        <input type="text" id="Username" style="margin-left: 7px;border-radius: 25px;text-align: center;" value="<?php echo $result['mem_lname'] ?>">
                    </form>
                </div>

            </div>
            <div class="row ">
                <div>
                    <form>
                        <label>Email</label>
                        <input type="text" id="Email" style="margin-left: 40px;border-radius: 25px;text-align: center;" value="<?php echo $result['mem_email'] ?>">
                    </form>
                </div>

            </div>
            <div class="row ">
                <div>
                    <form>
                        <label>Tel. </label>
                        <input type="text" id="Password" style="margin-left: 13px;border-radius: 25px;text-align: center;" value="<?php echo $_SESSION["mem_tel"]; ?>">
                    </form>
                </div>

            </div>
            <div>
                <div>
                    <button type="button" onclick="save0Click()" style="margin-top:3px;">save</button>
                    <a href="homepage.php"><button type="button" style="margin-top:3px;">cancel</button></a>
                </div>

            </div>

        </div>

    </div>

</body>
<script>
    
    function save0Click() {
        $.ajax({
            url: "saveinfoProfile.php",
            type: "POST",
            data: {
                mem_username: $("#mem_username").val(),
                mem_password: $("#mem_password").val(),
                mem_fname: $("#mem_fname").val(),
                mem_lname: $("#mem_lname").val(),
                mem_email: $("#mem_email").val(),
                mem_tel: $("#mem_tel").val()
            },
            beforeSend: function() {
                $('#loadMe').modal('show');
            },
            complete: function() {
                $('#loadMe').modal('hide');
            },
            success: function(data) {
                alert('save success');
                window.location = "homepage.php";
            }
        })
    }
</script>


</html>