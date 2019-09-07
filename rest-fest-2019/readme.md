autoscale: true
# Building hypermedia app

--- 

## About me

* Wrocław .NET User Group
* Away from .NET since November
* Zazuko GmbH
* Interests (random order)
  * REST APIs
  * Web Components
  * Semantic Web

<br>

![inline](../github2career/github.png) [/tpluscode](https://github.com/tpluscode)
![inline](../github2career/twitter.png) [@tpluscode](https://twitter.com/tpluscode)

![right 35%](../github2career/tpluscode.jpg)

---

## Fed up with web development

My experience before 2016

* Brittle APIs
  * No links
  * Little-to-no docus => tribal knowledge
* UI code full of out-of-band knowledge
  * SPA routing is the devil
  * Hardcoded assumptions about representations

---

## Moar hypermedia

[Practice hypermedia like the world is ending](http://presentations.t-code.pl/hateoas/#/5)

![inline self-plagiarism](self-plagiarism.jpeg)

--- 

## Making it happen

--- 

### Hydra
#### Hypermedia through JSON-LD

[![inline](../github2career/github.png)/hydra-cg](https://github.com/hydra-cg)

```json
{
  "@context": [
      "https://schema.org/",
      "https://www.w3.org/ns/hydra/core",
      { "@vocab": "https://hypermedia.app/vocab#" }
  ],
  "@id": "https://hypermedia.app/Tomasz",
  "@type": "Person",
  "name": "Tomasz",
  "familyName": "Pluskiewicz",
  "friends": {
      "@id": "https://hypermedia.app/Tomasz/friends",
      "supportedOperation": { "method": "POST", "expects": "Person" }
  }
}
```

---

### `@lit-any`

Functional approach to building UI

* late-bound UI - no upfront assumptions about representations
* no frills alternative to Redux and Virtual DOM
* using best practices and modern ES6 coding techniques

![inline](../github2career/github.png) [/hypermedia-app/lit-any-views](https://github.com/hypermedia-app/lit-any-views)

---

### `@lit-any`

```js
import { html } from 'lit-any'
import resourceIs from './matchers.js'

export default {
  valueMatcher: resourceIs('https://www.w3.org/ns/hydra/core#Collection'),
  template: (collection, next) => {
    return html`${item}`
  }
}
```

_Disclaimer: not current implementation_

---

### `hydrofoil-shell`
#### A Single-Page App skeleton

* Web Components
* API-agnostic
* Design-agnostic
* Customizable

```js
import { HydrofoilShell } from '@hydrofoil/hydrofoil-shell/hydrofoil-shell';
import { load } from './lib/client';

class AppShell extends HydrofoilShell {
  async loadResourceInternal(url) {
    return load(url);
  }
}

customElements.define('app-shell', AppShell);
```

---

## Demo time

Fingers crossed

---

## Please follow

[https://building.hypermedia.app](https://building.hypermedia.app)

![inline](../github2career/github.png) [/hypermedia-app](https://github.com/hypermedia-app)
![inline](../github2career/twitter.png) [@HypermediaApp](https://twitter.com/HypermediaApp)