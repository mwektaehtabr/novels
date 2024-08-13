if (document.querySelector("#cover")) {
  var $ = ~~(Math.random() * 360);
  setInterval(() => {
    document.querySelector("div").style.backgroundColor = "hsl(" + $ + ", 100%, 80%)";
    $ < 359 ? $++ : $ = 0;
  }, 16);
}

if (location.host.includes("v")) {
  var i = [
    "Drifter",
    "Folk",
    "Jazz",
    "Metal",
    "Nomad",
    "Pop",
    "Rap",
    "Rock",
    "Roles",
    "Sonogram",
    "Song",
    "Soul",
    "Trance",
    "Traveler",
    "Variations",
    "Wanderer"
  ];
  if (document.title == "xyzzy") {
    i.sort().forEach(e => document.querySelector("main").innerHTML += "<p><a href=\"/One-About-The-" + e + "\">One About The " + e + "</a></p>");
  }
  random = () => {
    var $ = "/One-About-The-" + i[~~(Math.random() * i.length)];
    while (location.pathname == $) {
      $ = "/One-About-The-" + i[~~(Math.random() * i.length)];
    }
    location = $;
  }
}

var _ = "";

document.addEventListener("keydown", e => {
  if (e.code == "ArrowLeft") {
    history.back();
  }
  if (e.code == "ArrowRight") {
    history.forward();
    if (location.host.includes("v")) {
      random();
    }
  }
});

document.addEventListener("keypress", e => {
  _ += e.key.toLowerCase();
  if (_.slice(-5) == "xyzzy") {
    document.title != "xyzzy" ? location = "/xyzzy" : history.back();
  }
  if (_.length > 16) {
    _ = _.slice(-8);
  }
});

console.log("hello world");