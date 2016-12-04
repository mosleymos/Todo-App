var gulp = require('gulp')
var notify  = require('gulp-notify');
var browserify  = require('browserify');             // Browserify yeah to modules in javascript
var source      = require('vinyl-source-stream');    // One day I'll master Stream but know not
var config  = require('../../config.js')

var jsFiles = 'public/js/*.js'


// Browserify file to js
// good snippet I think. Here the source
// https://www.viget.com/articles/gulp-browserify-starter-faq
// TODO: Maybe add a hint for signaling error
var browserifyTask = {
  work: function(){
          return browserify(config.jsBeginFile).bundle().on('error', function(err){ console.log("ERREUR au niveau de la compilation JS");}).pipe(source('app.js')).pipe(gulp.dest(config.jsEndingFolder)).pipe(notify({ message: 'browerify task complete' })); }
}
module.exports = browserifyTask
