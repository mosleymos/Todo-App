var gulp = require('gulp');
var browserifyTask = require('./gulp/tasks/javascript_tasks.js');
var linting = require('./gulp/tasks/linting.js');
var cssProcess = require('./gulp/tasks/css_tasks.js');
var browsersync = require('./gulp/tasks/browsersync.js');
var jade = require('./gulp/tasks/jade_tasks.js');

gulp.task('browserify', browserifyTask.work);
gulp.task('linting', linting.lint);
gulp.task('css', cssProcess.work );
gulp.task('templates', jade.compile);

// Launch static server
gulp.task('server', browsersync.launch);

// watch tasks

gulp.task('default', function(){
  gulp.watch('./src/js/*.js', ['linting','browserify']);
  gulp.watch('./src/css/*.scss', ['css']);
  gulp.watch('./src/templates/*.jade', ['templates']);
});

