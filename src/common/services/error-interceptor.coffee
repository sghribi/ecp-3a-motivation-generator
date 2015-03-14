angular.module '%module%.common'
.factory 'errorInterceptor', ($q, storage) ->
  responseError: (res) ->
    if res.status in [401, 403]
      delete storage.accessToken
      delete storage.username
      window.location.href = '/'
    $q.reject res

.config ($httpProvider) ->
  $httpProvider.interceptors.push 'errorInterceptor'
