'use strict';

App.factory('Category', ['$resource', function ($resource) {
  return $resource('api/categories/:id', {
    id: '@id'
  });
}]);
