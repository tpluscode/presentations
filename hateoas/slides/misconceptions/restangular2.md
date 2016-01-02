### Exhibit 1: Restangular

``` javascript
// Chain methods together to easily build complex requests
$scope.user.one('messages', 123).one('from', 123).getList('unread');
// GET: /users/123/messages/123/from/123/unread
```

Note:

coupling: jeżeli zmieni się schemat konieczna jest zmiana klienta
