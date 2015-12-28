# Generated on 2014-09-05 using generator-reveal 0.3.9
module.exports = (grunt) ->

    grunt.file.setBase '..'

    grunt.initConfig

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

            all: ['hateoas/js/*.js']

        copy:

            dist:
                files: [{
                    expand: true
                    src: [
                        'hateoas/slides/**'
                        'hateoas/bower_components/**'
                        'hateoas/js/**',
                        'hateoas/img/**'
                        'hateoas/css/**'
                    ]
                    dest: 'dist'
                },{
                    expand: true
                    src: ['hateoas/index.html']
                    dest: 'dist'
                    filter: 'isFile'
                }]

        watch:
            reveal:
                files: [
                    'hateoas/slides/**/*.*',
                    'hateoas/templates/*.*'
                ]
                tasks: [ 'run_grunt:build' ]

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'buildIndex',
        'Build index.html from templates/_index.html and slides/list.json.',
        ->
            indexTemplate = grunt.file.read 'hateoas/templates/_index.html'
            sectionTemplate = grunt.file.read 'hateoas/templates/_section.html'
            slides = grunt.file.readJSON 'hateoas/slides/list.json'

            html = grunt.template.process indexTemplate, data:
                slides:
                    slides
                section: (slide) ->
                    grunt.template.process sectionTemplate, data:
                        slide:
                            slide
            grunt.file.write 'hateoas/index.html', html

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
