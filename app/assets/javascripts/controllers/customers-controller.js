'use strict';

App.controller('CustomersController', ['$scope', 'Customer',
  function ($scope, Customer) {
    $scope.customers = Customer.query();
    $scope.maxItemsPerPage = 10;
    $scope.currentPage = 0;
    $scope.numberOfPages = function() {
      return Math.ceil($scope.customers.length/$scope.maxItemsPerPage);
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

