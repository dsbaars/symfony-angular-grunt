module.exports =
      options:
          ignorePath: [ 'web/' ]
          min: true
      app:
          files:
              'app/Resources/views/base.html.twig': [
                'bower.json'
                'web/css/*.css'
                'web/ng/**/*.js'
              ]
