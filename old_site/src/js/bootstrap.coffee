# Require.js config
require
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    jquery: 'vendor/jquery/jquery'
   shim:
    'vendor/jquery.fullPage/jquery.fullPage': ['jquery']
  , [
    'jquery'
    'vendor/jquery.fullPage/jquery.fullPage'
    'vendor/twitterfetcher/twitterfetcher'
    'app/scroll'
    'app/signup'
    'app/twitter'
  ], ($) ->
