app = angular.module("dsbaars", [
    'ui.bootstrap'
    'ui.router'
    ], ($interpolateProvider) ->
    $interpolateProvider.startSymbol('[[')
    $interpolateProvider.endSymbol(']]')
    return
)
