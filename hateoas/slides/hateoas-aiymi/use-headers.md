### Use HTTP <span class="fragment" data-fragment-index="2">(Link)</span> headers

``` HTTP
GET http://movies.sample/movie/10 HTTP/1.1
```

<pre class="fragment" data-fragment-index="1"><code class="http">HTTP/1.1 200 OK

Link: &lt;http://movies.sample/breadcrumbs?for=/movie/10>;
      rel="http://hateoas.api/breadcrumbs"
Link: &lt;http://movies.sample/unathorized_menu>;
      rel="http://hateoas.api/navigation/menu"</code></pre>

Note:
strona może składać się z wielu elementów (menu, box logowania, breadcrumb)

linki pozwalając na niezależne cache'owanie powiązanych zasobów

linki mogą także służyć do komunkacji metadanych o zasobach
