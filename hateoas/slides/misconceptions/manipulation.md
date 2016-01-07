### Manipulation of resources through representations

> REST components perform actions on a resource by using a representation to capture the **current or intended state of that
> resource and transferring that representation** between components

<!-- .element class="attribution" -->
from Roy Fielding's dissertation

Note:

odpowiedź serwera dane i metadane potrzebne do jej przetworzenia

content negotiation! żadnych x.json, x.xml

coupling: idąc na skróty, często "na sztywno" tworzymy ciało requestów po stronie klienta

co, gdy zmieni się kontrakt? to jest powiązane z kolejnym wymaganiem (self-descriptive)
