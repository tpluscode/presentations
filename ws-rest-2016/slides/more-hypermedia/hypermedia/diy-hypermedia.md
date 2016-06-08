### DIY Hypermedia *

``` http
GET http://movies.sample/movie/10 HTTP/1.1

{
  "actions": [{
    "rel": "addToFavourites",
    "method": "POST",
    "URL": "http://movies.sample/users/tpluskiewicz/favourites",
    "parameters": {
      "movie": "http://movies.sample/movie/10"
    }
  }]
}
```

\* or use a predefined media-type
