$(function() {

  $(".feedposts img").css("height", $(".feedposts img").width());

  $(window).on("resize", function() {
    $(".feedposts img").css("height", $(".feedposts img").width());
  });

});
