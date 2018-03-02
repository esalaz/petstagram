$(function() {

  var buttonclick = function(button, page) {
    $(button).on("click", function() {
      window.location = page;
    });
  }

  buttonclick(".loginbuttonclick", "/login");
  buttonclick(".signupbuttonclick", "/signup");
  buttonclick(".feedbuttonclick", "/posts");
  buttonclick(".newpetbutton", "/pets/new");
  buttonclick(".newpostbutton", "/posts/new");

});
