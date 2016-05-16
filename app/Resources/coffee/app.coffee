(->
    config = (
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

    angular
        .module("dsbaars", [
            'ui.bootstrap'
            'ui.router'
        ])
        .config(config)
)()
