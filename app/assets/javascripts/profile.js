$(function() {

  $(".ownerpet img, .petprofilepic img").css("height", $(".ownerpet img, .petprofilepic img").width());

  $(window).on("resize", function() {
    $(".ownerpet img, .petprofilepic img").css("height", $(".ownerpet img, .petprofilepic img").width());
  });

});
