// Use strict mode for this js, throwing exceptions for more issues, and disabling bad features
'use strict';

/* App Module */
var App = angular.module('northwindApp', ['ngResource']);


// App filters can be used in your views. This one will determine where to begin
// loading grid data for pagination purposes. Angular already provides a limitTo
// filter, which we will use for the end of the grid data per page, but we need
// to roll our own for the beginning of the data.
//
// Usage:
//   <tr ng-repeat="order in orders | startFrom: currentPage*maxItemsPerPage | limitTo: maxItemsPerPage">
//     <td>{{order.id}}</td>
//     <td>{{order.customer_id}}</td>
//   </tr>
App.filter('startFrom', function() {
    return function(input, start) {
        start = +start; //parse to int
        return input.slice(start);
    }
});

