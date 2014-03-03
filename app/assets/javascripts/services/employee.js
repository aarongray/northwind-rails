'use strict';

App.factory('Employee', ['$resource', function ($resource) {
  return $resource('api/employees/:id', {
    id: '@id'
  });
}]);
