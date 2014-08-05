# Not the best grunt plugin, but it does the job while the project is small
# I might write one myself someday
module.exports =
    twiglint1:
        cmd: 'twig:lint @DsbaarsDemoBundle'
    twiglint2:
        cmd: 'twig:lint @DsbaarsNodejsToolBundle'
