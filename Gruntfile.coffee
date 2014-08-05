'use strict'

options =
    config:
        src: "grunt/*.coffee"

module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON("package.json")

    grunt.config.merge require('load-grunt-configs')(grunt, options)
    require('load-grunt-tasks')(grunt);

    grunt.registerTask "default", "Build everything", [
        "less",
        "injector",
        "watch"
    ]
