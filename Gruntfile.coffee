'use strict'

options =
    config:
        src: 'grunt/*.coffee'

module.exports = (grunt) ->
    config = require('load-grunt-configs')(grunt, options)

    grunt.initConfig config
    require('load-grunt-tasks')(grunt)

    grunt.registerTask "default", "Build everything", [
        "copy"
        "coffee"
        "less"
        "injector"
        "watch"
    ]

    grunt.registerTask "verification", "Linting and stuff", [
        "coffeelint"
        "phpcs"
        "sf2-console:twiglint1"
        "sf2-console:twiglint2"
    ]
