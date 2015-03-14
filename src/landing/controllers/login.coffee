angular.module '%module%.landing'
.controller 'LoginCtrl', ($scope, AccountManager) ->
  $scope.login = ->
    $scope.disabled = true
    AccountManager
    .login $scope.formData.username, $scope.formData.password
    .catch ->
      $scope.error = 'Bad credentials'
    .finally ->
      $scope.disabled = false
