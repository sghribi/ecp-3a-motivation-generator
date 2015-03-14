angular.module '%module%.common'
.factory 'UserFormHandler', (
  $http
  $translate
  $q
  storage
  BASE_API_URL
) ->

  # Get user data
  getUserData = ->
    deferred = $q.defer()
    userData = {}

    $http
      method:   'GET'
      url:       BASE_API_URL+'api/me'
      params:
        access_token: storage.accessToken
    .success (data, status, headers, config) ->
      userData.userId = data.id
      userData.username = data.username
      userData.email = data.email

      deferred.resolve {userData: userData}

    deferred.promise

  getUserData: getUserData
