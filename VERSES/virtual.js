console.log("hello world");

if (document.getElementById("rainbow") != null) {
  var hue = ~~(Math.random() * 359);
  setInterval(() => {
    document.getElementById("rainbow").style.backgroundColor = "hsl(" + hue + ", 90%, 90%)";
    hue < 359 ? hue++ : hue = 0;
  }, 16);
}

var egg = "";

document.addEventListener("keydown", event => {
  if (event.code == "ArrowLeft") {
    history.back();
  }
  if (event.code == "ArrowRight") {
    history.forward();
    if (window.location.host == "verses.pub") {
     randomize();
    }
  }
});

document.addEventListener("keypress", event => {
  egg += event.key.toLowerCase();
  if (egg.slice(-5) == "xyzzy") {
    document.title != "xyzzy" ? window.location = "xyzzy" : history.back();
  }
  if (egg.length > 16) {
    egg = egg.slice(-8);
  }
});