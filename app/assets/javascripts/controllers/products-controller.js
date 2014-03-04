'use strict';

App.controller('ProductsController', ['$scope', 'Product',
  function ($scope, Product) {
    $scope.products = Product.query();
    $scope.maxItemsPerPage = 10;
    $scope.currentPage = 0;
    $scope.numberOfPages = function() {
      return Math.ceil($scope.products.length/$scope.maxItemsPerPage);
    }
    $scope.testPages = $scope.numberOfPages;

    $scope.setPage = function () {
      $scope.currentPage = this.paginator;
    };

    $scope.previousPage = function () {
      $scope.currentPage--;
    };

    $scope.nextPage = function () {
      $scope.currentPage++;
    };
  }
]);

