exports.config =
  minMimosaVersion: "2.0.0"

  modules: [
    'jshint'
    'csslint'
    'server'
    'require'
    'minify-js'
    'minify-css'
    'live-reload'
    'bower'
    'require-commonjs'
    'copy'
    'stylus'
    'server-template-compile'
    'coffeescript']

  requireCommonjs:
    exclude: [/[/\\]vendor[/\\]/, /[/\\]js[/\\]bootstrap\./]

  watch:
    sourceDir: "src"
    compiledDir: "build"
    javascriptDir: "js"
    stylesheets: "css"

  vendor:
    javascripts: "js/vendor"
    stylesheets: "css/vendor"

  server:
    defaultServer:
      enabled: true