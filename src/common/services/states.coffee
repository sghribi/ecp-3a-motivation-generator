angular.module '%module%.common'
.run ($rootScope, $state) ->
  $rootScope.$state = $state
