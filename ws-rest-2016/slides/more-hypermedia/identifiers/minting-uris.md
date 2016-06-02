### Hacking URIs

``` javascript
// Chain methods together to easily build complex requests
$scope.user.one('messages', 123).one('from', 123).getList('unread.json');
// GET: /users/123/messages/123/from/123/unread.json
```

Note:

Restangular: AngularJS service to handle Rest API Restful Resources properly and easily

this brittle code will have to be changed whenever URIs change
