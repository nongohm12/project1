<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: "Lato", sans-serif;
}

.header {
  background-color: #FAEBD7;
  color : #A0522D;
  padding: 20px;
  text-align: center;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #FAEBD7;
  overflow-x: hidden;
  padding-top: 20px;
  
}


.sidenav a, .survey-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #A0522D;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}


.sidenav a:hover, .survey-btn:hover {
  color: #FAEBD7;
}

.main {
  margin-left: 200px; 
  font-size: 20px; 
  padding: 0px 10px;
}

.active {
  background-color: black;
  color: white;
}

.survey-container {
  display: none;
  background-color: #FAEBD7;
  padding-left: 8px;
}


.fa-caret-down {
  float: right;
  padding-right: 8px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div class="header">
  <h1>โกดังนมสด</h1>
  <h2>ฟินได้ทุกวันไม่จำกัด 😋 คาวหวานจบในที่เดียว </h2>
  <p>ทางร้านต้องขออภัยในความไม่สะดวกมา ณ ที่นี้ โดยลูกค้าสามารถนั่งรับประทานที่ร้านได้ตามปกติพร้อมมาตรการคัดกรองและควบคุมความปลอดภัย</p>
</div>

<div class="sidenav">
  <a href="#menu">MENU</a>
  <a href="#about">ABOUT</a>
  <button class="survey-btn">SURVEY
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="survey-container">
    <a href="#">Link 1</a>
    </div>
  <a href="#logout">LOGOUT</a>
  

<script>
var dropdown = document.getElementsByClassName("survey-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}
</script>

</body>
</html> 
