if (document.querySelector("#cover")) {
  var $ = ~~(Math.random() * 360);
  setInterval(() => {
    document.querySelector(".x").style.backgroundColor = "hsl(" + $ + ", 100%, 80%)";
    $ < 359 ? $++ : $ = 0;
  }, 16);
}

var i = [
  "Agamas",
  "Bible",
  "Chorus",
  "Contrapuntal",
  "Daodejing",
  "Doha",
  "Drifter",
  "Ghazal",
  "Granth",
  "Koran",
  "Nomad",
  "Pantoum",
  "Planet",
  "Prophecy",
  "Roles",
  "Rondeau",
  "Sestina",
  "Song",
  "Sonogram",
  "Sutras",
  "Tanka",
  "Torah",
  "Traveler",
  "Variations",
  "Vedas",
  "Villanelle",
  "Wanderer"
];

if (location.pathname.includes("xyzzy")) {
  i.sort().forEach(e => document.querySelector("main").innerHTML += "<p><a href=\"/One-About-The-" + e + "\">One About The " + e + "</a></p>");
}

if (location.pathname.includes("-")) {
  i.splice(i.indexOf(location.pathname.replace("/One-About-The-", "")), 1);
}

back = () => {
  (!document.referrer.includes(location.hostname) || history.length == 1) ? location = "/" : history.back();
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
    !location.pathname.includes("xyzzy") ? location = "/xyzzy" : history.back();
  }
  if (_.length > 16) {
    _ = _.slice(-8);
  }
});

console.warn("CONTROLS"); console.log("LEFT ARROW KEY: BACK"); console.log("RIGHT ARROW KEY: FORWARD");