angular.module '%module%.landing'
.directive 'dynamicModel', ($compile) ->
  link: (scope, element, attrs) ->
    scope.$watch attrs.dynamicModel, (dynamicModel) ->
      if attrs.ngModel == dynamicModel or !dynamicModel
        return

      element.attr 'ng-model', dynamicModel

      if dynamicModel == ''
        element.removeAttr 'ng-model'

      # Unbind all previous event handlers, this is necessary to remove previously linked models.
      element.unbind()
      $compile(element) scope
