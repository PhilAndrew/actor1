
Comedy = require 'comedy'
Awilix = require 'awilix'
Setup = require './Setup'

start = ->
  console.log(Setup.container)
  setupGraph = Setup.container.resolve 'SetupGraph'
  setupGraph.setup()

start()

