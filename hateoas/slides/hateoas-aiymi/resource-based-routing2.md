### Resource-based routing

<!-- .element: class="fragment" -->
If needed, add a `bookmark` (alias) to your resources

<img class="fragment" alt="browser address before" src="/hateoas/img/routing-before.PNG" />

<pre class="fragment"><code class="http">GET http://movies.sample/id/unfriendly-hash-or-guid HTTP/1.1

Link: &lt;http://movies.sample/movie/10/characters>; rel="bookmark"</code></pre>

<img class="fragment" alt="browser address after" src="/hateoas/img/routing-after.PNG" />

<!-- .element: class="fragment" -->
and have server redirect that to actual resource

<!-- .element: class="attribution fragment" -->
see how [Mark Seeman](http://twitter.com/ploeh) [discourages hackable URLs](http://blog.ploeh.dk/2013/05/01/rest-lesson-learned-avoid-hackable-urls/)

Note:

po dodaniu takiej zakładki klient wykona request, a serwer przekieruje 302 do URL z 'guidem'
