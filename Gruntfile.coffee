'use strict'

options =
    config:
        src: 'grunt/*.coffee'

module.exports = (grunt) ->
    config = require('load-grunt-configs')(grunt, options)

    grunt.initConfig config
    require('load-grunt-tasks')(grunt)

    grunt.registerTask "default", "Build everything", [
        "clean"
        "copy"
        "coffee"
        "less"
        "lineending"
        "injector"
        "watch"
    ]

    grunt.registerTask "verification", "Linting and stuff", [
        "coffeelint"
        "sf2-console:twiglint1"
        "sf2-console:twiglint2"
    ]
