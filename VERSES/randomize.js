function randomize() {
  var chapters = ["The-One-About-The-Nomad", "The-One-About-The-Sonogram", "The-One-About-The-Song", "The-One-About-The-Traveler"];
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