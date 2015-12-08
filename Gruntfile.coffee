module.exports = (grunt) ->
    grunt.initConfig
        run_grunt:
            options:
                minimumFiles: 1

            dist:
                options:
                    task: ['dist']
                    base: '..'

                src: [
                    'git-versioning/Gruntfile.coffee'
                    'gitlink/Gruntfile.coffee'
                ]

    grunt.loadNpmTasks('grunt-run-grunt')
