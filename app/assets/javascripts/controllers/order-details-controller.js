'use strict';

App.controller('OrderDetailsController', ['$scope', 'OrderDetail',
  function ($scope, OrderDetail) {
    $scope.orderDetails = OrderDetail.query();
    $scope.maxItemsPerPage = 10;
    $scope.currentPage = 0;
    $scope.numberOfPages = function() {
      return Math.ceil($scope.orderDetails.length/$scope.maxItemsPerPage);
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

