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
                    'paket/Gruntfile.coffee'
                    'polymer-flux/Gruntfile.coffee'
                    'web-components/Gruntfile.coffee'
                ]

    grunt.loadNpmTasks('grunt-run-grunt')

    grunt.registerTask 'default', [
        'run_grunt'
    ]
