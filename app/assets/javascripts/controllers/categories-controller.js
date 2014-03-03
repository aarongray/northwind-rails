'use strict';

App.controller('CategoriesController', ['$scope', 'Category',
  function ($scope, Category) {
    $scope.categories = Category.query();
  }
]);

