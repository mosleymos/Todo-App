var gulp = require('gulp');
var browserifyTask = require('./gulp/tasks/javascript_tasks.js');
var linting = require('./gulp/tasks/linting.js');

gulp.task('browserify', browserifyTask.work);
gulp.task('linting', linting.lint);

// watch tasks

gulp.task('default', function(){
  gulp.watch('./src/js/*.js', ['linting','browserify']);
});
