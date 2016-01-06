### JSON-LD

``` http
GET http://movies.sample/movie/10 HTTP/1.1

{
  "@context": {
    "@base": "http://movies.sample/",
    "@vocab": "http://movies.sample/api#",
    "cast": { "@type": "@id" },
    "characters": { "@type": "@id" },
    "sch": "http://schema.org/name",
    "type": "@type"
  },
  "@id": "/movie/10",
  "type": "Movie",
  "sch:title": "Shawshank redemption",
  "characters": "/movie/10/characters",
  "cast": "/movie/10/cast"
}
```

Note:

LD - Linked Data

w przeciwieństwie to XML, JSON nie wspiera przestrzeni nazw (prefiksów) ani hypermedia

w przeciwieństwie do większości innych hypermedia-type (HAL, SIREN, json-api), JSON-LD pozwala nie zmieniać ogólnej struktury
dokumentu (reprezentacji) - innymi słowy składnia jest niezależna od semantyki
