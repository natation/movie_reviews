(function(root) {
  'use strict';
  root.Util = {
    getMovies: function () {
      $.ajax({
        url: "/api/movies/",
        type: "GET",
        dataType: "json",
        success: function () {
          window.location = "/";
        }
      });
    }
  };
}(this));
