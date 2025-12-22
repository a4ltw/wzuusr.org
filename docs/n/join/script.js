// YouTube Player API
let player;
function onYouTubeIframeAPIReady() {
    player = new YT.Player('youtube-player', {
        height: '360',
        width: '640',
        videoId: 'FhVxROgeMyQ', // WZU USR video ID
        events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
        }
    });
}

function onPlayerReady(event) {
    // You can add code here to automatically play the video or do other things
}

function onPlayerStateChange(event) {
    // You can add code here to respond to player state changes
}

document.getElementById('play-btn').addEventListener('click', function() {
    if (player && typeof player.playVideo === 'function') {
        player.setPlaybackRate(1.5);
        player.playVideo();
    }
});

// Image Lightbox
function zoomImage(img) {
    const lightbox = document.getElementById('lightbox');
    const lightboxImage = document.getElementById('lightbox-image');
    lightboxImage.src = img.src;
    lightbox.classList.add('visible');
}

function zoomImageOut() {
    const lightbox = document.getElementById('lightbox');
    lightbox.classList.remove('visible');
    document.getElementById('lightbox-image').src = ''; // Clear image
}

// Presentation Slideshow
let currentSlide = 0;
const totalSlides = 18;

function changeSlide(direction) {
    currentSlide += direction;

    // Loop around
    if (currentSlide >= totalSlides) {
        currentSlide = 0;
    } else if (currentSlide < 0) {
        currentSlide = totalSlides - 1;
    }

    // Update image source
    const slideImage = document.getElementById('presentation-slide');
    slideImage.src = `assets/output-page-${currentSlide}.jpg`;

    // Update counter
    document.getElementById('current-slide').textContent = currentSlide + 1;
}

// Keyboard navigation for slides
document.addEventListener('keydown', function(event) {
    if (event.key === 'ArrowLeft') {
        changeSlide(-1);
    } else if (event.key === 'ArrowRight') {
        changeSlide(1);
    }
});