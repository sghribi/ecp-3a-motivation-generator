angular.module '%module%.common'
.factory 'LoginRedirection', ($state) ->
  state =
    name: null
    params: null

  save: (toState, toParams) ->
    state.name = toState.name
    state.params = toParams
    $state.go 'login', locale: toParams.locale

  restore: ->
    if state.name
      state.params.locale = $state.params.locale
      $state.go state.name, state.params
      state.name = null
      state.params = null
    else
      $state.go 'landing', locale: $state.params.locale
