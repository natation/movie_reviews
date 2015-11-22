(function(root) {
  'use strict';
  var Index = root.Index = {
    runScripts: function () {
      Index.checkMovies();
      Index.bindHandlers();
    },
    bindHandlers: function () {
      var $getMoviesButton = $('.get-movies');
      $getMoviesButton.on('click', function (e) {
        e.preventDefault();
        $(this).attr('disabled', 'disabled');
        Util.getMovies();
      });
    },
    checkMovies: function () {
      var $movies = $('.movie');
      if ($movies.length === 0 && window.location.pathname === "/") {
        Util.getMovies();
      }
    }
  };
}(this));
