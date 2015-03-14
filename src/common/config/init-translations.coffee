angular.module '%module%.common'
.config ($translateProvider) ->
  $translateProvider.fallbackLanguage 'fr'
  $translateProvider.determinePreferredLanguage()
