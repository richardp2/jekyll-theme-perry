// Avoid `console` errors in browsers that lack a console. (HTML5 Boilerplate)
(function() {
    var method;
    var noop = function () {};
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});

    while (length--) {
        method = methods[length];

        // Only stub undefined methods.
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());

$.noConflict();
jQuery(document).ready(function($) {
  
  $('.flickr').each(function(i){
    $(this).find('a.image').attr('rel','gallery'+i);
    $('.flickr a.image').colorbox({
      maxWidth:'95%', 
      maxHeight:'95%',
      scrolling: false
    });
  });

});


