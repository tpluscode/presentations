### Consuming Hydra API

<a href="https://github.com/wikibus/heracles"><i class="fa fa-github"></i> Heracles</a>

``` js
import {Hydra} from 'wikibus/heracles';

Hydra.loadResource('http://example.com/resource')
  .then(res => {
    // contains supported classes, operations, etc.
    var apiDocs = res.apiDocumentation;

    // same as res['@id']
    var id = res.id;

    // wrap expected predicates as JS proeprties
    var ops = res.operations;
  });
```

Note:

Should we have one library to rule all media types?
