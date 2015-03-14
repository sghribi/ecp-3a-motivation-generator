angular.module '%module%.common'
.factory 'AccountManager', (
  $http
  LoginRedirection
  storage
  BASE_API_URL
  OAUTH_CLIENT_ID
  OAUTH_CLIENT_SECRET
  UserFormHandler
) ->
  login = (username, password) ->
    $http
      method: 'GET'
      url: BASE_API_URL + 'oauth/v2/token'
      params:
        client_id: OAUTH_CLIENT_ID
        client_secret: OAUTH_CLIENT_SECRET
        grant_type: "password"
        username: username
        password: password
    .then (res) ->
      storage.username = username
      storage.accessToken = res.data.access_token
      UserFormHandler.getUserData()
      .then (data) ->
        storage.userId = data.userData.userId
        LoginRedirection.restore()
        res

  login: login
  logout: ->
    delete storage.accessToken
    delete storage.username
    delete storage.userId
