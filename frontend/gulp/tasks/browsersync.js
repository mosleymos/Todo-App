var gulp        = require('gulp');
var browserSync = require('browser-sync').create();

var browsersync = {
  launch: function(){
    return browserSync.init({
      server: {
        baseDir: "./build/",
        port: '9393'
      }
    });
  }
}

module.exports = browsersync
