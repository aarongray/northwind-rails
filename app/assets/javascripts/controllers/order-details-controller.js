'use strict';

App.controller('OrderDetailsController', ['$scope', 'OrderDetail',
  function ($scope, OrderDetail) {
    $scope.orderDetails = OrderDetail.query();
  }
]);

