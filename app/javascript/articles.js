$(function () {
  $(document).on("mouseover", "h2", function () {
    $(this).css({ "color": "pink" });
  }).on("mouseout", "h2", function () {
    $(this).css({ "color": "" });
  })
});