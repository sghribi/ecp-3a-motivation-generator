angular.module '%module%.landing'
.directive 'letter', ($compile) ->
  link: (scope, element, attrs) ->
    scope.$watch ((scope) ->
      scope.$eval attrs.compile
    ), (value) ->
      element.html value
      $compile(element.contents()) scope
