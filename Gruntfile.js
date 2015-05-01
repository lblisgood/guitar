module.exports = function(grunt) {
    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        uglify: {
            options: {
                banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
            },
            //压缩js
            js: {
                option: {
                    style: 'compressed'
                },
                files: [{
                    expand: true,
                    cwd: 'public/scripts/',
                    src: '*.js',
                    dest: 'public/js/',
                    ext: '.min.js'
                }]
            }
        },
        //把sass编译成css
        sass: {
            option:{
                'style': 'compressed'
            },
            css: {
                files: [{
                    expand: true,
                    cwd: 'public/sass/',
                    src: ['*.scss'],
                    dest: 'public/css/',
                    ext: '.css'
                }]
            }
        },
        //压缩css
        cssmin: {
            options:{
                keepSpecialComments: 0
            },
            compress: {
                files: [{
                    expand:true,
                    cwd:'public/css/',
                    src: ['*.css'],
                    dest: 'public/css/min/',
                    ext:'.min.css'
                }]
            }
        },
        //自动补全浏览器前缀
        autoprefixer: {
            dist: {
                files: [{
                    expand: true,
                    cwd: 'public/css/',
                    src: ['*.css'],
                    dest: 'public/css/'
                }]
            }
        },
        //监控文件变化执行相对应任务
        watch: {
            css: {
                files: 'public/sass/*.scss',
                tasks: ['sass','autoprefixer','cssmin']
            },
            js: {
                files: 'public/scripts/*.js',
                tasks: ['uglify']
            }
        }
    });

    // 加载包含 "uglify" 任务的插件。
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.loadNpmTasks('grunt-contrib-cssmin');

    // 默认被执行的任务列表。
    grunt.registerTask('default', ['watch']);

};