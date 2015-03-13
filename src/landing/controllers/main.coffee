angular.module '%module%.landing'
.controller 'MainCtrl', ($scope) ->

  # Init
  $scope.date = new Date()

  # Utils for form
  $scope.openDate = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()

    $scope.opened = true
