app = angular.module("dsbaars", [
        'ui.bootstrap'
        'ui.router'
    ], (
    $interpolateProvider,
    $stateProvider,
    $urlRouterProvider,
    $locationProvider,
    $httpProvider
    ) ->
    $interpolateProvider.startSymbol('[[')
    $interpolateProvider.endSymbol(']]')

    $urlRouterProvider
        .otherwise('/')

    $locationProvider.html5Mode(true)

    return
)

app.controller("MainCtrl", MainCtrl)
app.controller("DemoCtrl", DemoCtrl)
