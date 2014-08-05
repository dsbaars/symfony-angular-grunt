module.exports =
    application:
        dir: [
            'app/**/*.php',
            'src/**/*.php',
            # These are not part of the symfony/symfony package
            # so it does not matter they do not conform
            '!app/check.php',
            '!app/AppCache.php',
            '!app/AppKernel.php',
            '!app/SymfonyRequirements.php',
            '!app/cache/**'
            ]
    options:
        bin: 'bin/phpcs'
        standard: 'PSR2'
