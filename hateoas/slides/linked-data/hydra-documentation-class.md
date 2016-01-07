### Hydra API Documentation

``` json
{
  "@context": "http://www.w3.org/ns/hydra/context.jsonld",
  "@graph": [
    {
      "@id": "http://movies.sample/api#Movie",
      "@type": "Class",
      "supportedProperty": [
        {
          "property": "http://movies.sample/api#tags",
          "writable": false
        }
      ]
    }
  ]
}
```
