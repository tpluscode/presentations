### Client without hypermedia

``` javascript
function deleteMovie(movie) {
    if (movie.isPublished) {
        return false;
    }

    $.delete('http://movies.sample/movie/' + movie.id);
}

function saveMovie(movie) {
    if (movie.id === 0) {
        $.post('http://movies.sample/movies/');
    }
    else {
      $.put('http://movies.sample/movie/' + movie.id);
    }
}
```

Note:

developers rely on out-of-band information about URIs, possible actions and business logic
