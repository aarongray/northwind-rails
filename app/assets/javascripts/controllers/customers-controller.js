'use strict';

App.controller('CustomersController', ['$scope', 'Customer',
  function ($scope, Customer) {
    $scope.customers = Customer.query();
  }
]);

