# Not the best grunt plugin, but it does the job while the project is small
# I might write one myself someday
module.exports =
    twiglint1:
        cmd: 'lint:twig @DsbaarsDemoBundle'
    twiglint2:
        cmd: 'lint:twig @DsbaarsNodejsToolBundle'
