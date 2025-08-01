if (document.querySelector("#cover")) {
  var $ = ~~(Math.random() * 360);
  setInterval(() => {
    document.querySelector(".x").style.backgroundColor = "hsl(" + $ + ", 100%, 80%)";
    $ < 359 ? $++ : $ = 0;
  }, 16);
}

var _ = "";

document.addEventListener("keydown", e => {
  if (e.code == "ArrowLeft") {
    document.querySelector("#nav") ? location = document.querySelector("#nav a").href : history.back();
  }
  if (e.code == "ArrowRight") {
    history.forward();
  }
});

document.addEventListener("keypress", e => {
  _ += e.key.toLowerCase();
  if (_.slice(-5) == "xyzzy") {
    !location.pathname.includes("xyzzy") ? location = "/xyzzy" : history.back();
  }
  if (_.length > 16) {
    _ = _.slice(-8);
  }
});

console.log("CONTROLS"); console.log("LEFT ARROW KEY: BACK"); console.log("RIGHT ARROW KEY: FORWARD");