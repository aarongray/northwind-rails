'use strict';

App.factory('Order', ['$resource', function ($resource) {
  return $resource('api/orders/:id', {
    id: '@id'
  });
}]);
