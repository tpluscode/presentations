### JSON-LD

`@context` removed

``` json
{
  "@id": "http://movies.sample/movie/10",
  "@type": "http://movies.sample/api#Movie",
  "http://movies.sample/api#cast": {
    "@id": "http://movies.sample/movie/10/cast"
  },
  "http://movies.sample/api#characters": {
    "@id": "http://movies.sample/movie/10/characters"
  },
  "http://schema.org/name": {
    "@type": "http://www.w3.org/2001/XMLSchema#string",
    "@value": "Shawshank redemption"
  }
}
```

<!-- .element class="attribution" -->
[this sample in JSON-LD playground](http://json-ld.org/playground/#startTab=tab-compacted&json-ld=%7B%22%40context%22%3A%7B%22%40base%22%3A%22http%3A%2F%2Fmovies.sample%2F%22%2C%22%40vocab%22%3A%22http%3A%2F%2Fmovies.sample%2Fapi%23%22%2C%22xsd%22%3A%22http%3A%2F%2Fwww.w3.org%2F2001%2FXMLSchema%23%22%2C%22cast%22%3A%7B%22%40type%22%3A%22%40id%22%7D%2C%22characters%22%3A%7B%22%40type%22%3A%22%40id%22%7D%2C%22sch%3Atitle%22%3A%22http%3A%2F%2Fschema.org%2Fname%22%2C%22type%22%3A%22%40type%22%7D%2C%22%40id%22%3A%22%2Fmovie%2F10%22%2C%22type%22%3A%22Movie%22%2C%22sch%3Atitle%22%3A%7B%22%40value%22%3A%22Shawshank%20redemption%22%2C%22%40type%22%3A%22xsd%3Astring%22%7D%2C%22characters%22%3A%22%2Fmovie%2F10%2Fcharacters%22%2C%22cast%22%3A%22%2Fmovie%2F10%2Fcast%22%7D&context=%7B%7D)

Note:

w ten sposób URL stanowią nie tylko linki do danych, ale także do metadanych

tylko jak te metadane opisać?
