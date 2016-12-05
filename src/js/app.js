var $ = require('jquery')
var _ = require('underscore')

var log = function(something){ return console.log(something) }
$(function(){
  var ActionName = $('#js_mgnt').data('controller-action')
  var ActionController = $('#js_mgnt').data('controller-name')
  log(ActionName)
  log(ActionController)
})
