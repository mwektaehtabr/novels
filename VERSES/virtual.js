if (document.querySelector("#cover")) {
  var $ = ~~(Math.random() * 360);
  setInterval(() => {
    document.querySelector("div").style.backgroundColor = "hsl(" + $ + ", 100%, 80%)";
    $ < 359 ? $++ : $ = 0;
  }, 16);
}

if (location.host.includes("verses")) {
  var i = [
    "Agamas",
    "Bible",
    "Chorus",
    "Daodejing",
    "Drifter",
    "Granth",
    "Koran",
    "Nomad",
    "Planet",
    "Prophecy",
    "Roles",
    "Song",
    "Sonogram",
    "Sutras",
    "Torah",
    "Traveler",
    "Variations",
    "Vedas",
    "Wanderer"
  ];
  if (document.title == "xyzzy") {
    i.sort().forEach(e => document.querySelector("main").innerHTML += "<p><a href=\"/One-About-The-" + e + "\">One About The " + e + "</a></p>");
  }
  i.splice(i.indexOf(location.pathname.replace("/One-About-The-", "")), 1);
}

back = () => {
  history.back();
  if (document.querySelector("[data-link]")) {
    location = document.querySelector("p").dataset.link;
  }
}

forward = () => {
  if (location.host.includes("verses")) {
    location = "/One-About-The-" + i[~~(Math.random() * i.length)];
  }
  history.forward();
}

var _ = "";

document.addEventListener("keydown", e => {
  if (e.code == "ArrowLeft") {
    back();
  }
  if (e.code == "ArrowRight") {
    forward();
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