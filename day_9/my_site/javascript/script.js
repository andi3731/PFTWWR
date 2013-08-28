function playSong (song) {
  // pause all songs
  [].forEach.call(document.querySelectorAll('audio'), function (elem) {
    elem.pause();
  });

  song.play();
}

function pauseSong (song) {
  song.pause();
}

// when click on play button play respective song
[].forEach.call(document.querySelectorAll('.play'), function (e) {
  e.onclick=function(){
    playSong(e.parentNode.querySelector('audio'));
  };
});

// when click on pause button pause respective song
[].forEach.call(document.querySelectorAll('.stop'), function (e) {
  e.onclick=function(){
    pauseSong(e.parentNode.querySelector('audio'));
  };
});