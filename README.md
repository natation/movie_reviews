# Theatre Cinema Intelligence

[See It Live](tci-movies.herokuapp.com)

Welcome to my Rails 4 movie review web application! It allows users to see the
top rated movies and their associated reviews. Users can sort by movie title,
release date, and genre. They can also click into the movie show page and see
movie information, average review rating, movie reviews, and add reviews.

# Testing and Code Discussion

Following TDD, I use RSpec to do unit level testing. Tests are located in the spec
directory. I develop tests first, or in parallel, with application code.

To get movie information, I use [The Movie Database API](http://docs.themoviedb.apiary.io/).
I use an AJAX request to my server-side movie API. This is so that I
can keep my Movie Database API key secure. My movie API effectively stores the
top rated movies into my movies database. Reviews are stored in another database,
whose foreign key points to the movies database.

jQuery is used to do the sorting by title, release date, and genre on the fly
with the need to make another get request. Also, I have implemented a success or
error alert system for validating the creation of reviews.
