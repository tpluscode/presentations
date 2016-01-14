### Exhibit 5: Client-side business logic

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

tzw. out-of-band information. nie wolno wymagać od klienta tej wiedzy

nie tak działa web
