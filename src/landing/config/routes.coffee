angular.module '%module%.landing'
.config ($stateProvider) ->
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
    controller: 'MainCtrl'
    data:
      access: 'private'
  .state 'login',
    url: '/login'
    controller: 'LoginCtrl'
    templateUrl: 'landing/views/login.html'
    data:
      access: 'anonymous'
