### Exhibit 4: Content negotiation

Wrong:
<pre class="fragment"><code class="http">GET http://movies.sample/json/movie/10 HTTP/1.1</code></pre>
<pre class="fragment"><code class="http">GET http://movies.sample/movie/10.json HTTP/1.1</code></pre>

Correct:
<pre class="fragment"><code class="http">GET http://movies.sample/movie/10 HTTP/1.1
Accept: application/hal+json</code></pre>

Note:

identyfikator nie wskazuje na konkretną reprezentację (media type)

można użyć 303 redirect
