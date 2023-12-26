function randomize() {
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
  var chapter = Math.floor(Math.random()*chapters.length);
  var url = "";
  var n = 0;
  while (n < document.title.length) {
    if (document.title[n] == " ") {
      url += "-";
    } else {
      url += document.title[n];
    }
    n++;
  }
  if (url == chapters[chapter]) {
    if (chapter != chapters.length - 1) {
      chapter++;
    } else {
      chapter = 0;
    }
  }
  window.location = chapters[chapter];
}