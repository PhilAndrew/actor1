
Comedy = require 'comedy'
Awilix = require 'awilix'
Setup = require './Setup'

start = ->
  console.log(Setup.container)
  setupGraph1 = Setup.container.resolve 'SetupGraph'
  setupGraph1.setup()
  setupGraph2 = Setup.container.resolve 'SetupGraph'
  setupGraph2.setup()

start()

