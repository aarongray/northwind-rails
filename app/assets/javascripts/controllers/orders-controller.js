'use strict';

App.controller('OrdersController', ['$scope', 'Order',
  function ($scope, Order) {
    $scope.orders = Order.query();
    $scope.maxItemsPerPage = 10;
    $scope.currentPage = 0;
    $scope.numberOfPages = function() {
      return Math.ceil($scope.orders.length/$scope.maxItemsPerPage);
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

