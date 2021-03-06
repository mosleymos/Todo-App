var gulp = require('gulp');
var jshint = require('gulp-jshint');
var jscs = require('gulp-jscs');


var jsFiles = ['*.js', 'src/**/*.js'];

var linting = {
  lint: function(){
          return gulp.src(jsFiles)
            .pipe(jshint())
            .pipe(jshint.reporter('jshint-stylish', { verbose: true }))
            .pipe(jscs());
    }
}


module.exports = linting;
