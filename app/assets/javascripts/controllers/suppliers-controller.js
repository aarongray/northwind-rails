'use strict';

App.controller('SuppliersController', ['$scope', 'Supplier',
  function ($scope, Supplier) {
    $scope.suppliers = Supplier.query();
    $scope.maxItemsPerPage = 10;
    $scope.currentPage = 0;
    $scope.numberOfPages = function() {
      return Math.ceil($scope.suppliers.length/$scope.maxItemsPerPage);
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

