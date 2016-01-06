### JSON-LD

`@context` removed

``` http
GET http://movies.sample/movie/10 HTTP/1.1

{
  "@id": "http://movies.sample/movie/10",
  "@type": "http://movies.sample/api#Movie",
  "http://movies.sample/api#cast": {
    "@id": "http://movies.sample/movie/10/cast"
  },
  "http://movies.sample/api#characters": {
    "@id": "http://movies.sample/movie/10/characters"
  },
  "http://schema.org/name": "Shawshank redemption"
}
```

<!-- .element class="attribution fragment" -->
[this sample in JSON-LD playground](http://tinyurl.com/jzgelve)

Note:

w ten sposób URL stanowią nie tylko linki do danych, ale także do metadanych

tylko jak te metadane opisać?
