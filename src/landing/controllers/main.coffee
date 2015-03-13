angular.module '%module%.landing'
.controller 'MainCtrl', ($scope) ->

  # Init
  $scope.date = new Date()
  $scope.originCursuses = {
    cesure:     'Césure'
    s8_academy: 'S8 Académique'
    s8_labo:    'S8 Labo'
    s8_company: 'S8 Entreprise'
  }

  # Key
  $scope.$watch 'key', (key) ->
    # @TODO : inject service to check key
    $scope.unlocked = true

  # Utils for form
  $scope.openDate = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()

    $scope.opened = true
