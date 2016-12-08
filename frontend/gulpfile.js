var gulp = require('gulp');
var browserifyTask = require('./gulp/tasks/javascript_tasks.js');
var linting = require('./gulp/tasks/linting.js');
var cssProcess = require('./gulp/tasks/css_tasks.js');

gulp.task('browserify', browserifyTask.work);
gulp.task('linting', linting.lint);
gulp.task('css', cssProcess.work );

// watch tasks

gulp.task('default', function(){
  gulp.watch('./src/js/*.js', ['linting','browserify']);
  gulp.watch('./src/css/*.scss', ['css']);
});
