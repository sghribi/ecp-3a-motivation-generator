angular.module '%module%.landing'
.directive 'letter', ($compile, $templateCache) ->
  restrict: 'E'
  scope:
    firstName: '='
  templateUrl: 'landing/views/models.html'
  link: (scope, element) ->
    # @TODO: handle multiple template
    templateId = 'model1'

    template = $templateCache.get templateId
    element.html template
    $compile(element.contents())(scope)
