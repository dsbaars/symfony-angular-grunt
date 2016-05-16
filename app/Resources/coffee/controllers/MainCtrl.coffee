(->
    class MainCtrl
        constructor: (@$scope, $interval) ->
            @$scope.helloSquare = "Hello world from $scope.helloSquare (square brackets)"
            @$scope.helloBind = "Hello world from $scope.helloBind (ng-bind)"
            return

    angular
        .module("dsbaars")
        .controller('MainCtrl', MainCtrl)
)()
