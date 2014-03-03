'use strict';

App.controller('ShippersController', ['$scope', 'Shipper',
  function ($scope, Shipper) {
    $scope.shippers = Shipper.query();
  }
]);

