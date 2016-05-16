module.exports =
    options:
        join: false
        bare: true
    default:
        expand: true
        flatten: false
        cwd: "app/Resources/coffee"
        src: [
            "**/*.coffee"
            ]
        dest: "web/ng"
        ext: ".js"
    bundles:
        expand: true
        flatten: false
        src: [
            "src/**/*.coffee"
            ]
        dest: "web/ng"
        ext: ".js"
