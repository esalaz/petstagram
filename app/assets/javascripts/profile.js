$(function() {

  $(".ownerpet img").css("height", $(".ownerpet img").width());

  $(window).on("resize", function() {
    $(".ownerpet img").css("height", $(".ownerpet img").width());
  });

});
