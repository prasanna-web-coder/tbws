wow = new WOW(
  {
  animateClass: 'animated_new',
  offset:       100,
  callback:     function(box) {
      console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
  }
  }
);
wow.init();
document.getElementById('div').onclick = function() {
    var section = document.createElement('div');
};

$(document).ready(function() {
  $("body").iealert({
    support:"ie9",
    title: "Did you know that your Internet Explorer is out of date?",
    text: "To get the best possible experience using our site we recommend that you upgrade to a modern web browser. To download a newer web browser click on the Upgrade button.",
    upgradeTitle: "Upgrade",
    upgradeLink: "https://www.microsoft.com/en-in/download/Internet-Explorer-11-for-Windows-7-details.aspx"
  });
});