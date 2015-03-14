angular.module '%module%.common'
.run ($rootScope, $state, storage, LoginRedirection) ->
  $rootScope.$on '$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
    hasToken = !!storage.accessToken

    if toState.data?.access == 'anonymous' && hasToken
      event.preventDefault()
      $state.transitionTo 'homepage', locale: $state.params.locale

    if toState.data?.access == 'private' && !hasToken
      event.preventDefault()
      LoginRedirection.save toState, toParams
      $state.transitionTo 'login', locale: $state.params.locale
