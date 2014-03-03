'use strict';

App.factory('OrderDetail', ['$resource', function ($resource) {
  return $resource('api/order_details/:id', {
    id: '@id'
  });
}]);
