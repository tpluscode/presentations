### Use URLs

``` HTTP
GET http://movies.sample/movie/10 HTTP/1.1

{
  "id": 10,
  "title": "Shawshank redemption"
}
```

<pre class="fragment"><code class="http">GET http://movies.sample/movie/10 HTTP/1.1

{
  "id": "http://movies.sample/movie/10",
  "title": "Shawshank redemption"
}</code></pre>

Note:

first step

osobista preferencja, żeby nie dodawać tablicy `Links` itp.
