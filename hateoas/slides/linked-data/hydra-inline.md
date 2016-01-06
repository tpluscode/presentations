### Inline Hydra

``` json
{
  "@id": "/movie/10",
  "hydra:operation": [
    "hydra:DeleteResourceOperation"
  ],
  "tags": {
    "@id": "/movie/10/tags",
    "hydra:operation": [
      {
        "hydra:method": "POST",
        "hydra:expects": { "@id": "CreateTagRequest" }
      }
    ]
  }
}
```

<!-- .element class="attribution" -->
[complete example on JSON-LD playground](http://json-ld.org/playground/#startTab=tab-expanded&json-ld=%7B%22%40context%22%3A%5B%7B%22%40vocab%22%3A%22http%3A%2F%2Fmovies.sample%2Fapi%23%22%2C%22%40base%22%3A%22http%3A%2F%2Fmovies.sample%2F%22%7D%2C%22http%3A%2F%2Fwww.w3.org%2Fns%2Fhydra%2Fcontext.jsonld%22%5D%2C%22%40id%22%3A%22%2Fmovie%2F10%22%2C%22hydra%3Aoperation%22%3A%5B%22hydra%3ADeleteResourceOperation%22%5D%2C%22tags%22%3A%7B%22%40id%22%3A%22%2Fmovie%2F10%2Ftags%22%2C%22hydra%3Aoperation%22%3A%5B%7B%22hydra%3Amethod%22%3A%22POST%22%2C%22hydra%3Aexpects%22%3A%7B%22%40id%22%3A%22CreateTagRequest%22%7D%7D%5D%7D%7D&context=%7B%7D)

Note:

`@context` wyrzucony dla oszczędzenia miejsca

`CreateTagRequest` też mogłoby być inline

tu widać dwie ważne przewagi JSON-LD+Hydra:

1. pobierając `/movie/10/tags`, możemy pobrane dane "złączyć" z powyższym dokumentem i otrzymać większy dokument - to istota Linked Data
1. operacje można definiować w głębi drzewa bez kombinacji ze strukturą "czytego dokumentu" (żadnych `inline`, `_embedded` itp)
