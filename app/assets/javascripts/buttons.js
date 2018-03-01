$(function() {

  var buttonclick = function(button, page) {
    $(button).on("click", function() {
      window.location = page;
    });
  }

  buttonclick(".loginbuttonclick", "/users/login");
  buttonclick(".signupbuttonclick", "/users/new");
  buttonclick(".feedbuttonclick", "/users/feed");


});


