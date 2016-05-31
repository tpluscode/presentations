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

            all: ['ws-rest-2016/js/*.js']

        copy:

            dist:
                files: [{
                    expand: true
                    src: [
                        'ws-rest-2016/slides/**'
                        'ws-rest-2016/bower_components/**'
                        'ws-rest-2016/js/**'
                        'ws-rest-2016/img/**'
                        'ws-rest-2016/images/**'
                        'ws-rest-2016/video/**'
                        'ws-rest-2016/font/**'
                        'ws-rest-2016/css/**',
                        'ws-rest-2016/examples/**'
                    ]
                    dest: 'dist/'
                },{
                    expand: true
                    src: ['ws-rest-2016/index.html']
                    dest: 'dist/'
                    filter: 'isFile'
                }]

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'buildIndex',
        'Build index.html from templates/_index.html and slides/list.json.',
        ->
            indexTemplate = grunt.file.read 'ws-rest-2016/templates/_index.html'
            sectionTemplate = grunt.file.read 'ws-rest-2016/templates/_section.html'
            slides = grunt.file.readJSON 'ws-rest-2016/slides/list.json'

            html = grunt.template.process indexTemplate, data:
                slides:
                    slides
                section: (slide) ->
                    grunt.template.process sectionTemplate, data:
                        slide:
                            slide
            grunt.file.write 'ws-rest-2016/index.html', html

    grunt.registerTask 'test',
        '*Lint* javascript and coffee files.', [
            'coffeelint'
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
