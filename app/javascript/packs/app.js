window.onload = () => {

    var navToggleButton = document.querySelector('.nav-toggler');
    var navBar = document.querySelector('.navbar');
    var navOverlay = document.querySelector('.nav-overlay');
    var navcloseButton = document.querySelector('.nav-close');

    navToggleButton.onclick = () => {
        navBar.classList.add('active');
        navOverlay.classList.add('active');
    }
    navcloseButton.onclick = () => {
        navBar.classList.remove('active')
        navOverlay.classList.remove('active')
    }
}