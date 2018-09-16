
Comedy = require 'comedy'
Awilix = require 'awilix'
Setup = require './Setup'

start = ->
  myActor = Setup.container.resolve 'MyActor'

  setupGraph1 = Setup.container.resolve 'SetupGraph'
  setupGraph1.setup()

  #setupGraph2 = Setup.container.resolve 'SetupGraph'
  #setupGraph2.setup()

start()

