document.addEventListener("DOMContentLoaded", function() {
    let currentSlide = 1;

    function showSlide() {
        document.getElementById(`slide${currentSlide}`).style.opacity = "1";

        setTimeout(() => {
            document.getElementById(`slide${currentSlide}`).style.opacity = "0";
            currentSlide = (currentSlide % 3) + 1;
            showSlide();
        }, 2000); // Change image every 2 seconds
    }

    showSlide();
});