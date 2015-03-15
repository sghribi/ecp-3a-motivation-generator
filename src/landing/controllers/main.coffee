angular.module '%module%.landing'
.controller 'MainCtrl', ($scope) ->

  # Init
  $scope.letters = [
    {
      id: 1
      name: 'Modèle 1'
    },
    {
      id: 2
      name: 'Modèle 2'
    },
  ]
  $scope.date = new Date()
  $scope.originCursuses = [
    'Césure',
    'S8 Académique',
    'S8 Labo',
    'S8 Entreprise'
  ]
  $scope.options = [
    'Aménagement et Construction durables'
    'Énergie'
    'Génie Industriel'
    'Mathématiques appliquées'
    'Mécanique, Aéronautique, Espace'
    'Physique et Applications'
    'Ingénierie des Systèmes Informatiques et Avancés'
  ]
  $scope.filieres = [
    'Centrale Entrepreneurs'
    'Conception & Industrialisation de systèmes innovants'
    'Management Opérationnel'
    'Management de Projets à l\'international'
    'Métiers de la Recherche'
    'Stratégie & Finance'
  ]


  # Key
  $scope.$watch 'key', ->
    # @TODO : inject service to check key
    $scope.unlocked = true

  # Utils for form
  $scope.openDate = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()

    $scope.opened = true
