module.exports = (grunt) ->
    grunt.initConfig
        coffee:
            compile:
                options:
                    bare: true
                files: [
                    src: ['./app/**/*.coffee']
                    dest: './public/app.js'
                ]
        sass:
            compile:
                options:
                    style: 'expanded'
                    noCache: true
                    banner: '/*-- rdiomix 0.1.0 made by: Matt Ricks - anothersuit.com --*/'
                files: {
                    './public/app.css' : './public/styles/app.scss'
                }

    grunt.loadNpmTasks 'grunt-contrib-coffee'
    grunt.loadNpmTasks 'grunt-contrib-sass'