### Distributed Hydra

``` http
GET http://movies.sample/movie/10 HTTP/1.1

Link: <http://movies.sample/api/documentation.jsonld>;
      rel="http://www.w3.org/ns/hydra/core#apiDocumentation"

{
  "@context": { ... }
  "@id": "/movie/10"
}
```
