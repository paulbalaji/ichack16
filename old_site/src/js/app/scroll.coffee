$ = require 'jquery'
require 'vendor/jquery.fullPage/jquery.fullPage'

$ ->
  # Make menu smooth scroll to sections
  $.fn.fullpage
    menu: '.site-menu'
    anchors: ['ichack', 'recap', 'prizes', 'sponsors', 'contact']
    autoScrolling: false
    easing: 'swing'
    resize: false
    paddingTop: 46
    css3: true
    verticalCentered: no
