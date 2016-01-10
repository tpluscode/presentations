### JSON-LD

``` json
{
  "@context": {
    "@base": "http://movies.sample/",
    "@vocab": "http://movies.sample/api#",
    "xsd": "http://www.w3.org/2001/XMLSchema#",
    "cast": { "@type": "@id" },
    "characters": { "@type": "@id" },
    "sch:title": "http://schema.org/name",
    "type": "@type"
  },
  "@id": "/movie/10",
  "type": "Movie",
  "sch:title": { "@value": "Shawshank redemption", "@type": "xsd:string" },
  "characters": "/movie/10/characters",
  "cast": "/movie/10/cast"
}
```

Note:

LD - Linked Data

w przeciwieństwie to XML, JSON nie wspiera przestrzeni nazw (prefiksów) ani hypermedia

w przeciwieństwie do większości innych hypermedia-type (HAL, SIREN, json-api), JSON-LD pozwala nie zmieniać ogólnej struktury
dokumentu (reprezentacji) - innymi słowy składnia jest niezależna od semantyki
