// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"
import "particles.js"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
import Siema from 'siema';

particlesJS.load('particles', '/json/config.json', function() {
  console.log('callback - particles.js config loaded');
});

document.querySelectorAll('.nav-toggle')[0].onclick = function() {
  document.querySelectorAll('.nav-menu')[0].classList.toggle('is-active')
}

if (document.querySelectorAll('.slider')[0]) {
  var mySiema = new Siema({
    selector: '.slider',
    duration: 200,
    easing: 'ease-out',
    perPage: 1,
    startIndex: 0,
    draggable: true,
    threshold: 20,
    loop: true,
    onInit: function(){},
    onChange: function(){},
  });
  document.querySelector('.prev').addEventListener('click', () => mySiema.prev());
  document.querySelector('.next').addEventListener('click', () => mySiema.next());

}

document.querySelectorAll('.li-matrice')[0].onmouseenter = function() {
  document.querySelectorAll('.li-matrice')[0].classList.add('is-active');
  var x = document.querySelector('.text-matrice');
  var y = document.querySelector('.image-matrice');
  if (x.style.display === 'none') {
        x.style.display = '';
        y.style.display = 'none';
    };
}

document.querySelectorAll('.li-matrice')[0].onmouseleave = function() {
  document.querySelectorAll('.li-matrice')[0].classList.remove('is-active')
}

document.querySelectorAll('.li-matrice_si')[0].onmouseenter = function() {
  document.querySelectorAll('.li-matrice_si')[0].classList.add('is-active');
  var x = document.querySelector('.text-matrice');
  var y = document.querySelector('.image-matrice');
  if (y.style.display === 'none') {
        x.style.display = 'none';
        y.style.display = '';
  };
  document.querySelector('.nav-image-change').src='/images/matrice_CEA.png';
  document.querySelector('.nav-image-change').alt='CEA';
}

document.querySelectorAll('.li-matrice_si')[0].onmouseleave = function() {
  document.querySelectorAll('.li-matrice_si')[0].classList.remove('is-active')
}

document.querySelectorAll('.li-matrice_cpa')[0].onmouseenter = function() {
  document.querySelectorAll('.li-matrice_cpa')[0].classList.add('is-active');
  var x = document.querySelector('.text-matrice');
  var y = document.querySelector('.image-matrice');
  if (y.style.display === 'none') {
        x.style.display = 'none';
        y.style.display = '';
  };
  document.querySelector('.nav-image-change').src='/images/matrice_CPA.png';
  document.querySelector('.nav-image-change').alt='CPA';
}

document.querySelectorAll('.li-matrice_cpa')[0].onmouseleave = function() {
  document.querySelectorAll('.li-matrice_cpa')[0].classList.remove('is-active')
}

document.querySelectorAll('.li-matrice_an')[0].onmouseenter = function() {
  document.querySelectorAll('.li-matrice_an')[0].classList.add('is-active');
  var x = document.querySelector('.text-matrice');
  var y = document.querySelector('.image-matrice');
  if (y.style.display === 'none') {
        x.style.display = 'none';
        y.style.display = '';
  };
  document.querySelector('.nav-image-change').src='/images/matrice_art_et_numerique.png';
  document.querySelector('.nav-image-change').alt='art_et_numerique';
}

document.querySelectorAll('.li-matrice_an')[0].onmouseleave = function() {
  document.querySelectorAll('.li-matrice_an')[0].classList.remove('is-active')
}

document.querySelectorAll('.li-matrice_aut')[0].onmouseenter = function() {
  document.querySelectorAll('.li-matrice_aut')[0].classList.add('is-active');
  var x = document.querySelector('.text-matrice');
  var y = document.querySelector('.image-matrice');
  if (y.style.display === 'none') {
        x.style.display = 'none';
        y.style.display = '';
  };
  document.querySelector('.nav-image-change').src='/images/matrice_autisme.png';
  document.querySelector('.nav-image-change').alt='autisme';
}

document.querySelectorAll('.li-matrice_aut')[0].onmouseleave = function() {
  document.querySelectorAll('.li-matrice_aut')[0].classList.remove('is-active')
}

document.querySelectorAll('.li-matrice_aut')[0].onmouseenter = function() {
  document.querySelectorAll('.li-matrice_aut')[0].classList.add('is-active');
  var x = document.querySelector('.text-matrice');
  var y = document.querySelector('.image-matrice');
  if (y.style.display === 'none') {
        x.style.display = 'none';
        y.style.display = '';
  };
  document.querySelector('.nav-image-change').src='/images/matrice_autisme.png';
  document.querySelector('.nav-image-change').alt='autisme';
}

document.querySelectorAll('.li-matrice_aut')[0].onmouseleave = function() {
  document.querySelectorAll('.li-matrice_aut')[0].classList.remove('is-active')
}
