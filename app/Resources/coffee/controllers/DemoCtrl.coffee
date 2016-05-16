(->
    class DemoCtrl
        constructor: (@$scope, $interval) ->
            @$scope.hello = "Hello world from demo controller"

    angular
        .module("dsbaars")
        .controller('DemoCtrl', DemoCtrl)
)()
