'use strict';

App.controller('SuppliersController', ['$scope', 'Supplier',
  function ($scope, Supplier) {
    $scope.suppliers = Supplier.query();
  }
]);

