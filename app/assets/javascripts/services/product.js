'use strict';

App.factory('Product', ['$resource', function ($resource) {
  return $resource('api/products/:id', {
    id: '@id'
  });
}]);
