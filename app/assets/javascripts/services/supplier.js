'use strict';

App.factory('Supplier', ['$resource', function ($resource) {
  return $resource('api/suppliers/:id', {
    id: '@id'
  });
}]);
