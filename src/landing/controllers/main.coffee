angular.module '%module%.landing'
.controller 'MainCtrl', ($scope, Letters) ->

  # Init
  Letters.query (letters) ->
    $scope.letters = letters

  $scope.date = moment().format 'LL'
