'use strict';

App.controller('OrdersController', ['$scope', 'Order',
  function ($scope, Order) {
    $scope.orders = Order.query();
  }
]);

