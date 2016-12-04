var gulp = require('gulp')
var browserifyTask = require('./gulp/tasks/javascript_tasks.js')

gulp.task('browserify', browserifyTask.work)

// watch tasks

gulp.task('default', function(){
  gulp.watch('./src/js/*.js', ['browserify'])
});
