angular.module '%module%.landing'
.factory 'Letters', ($stateParams, $resource, storage, BASE_API_URL) ->
  $resource BASE_API_URL + 'letters/:id',
    access_token: storage.accessToken
