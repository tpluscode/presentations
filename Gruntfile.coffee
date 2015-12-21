module.exports = (grunt) ->
    grunt.initConfig
        run_grunt:
            options:
                minimumFiles: 1

            dist:
                options:
                    base: '..'

                src: [
                    'git-versioning/Gruntfile.coffee'
                    'gitlink/Gruntfile.coffee'
                    'hydra/Gruntfile.coffee'
                    'hateoas/Gruntfile.coffee'
                    'paket/Gruntfile.coffee'
                    'polymer-flux/Gruntfile.coffee'
                    'web-components/Gruntfile.coffee'
                ]

        shell:
            pushGithubPages:
                command: [
                    'chmod +x _scripts/pushGhPages.sh',
                    'sh _scripts/pushGhPages.sh'
                ].join('&&')
            prepareGithubPages:
                command: [
                    'chmod +x _scripts/prepareGhPages.sh',
                    'sh _scripts/prepareGhPages.sh'
                ].join('&&')
            bowerInstall:
                command:
                    'sh _scripts/bowerInstall.sh'

    grunt.loadNpmTasks('grunt-run-grunt')
    grunt.loadNpmTasks('grunt-shell')

    grunt.registerTask 'bower-install', [
        'shell:bowerInstall'
    ]

    grunt.registerTask 'deploy', [
        'shell:prepareGithubPages'
        'default'
        'shell:pushGithubPages'
    ]

    grunt.registerTask 'default', [
        'run_grunt'
    ]
