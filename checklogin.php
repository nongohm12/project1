<?php 
session_start();
        if(isset($_POST['mem_username'])){
            include('connectDB.php');
                  $mem_username = $_POST['mem_username'];
                  $mem_password = $_POST['mem_password'];

                  $sql="SELECT * FROM member 
                  WHERE  mem_username='".$mem_username."' 
                  AND  mem_password='".$mem_password."' ";
                  $result = mysqli_query($cid,$sql);
                  
				
                  if(mysqli_num_rows($result)==1){
                      $row = mysqli_fetch_array($result);

                      $_SESSION['mem_username'] = $row['mem_username'];
                      $_SESSION['mem_password'] = $row['mem_password'];
                      $_SESSION['mem_email'] = $row['mem_email'];
                      $_SESSION['mem_fname'] = $row['mem_fname'];
                      $_SESSION['mem_lname'] = $row['mem_lname'];
                      $_SESSION['mem_tel'] = $row['mem_tel'];
                      $_SESSION['mem_status'] = $row['mem_status'];

                      if($_SESSION['mem_status'] == "member"){ 
                        Header("Location: homepage.php");
                      }
                    
                  }else{
                    echo "<script>";
                        echo "alert(\" Email หรือ  Password ไม่ถูกต้อง\");"; 
                        echo "window.history.back()";
                    echo "</script>";
                  }
        }else{

             Header("Location: login.php"); //user & password incorrect back to login again
 
        }
?>