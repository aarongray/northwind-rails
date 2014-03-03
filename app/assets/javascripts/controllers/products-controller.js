'use strict';

App.controller('ProductsController', ['$scope', 'Product',
  function ($scope, Product) {
    $scope.products = Product.query();
  }
]);

