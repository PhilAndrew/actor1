
Graph = require '@dagrejs/graphlib'

class SetupGraph

  constructor: (opts) ->
    console.log 'hi'
    @g = opts.graph
    #@gun = opts.gun

  setup: () ->
    @g.setNode 'a', label: 'node a'
    @g.setNode 'b', label: 'node b'
    @g.setEdge 'a', 'b', label: 'edge a->b'
    json = Graph.json.write @g
    console.log json

module.exports = SetupGraph
