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
