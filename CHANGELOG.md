1.0.1
-----
- Updated dependencies, most important ones: Symfony 2.5.9, Bootstrap 3.3.1, AngularJS 1.2.28
- Remove duplicate dependencies in [package.json](package.json)
- Changed from bootstrap-less to official bootstrap, since bootstrap-less looks abandonned.
- Split up [YAML configs](app/config/bundles)
- Added some bundles to demonstrate REST-functionality. Without something like this, integration between Symfony and Angular does not really make sense.
    - Added FOSRestBundle
    - Added NelmioApiDocBundle (with swagger support)
    - Added JMSSerializer (for deserialization groups, normally you don't want to expose all properties of your entities through your REST API)
    - Added JMSDiExtraBundle (not really needed for REST but makes things a whole lot easier)
    - Added NelmioCorsBundle (configure CORS-headers, pretty sure you want that)
    - Added angular-resource
- Added  [@DsbaarsDemoBundle/ApiController/DefaultController.php](src/Dsbaars/Bundle/DemoBundle/ApiController/DefaultController.php) do illustrate how you can implement a REST-controller

1.0.0
-----
Initial release
