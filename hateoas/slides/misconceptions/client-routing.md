### Exhibit 2: Client-side routing

``` javascript
$routeProvider
  .when('/Book/:bookId', {
    templateUrl: 'book.html'
  })
```

``` javascript
$stateProvider
  .state('state1', {
    url: "/state1"
  })
```

<!-- .element class="attribution" -->
Angular's [ng-router](https://docs.angularjs.org/api/ngRoute/service/$route#example) and
[ui-router](https://github.com/angular-ui/ui-router) respectively

Note:

coupling jak wyżej; klient polega na strukturze URLi i (co gorsza) przyjmuje na ich podstawie założenia co do zawartości
