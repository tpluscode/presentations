# HATEOAS as if you meant it

## We know the REST

15 lat od pracy doktorskiej Roya Fieldinga

"each endpoint REpresents a State Transfer"
http://stackoverflow.com/a/9169270/1103498

### Do we? - REST constraints

* Client–server
W przypadku HTTP łatwe do osiągnięcia

* Stateless
Rzadko łamana zasada

* Cacheable
W HTTP "za darmo" choć rzadko używane

* Layered system
Również łatwe z HTTP

These are "easy"

There is also
Code on demand (optional)

### The rest is hard (pun intended)

http://roy.gbiv.com/untangled/2008/rest-apis-must-be-hypertext-driven
http://soabits.blogspot.dk/2012/04/restful-resources-are-not-typed.html

Uniform interface

#### Identification of resources

Interfejs definiuje charakter identyfikatorów (URL w HTTP)

Ale identyfikatory jako takie nie mają znaczenia. Równie dobrze może być http://example.com/id/3F2504E0-4F89-41D3-9A0C-0305E82C3301 (@ploeh)

#### Manipulation of resources through representations

I nie chodzi o decyzję POST/PUT ani twarde trzymanie się metod HTTP. Natomiast często nie wykorzystujemy potencjału HTTP
(HTTP Headers)

#### Self-descriptive messages
#### Hypermedia as the engine of application state

### A i tak robimy źle

https://github.com/mgonto/restangular
AngularJS service to handle Rest API Restful Resources properly and easily

// Chain methods together to easily build complex requests
$scope.user.one('messages', 123).one('from', 123).getList('unread');
// GET: /users/123/messages/123/from/123/unread

## Używajmy URI

Dlaczego

{
  Id: 10,
  Links: {
    Self: /this/is/10,
    Friends: /this/friends/of/10
  }
}

a nie

{
  Id: /this/is/10,
  Friends: {
    Id: /this/friends/of/10
  }
}

albo

{
  Id: /this/is/10,
  Friends: /this/friends/of/10
}

Inny przykład

{
  Id: 10,
  Friends: [ 11, 12, 13 ],
  Links: {
    Self: /this/is/10,
    Friends: /this/friends/of/10
  }
}

zamiast

{
  Id: /this/is/10,
  Friends: [
    { Id: /this/is/11 },
    { Id: /this/is/12 },
    { Id: /this/is/13 }
  ]
}

lub prościej

{
  Id: /this/is/10,
  Friends: [
    /this/is/11,
    /this/is/12,
    /this/is/13
  ]
}

## What about operations?

Runtime affordance discovery

Cytat z Fieldinga

## Właśnie wymyśliłem JSON-LD

{
  "@context": {
    "@base": "http://example.com",
    "friends": {
      "@id":"http://example.com/vocab/friends",
      "@type": "@id",
      "@container":"@list"
    }
  },
  "@id": "/this/is/10",
  "friends": [
    "/this/is/11",
    "/this/is/12",
    "/this/is/13"
  ]
}

U Fieldinga częste słowo **distributed**

----

**inne**

http://kinderman.net/2010/06/23/approaching-pure-rest-learning-to-love-hateoas
