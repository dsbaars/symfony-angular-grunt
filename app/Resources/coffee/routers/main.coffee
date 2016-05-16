(->
    config = ($stateProvider) ->
        $stateProvider.state('index', {
            url: '/'
            templateUrl: Routing.generate('dsbaars_demo_default_hello')
            controller: 'MainCtrl'
        }).state('demo', {
            url: '/demo'
            templateUrl: Routing.generate('dsbaars_demo_default_demo')
            controller: 'DemoCtrl'
            }
        )

    angular
        .module("dsbaars")
        .config(config)
)()
