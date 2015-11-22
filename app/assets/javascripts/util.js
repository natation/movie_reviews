$(function() {
  'use strict';
  $.ajax({
    url: "/api/movies/",
    type: "GET",
    dataType: "json",
    success: function () {
      $.get("/");
    }
  });
});
