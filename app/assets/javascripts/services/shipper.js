'use strict';

App.factory('Shipper', ['$resource', function ($resource) {
  return $resource('api/shippers/:id', {
    id: '@id'
  });
}]);
