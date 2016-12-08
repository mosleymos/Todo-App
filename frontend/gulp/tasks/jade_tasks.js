var gulp = require('gulp');
var jade = require('gulp-jade');

var jadeProcess = {
  compile: function(){
    var YOUR_LOCALS = {};

      gulp.src('./src/templates/*.jade')
        .pipe(jade({
            locals: YOUR_LOCALS

            }))
     .pipe(gulp.dest('./build/'))

  }
}

module.exports = jadeProcess
