module.exports =
    coffee:
        options:
            livereload: true
        files: [
            "app/Resources/coffee/**/*.coffee"
            "src/**/*.coffee"
        ]
        tasks: [
            "coffee"
        ]
    less:
        options:
            livereload: true
        files: [
            "app/Resources/less/**/*.less"
            "src/**/*.less"
        ]
        tasks: [
            "less"
        ]
    gruntConfig:
        options:
            reload: true
        files: [
              "grunt/**/*.coffee"
          ]
    bower:
        options:
            livereload: true
        files: [
            "bower.json"
        ]
        tasks: [
            "injector"
        ]
    layout:
        options:
            livereload: true
        files: [
            "app/Resources/views/**/*.html.twig.clean"
        ]
        tasks: [
            "copy"
            "injector"
        ]
