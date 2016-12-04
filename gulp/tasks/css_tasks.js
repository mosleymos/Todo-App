var gulp = require('gulp')
var sass = require('gulp-ruby-sass');       var cleanCSS    = require('gulp-clean-css');
var autoprefixer = require('gulp-autoprefixer');
var cssnano = require('gulp-cssnano');
var notify  = require('gulp-notify');

var rename = require('gulp-rename');
var config = require('../../config.js');

var cssProcess = {

  work: function() {
    return sass( config.scssFile, { style: 'expanded' })
      .pipe(autoprefixer('last 2 version'))
      .pipe(gulp.dest(config.cssBeginFolder))
      .pipe(rename({ suffix: '.min' }))
      .pipe(cssnano())
      .pipe(gulp.dest(config.cssEndingFolder))
      .pipe(notify({ message: 'Styles task complete' }));

  }
}

module.exports = cssProcess
