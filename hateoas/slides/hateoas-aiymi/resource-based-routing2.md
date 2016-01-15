### Resource-based routing

What if identifiers aren't friendly?

<!-- .element: class="fragment" -->
Add a `bookmark` (alias) to your resources

<img class="fragment" alt="browser address before" src="img/routing-before.PNG" />

<pre class="fragment"><code class="http">GET http://movies.sample/id/unfriendly-hash-or-guid HTTP/1.1

Link: &lt;http://movies.sample/movie/matrix/characters>; rel="bookmark"</code></pre>

<img class="fragment" alt="browser address after" src="img/routing-permalink.PNG" />

<!-- .element: class="attribution" -->
see how [Mark Seeman](http://twitter.com/ploeh) [discourages hackable URLs](http://blog.ploeh.dk/2013/05/01/rest-lesson-learned-avoid-hackable-urls/)

Note:

możliwa motywacja:

1. łatwiejsze nadawanie id (GUID)
1. API na hackowanie URLi
1. tekże w celu ukrycia identyfikatorów (szyfrowanie?)

konieczne przekierowanie 302 z aliasu do nieprzyjaznego URLa
