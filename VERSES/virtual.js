if (document.querySelector("#cover")) {
  var $ = ~~(Math.random() * 360);
  setInterval(() => {
    document.querySelector("div").style.backgroundColor = "hsl(" + $ + ", 100%, 80%)";
    $ < 359 ? $++ : $ = 0;
  }, 16);
}

if (location.host.includes("v")) {
  random = () => {
    var _ = [
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
    var $ = "/One-About-The-" + _[~~(Math.random() * _.length)];
    while (location.pathname == $) {
      $ = "/One-About-The-" + _[~~(Math.random() * _.length)];
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