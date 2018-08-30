
Comedy = require 'comedy'
Awilix = require 'awilix'
Setup = require './Setup'

start = ->
  console.log(Setup.container)
  setupGraph = Setup.container.resolve 'SetupGraph'
  setupGraph.setup()


  #myActor = Setup.container.resolve('MyActor')
  #myActor.sayHello('phil')


#myactor.sayHello('philip')

#gun.get('mark').on (data, key) ->
#  console.log 'update:', data

#rootActor = await actorSystem.rootActor()
#myActor = await rootActor.createChild MyActor
#myActor.send 'sayHello', 'world'

start()

