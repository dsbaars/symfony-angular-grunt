module.exports =
    options:
        join: true
        bare: true
    default:
        expand: true
        flatten: true
        cwd: "src/"
        src: ["**/*.coffee"]
        dest: "web/ng"
        ext: ".js"
