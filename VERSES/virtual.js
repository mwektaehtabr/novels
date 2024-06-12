console.log("hello world");

if (document.getElementById("rainbow")) {
  (r = () => {
    document.getElementById("rainbow").style.backgroundColor = "hsl(" + h + ", 100%, 80%)";
    h < 359 ? h++ : h = 0;
  })(h = ~~(Math.random() * 359), setInterval(r, 16));
}

if (window.location.host.includes("verses")) {
  randomize = () => {
    var chapters = [
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
    var chapter = "/One-About-The-" + chapters[~~(Math.random() * chapters.length)];
    while (window.location.pathname == chapter) {
      chapter = "/One-About-The-" + chapters[~~(Math.random() * chapters.length)];
    }
    window.location = chapter;
  }
}

var egg = "";

document.addEventListener("keydown", e => {
  if (e.code == "ArrowLeft") {
    history.back();
  }
  if (e.code == "ArrowRight") {
    history.forward();
    if (window.location.host.includes("verses")) {
     randomize();
    }
  }
});

document.addEventListener("keypress", e => {
  egg += e.key.toLowerCase();
  if (egg.slice(-5) == "xyzzy") {
    document.title != "xyzzy" ? window.location = "/xyzzy" : history.back();
  }
  if (egg.length > 16) {
    egg = egg.slice(-8);
  }
});