'use strict';

App.controller('CustomersController', ['$scope',
  function ($scope) {
    $scope.hash = {message: "Message from the controller"};
    $scope.string = "Angular rocks!"
  }]);

