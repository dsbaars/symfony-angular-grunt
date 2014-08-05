module.exports = (grunt, options) ->
    clean_twig:
        expand: true
        cwd: "app/Resources/views"
        src: ["**/*.html.twig.clean"]
        dest: "app/Resources/views"
        ext: ".html.twig"
