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

            all: ['polymer-flux/js/*.js']

        copy:

            dist:
                files: [{
                    expand: true
                    src: [
                        'polymer-flux/slides/**'
                        'polymer-flux/bower_components/**'
                        'polymer-flux/js/**'
                        'polymer-flux/img/**'
                        'polymer-flux/images/**'
                        'polymer-flux/video/**'
                        'polymer-flux/font/**'
                        'polymer-flux/css/**',
                        'polymer-flux/examples/**'
                    ]
                    dest: 'dist/'
                },{
                    expand: true
                    src: ['polymer-flux/index.html']
                    dest: 'dist/'
                    filter: 'isFile'
                }]

    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'buildIndex',
        'Build index.html from templates/_index.html and slides/list.json.',
        ->
            indexTemplate = grunt.file.read 'polymer-flux/templates/_index.html'
            sectionTemplate = grunt.file.read 'polymer-flux/templates/_section.html'
            slides = grunt.file.readJSON 'polymer-flux/slides/list.json'

            html = grunt.template.process indexTemplate, data:
                slides:
                    slides
                section: (slide) ->
                    grunt.template.process sectionTemplate, data:
                        slide:
                            slide
            grunt.file.write 'polymer-flux/index.html', html

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
