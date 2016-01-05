### Server-driven interaction

<pre class="fragment"><code class="http">GET http://movies.sample/movie/10 HTTP/1.1

{
  "type": "Movie"
}</code></pre>

<pre class="fragment"><code class="javascript">function selectView(resource) {
    if(!resource.type) {
        return "views/unrecognized-model.html";
    }

    return "views/{resource.type}.html";
}</code></pre>

Note:

to jest sedno HATEOAS as if you meant it
