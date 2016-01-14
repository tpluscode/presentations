### Use URLs

``` HTTP
GET http://movies.sample/user/tpluskiewicz HTTP/1.1

{
  "favourites": [ 10, 12, 14 ]
}
```

<pre class="fragment"><code class="http">GET http://movies.sample/user/tpluskiewicz HTTP/1.1

{
  "favourites": [
    "http://movies.sample/movie/10",
    "http://movies.sample/movie/12",
    "http://movies.sample/movie/14"
  ]
}</code></pre>

Note:

Dzięki URL generowanym po stronie serwera klient nie musi się aktualizować, gdy zmienimy schemat. można nawet mieć wiele
domen lub schematów
