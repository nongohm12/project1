<?php
include('header.php');
?>
<html>

<head>
    <title>Home</title>
</head>

<body style="background: rgb(255,250,233);
background: linear-gradient(90deg, rgba(255,250,233,1) 0%, rgba(255,250,234,1) 36%, rgba(255,250,244,1) 79%, rgba(255,241,221,1) 100%);">
    <div class="iniDiv">
        <div>
            <div class="mySlides">
                <div><img src="img/image1.jpg" style="border-radius: 25px; width:80%"></div>
            </div>

            <div class="mySlides">
                <div><img src="img/image2.jpg" style="border-radius: 25px; width:80%"></div>
            </div>

            <div class="mySlides">
                <div><img src="img/image3.jpg" style="border-radius: 25px; width:80%"></div>
            </div>

            <div class="mySlides">
                <div><img src="img/image4.jpg" style="border-radius: 25px; width:80%"></div>
            </div>

            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>
            <div class="dot-container">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
            </div>
        </div>
    </div>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
</body>

</html>