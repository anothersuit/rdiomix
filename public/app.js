var rdiomix;

rdiomix = angular.module('rdiomix', []).config(function($routeProvider, $locationProvider) {
  $routeProvider.when('/', {
    templateUrl: 'views/main.html'
  }).when('/test', {
    templateUrl: 'views/test.html',
    controller: 'TestController'
  }).otherwise({
    redirectTo: '/'
  });
  return $locationProvider.html5Mode(true).hashPrefix('');
});

var TestController;

TestController = function($scope, $routeParams) {
  return console.log($scope);
};
