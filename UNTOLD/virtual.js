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
      "One-About-The-Drifter",
      "One-About-The-Folk",
      "One-About-The-Jazz",
      "One-About-The-Metal",
      "One-About-The-Nomad",
      "One-About-The-Pop",
      "One-About-The-Rap",
      "One-About-The-Rock",
      "One-About-The-Roles",
      "One-About-The-Sonogram",
      "One-About-The-Song",
      "One-About-The-Soul",
      "One-About-The-Trance",
      "One-About-The-Traveler",
      "One-About-The-Variations",
      "One-About-The-Wanderer"
    ];
    var chapter = "/" + chapters[~~(Math.random() * chapters.length)];
    while (window.location.pathname == chapter) {
      chapter = "/" + chapters[~~(Math.random() * chapters.length)];
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
    document.title != "xyzzy" ? window.location = "xyzzy" : history.back();
  }
  if (egg.length > 16) {
    egg = egg.slice(-8);
  }
});