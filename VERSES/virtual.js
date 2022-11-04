console.log("hello world");

var hue = Math.floor(Math.random()*359);

function rainbow() {
  var color = "hsl(" + hue + ", 90%, 90%)";
  document.getElementById("cover").style.backgroundColor = color;
  hue++;
  if (hue == 360) {
    hue = 0;
  }
}

if (document.getElementById("cover") != null) {
  setInterval(rainbow, 16);
}

var egg = "";

document.addEventListener("keydown", function(event) {
  if (event.code == "ArrowLeft") {
    history.back();
  }
  if (event.code == "ArrowRight") {
    history.forward();
  }
});

document.addEventListener("keypress", function(event) {
  if (event.code != "Space") {
    egg += event.key.toLowerCase();
  } else {
    event.preventDefault();
  }
  if (egg.slice(-5) == "xyzzy") {
    if (document.title != "xyzzy") {
      window.location = "xyzzy";
    } else {
      history.back();
    }
  }
  if (egg.length > 32) {
    egg = egg.slice(-8);
  }
});