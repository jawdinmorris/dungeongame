// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var sec = 3;
var myTimer = document.getElementById('myTimer');
var myBtn = document.getElementById('myBtn');
var battleScreen = document.getElementById('battleScreen');
window.onload = countDown;

function countDown() {
  if (sec == 1) {
    myTimer.innerHTML = "Currently fighting: " + "0" + sec + " second remains."
        $("#myTimer").fadeTo(1000, 0);
  }
  else if (sec < 10) {
    myTimer.innerHTML = "Currently fighting: " + "0" + sec + " seconds remain.";
  } else {
    myTimer.innerHTML = "Currently fighting: " + sec + " seconds remain.";
  }
  if (sec <= 0) {
    $("#myBtn").removeAttr("disabled");
    $("#myBtn").removeClass().addClass("btnEnable");

    $("#battleScreen").fadeIn(1000, 1);

    myBtn.value = "Fight Again!";
    return;
  }
  sec -= 1;
  window.setTimeout(countDown, 1000);
}
