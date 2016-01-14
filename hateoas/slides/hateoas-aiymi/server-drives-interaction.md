### Server-driven interaction

<!-- .element: class="fragment" -->
Tell clients how to do things

<pre class="fragment"><code class="http">GET http://movies.sample/movie/10 HTTP/1.1

{
  "actions": [{
    "rel": "addToFavourites",
    "method": "POST",
    "URL": "http://movies.sample/users/tpluskiewicz/favourites",
    "parameters": {
      "movie": "http://movies.sample/movie/10"
    }
  }]
}</code></pre>

Note:

URL wystarczą tylko na GET

nawet bez "znanego" media-type można dodawać wedle potrzeb bogatszy opis interakcji
