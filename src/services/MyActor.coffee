
class MyActor

  constructor: (opts) ->
    @actorSystem = opts.actorSystem
    @rootActor = @actorSystem.rootActor()
    #@rootActor.then (rootActor) ->
    #  console.log rootActor

  sayHello: (to) ->
    console.log "Hello, #{to}!"

module.exports = MyActor
