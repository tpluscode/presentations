# Generated on 2014-09-05 using generator-reveal 0.3.9
module.exports = (grunt) ->

    grunt.initConfig

        'bower-install-simple':
            options:
                cwd: '.'

        coffeelint:

            options:
                indentation:
                    value: 4
                max_line_length:
                    level: 'ignore'

            all: ['Gruntfile.coffee']

        jshint:

            options:
                jshintrc: '.jshintrc'

            all: ['git-versioning/js/*.js']

        copy:

            dist:
                files: [{
                    expand: true
                    src: [
                        'git-versioning/slides/**'
                        'git-versioning/bower_components/**'
                        'git-versioning/js/**',
                        'git-versioning/img/**'
                        'git-versioning/css/**'
                    ]
                    dest: 'dist'
                },{
                    expand: true
                    src: ['git-versioning/index.html']
                    dest: 'dist'
                    filter: 'isFile'
                }]

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'buildIndex',
        'Build index.html from templates/_index.html and slides/list.json.',
        ->
            indexTemplate = grunt.file.read 'git-versioning/templates/_index.html'
            sectionTemplate = grunt.file.read 'git-versioning/templates/_section.html'
            slides = grunt.file.readJSON 'git-versioning/slides/list.json'

            html = grunt.template.process indexTemplate, data:
                slides:
                    slides
                section: (slide) ->
                    grunt.template.process sectionTemplate, data:
                        slide:
                            slide
            grunt.file.write 'git-versioning/index.html', html

    grunt.registerTask 'test',
        '*Lint* javascript and coffee files.', [
            'coffeelint'
            'jshint'
        ]

    grunt.registerTask 'dist',
        'Save presentation files to *dist* directory.', [
            'test'
            'buildIndex'
            'copy'
        ]

    # Define default task.
    grunt.registerTask 'default', [
        'dist'
    ]
