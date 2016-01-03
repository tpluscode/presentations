### Empower clients

``` HTTP
GET http://movies.sample/movie/10 HTTP/1.1
```

<pre class="fragment"><code class="javascript">{
  "actions": [{
    "method": "POST",
    "URL": "http://movies.sample/users/tpluskiewicz/favourites",
    "parameters": [
      "movie": "http://movies.sample/movie/10"
    ]
  }]
}</code></pre>

Note:

URL wystarczą tylko na GET
