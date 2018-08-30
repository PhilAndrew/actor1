
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

    console.log '----'

    g2 = Graph.json.read(json)
    console.log g2.nodes()
    # ['a', 'b']
    console.log g2.edges()

module.exports = SetupGraph
