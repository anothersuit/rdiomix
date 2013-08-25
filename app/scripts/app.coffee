
#----- Global App Module
rdiomix = angular.module('rdiomix', []).
	
	config(($routeProvider, $locationProvider) ->

		# Routes
		$routeProvider.
			when('/', {templateUrl: 'views/main.html'}).
			when('/test', {templateUrl: 'views/test.html', controller: 'TestController'}).
			otherwise({redirectTo: '/'})

		# Toggle hash when needed
		$locationProvider.html5Mode(true).hashPrefix('')
	)