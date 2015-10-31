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
      views: __dirname + '/ejs'
      static: __dirname + '/static'
env.settings = settings

ribcage.init env, (err,modules) ->
  console.log 'initialized'
  env.modules = modules
  env.app.get '/', (req,res) ->
    res.render 'index', { title: 'skeleton'  }

  

