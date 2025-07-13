if (document.querySelector("#cover")) {
  var $ = ~~(Math.random() * 360);
  setInterval(() => {
    document.querySelector("div").style.backgroundColor = "hsl(" + $ + ", 100%, 80%)";
    $ < 359 ? $++ : $ = 0;
  }, 16);
}

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

if (location.pathname.includes("xyzzy")) {
  i.sort().forEach(e => document.querySelector("main").innerHTML += "<p><a href=\"/One-About-The-" + e + "\">One About The " + e + "</a></p>");
}

if (location.pathname.includes("-")) {
  i.splice(i.indexOf(location.pathname.replace("/One-About-The-", "")), 1);
}

random = () => {
  location = "/One-About-The-" + i[~~(Math.random() * i.length)];
}

var _ = "";

document.addEventListener("keydown", e => {
  if (e.code == "ArrowLeft") {
    history.back();
  }
  if (e.code == "ArrowRight") {
    random();
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