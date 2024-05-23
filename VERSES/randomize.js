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