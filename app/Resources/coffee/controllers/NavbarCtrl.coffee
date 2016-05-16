(->
    class NavbarCtrl
        constructor: (@$scope, $location) ->
            @$scope.menu = [{
                'title': 'Home',
                'link': "/"
            }, {
                'title': 'Demo',
                'link': "/demo"
            }]

            @$scope.isActive = (route) ->
                route is $location.path()

    angular
        .module("dsbaars")
        .controller('NavbarCtrl', NavbarCtrl)
)()
