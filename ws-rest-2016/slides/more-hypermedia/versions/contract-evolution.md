### Contract evolution

Before:

``` json
{
    "name": "Tomasz Pluskiewicz"
}
```

<!-- .element class="fragment" data-fragment-index="2" -->
After:

<pre class="fragment" data-fragment-index="2"><code lang="json">{
    "name": "Tomasz Pluskiewicz",
    "firstName": "Tomasz",
    "lastName": "Pluskiewicz"
}</code></pre>

Note:

* deprecate "name" property
* make it read-only
* remove it from input contract
