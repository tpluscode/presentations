autoscale: true
theme: Huerta, 2
slide-dividers: #
footer: Tomasz Pluskiewicz :: ![inline](../github2career/twitter.png) tpluscode :: us2ts :: 2020

# Redefining
## Accessing graphs

# About me

* Tomasz Pluskiewicz
* Zazuko GmbH
* Interests
  * Semantic Web
  * REST APIs
  * Hydra CG

![inline 39%](../github2career/github.png) [/tpluscode](https://github.com/tpluscode)
![inline 9%](../github2career/twitter.png) [@tpluscode](https://twitter.com/tpluscode)

![right 35%](../github2career/tpluscode.jpg)

# The challenge

RDF is hard
RDF/JS is also hard
   * or at least verbose
   * contrary to what some will tell you[^1]
   * especially for novices

How do we get new devs into the RDF(/JS) space?

![right fit interface](./Interface.png)

[^1]: https://www.rubensworks.net/blog/2019/10/06/using-rdf-in-javascript/

# Prior work

1. [Romantic Web](https://romanticweb.net)
1. [JsonLD.Entities](https://github.com/wikibus/JsonLD.Entities)

* Rigid structures
* Destructive conversion
* Impendace mismatch

# @tpluscode/rdfine[^2]

* Familiar JS objects
* Not detached from underlying RDF/JS model
   * A `DatasetCore` behind the scenes
* Uses clownface[^3] by Thomas Bergwinkl
* TypeScript w/decorators
   * but usable with Babel

![right 50% integration](./Dataset.png)
   
[^2]: https://npm.im/@tpluscode/rdfine

[^3]: https://npm.im/clownface

---

![fit turtle snippet](./turtle.png)

---

![fit 170% left](./Venn-Content.png)
![fit 170% right](./Venn-Types.png)

---
[.hide-footer]

![fit Foaf:Person](./Person.png)

---
[.hide-footer]

![fit Schema:ImageObject](./SchemaImage.png)

---
[.hide-footer]

![fit Hydra:Operation](./Operation.png)

# Unit test friendly

* Unit tests without RDF dependency
  * Easier to understand
  * Easier to set up
  * Easier to manage
  * Self-contained

![right fit unit tests snippet](./Test.png)

# Next up
#### Reusable packages with pre-built classes

![60% inline unit tests snippet](./Reusable.png)

# More tools

* Used by @tpluscode/rdfine
   * [clownface](https://npm.im/clownface) by Thomas Bergwinkl

* Some more helpful libraries I build
  * [@tpluscode/rdf-ns-builders](https://npm.im/@tpluscode/rdf-ns-builders)
  * [@tpluscode/rdf-string](https://t-code.pl/rdf-string)
  * [@tpluscode/sparql-builder](https://t-code.pl/sparql-builder)

# Thank you