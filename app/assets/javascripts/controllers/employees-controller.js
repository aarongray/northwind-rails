'use strict';

App.controller('EmployeesController', ['$scope', 'Employee',
  function ($scope, Employee) {
    $scope.employees = Employee.query();
  }]);

