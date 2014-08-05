module.exports = development:
    options:
        paths: ["web/bower_components", "app/Resources/less"]
    files:
        "web/css/app.css": [
            "src/**/*.less"
            "app/Resources/less/**/*.less"
        ]
