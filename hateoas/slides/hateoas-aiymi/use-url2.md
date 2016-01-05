### Use URLs

``` HTTP
GET http://movies.sample/user/tpluskiewicz HTTP/1.1

{
  "favourites": [ 10, 12, 14 ]
}
```

<pre class="fragment"><code class="json">{
  "favourites": [
    "/movie/10",
    "/movie/12",
    "/movie/14"
  ]
}</code></pre>

Note:

Dzięki URL generowanym po stronie serwera klient nie musi się aktualizować, gdy zmienimy schemat. można nawet mieć wiele
domen lub schematów
