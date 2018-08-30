
Gun = require 'gun'
Comedy = require 'comedy'
Awilix = require 'awilix'
setup = require './setup'

start = ->
  console.log(setup.container)
  myactor = setup.container.resolve('MyActor')
  myactor.sayHello('philip')

  #gun.get('mark').on (data, key) ->
  #  console.log 'update:', data

  #rootActor = await actorSystem.rootActor()
  #myActor = await rootActor.createChild MyActor
  #myActor.send 'sayHello', 'world'

start()
