module.exports =
      options:
          ignorePath: [ 'web/' ]
      app:
          files:
              'app/Resources/views/client.html.twig': [
                'bower.json'
                'web/css/client.css'
                'web/ng/**/*.js'
              ]
