require! {
  ribcage
  colors
  underscore: _
  backbone4000: Backbone
}

env = {}
settings =
  module:
    express4:
      port: 4000

env.settings = settings

ribcage.init env, (err,modules) ->
  env.modules = modules
  
  console.log 'ribcage init', err

