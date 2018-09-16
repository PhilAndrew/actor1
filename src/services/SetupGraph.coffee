
Graph = require '@dagrejs/graphlib'
prettyjson = require 'prettyjson'

class SetupGraph

  constructor: (opts) ->

  setup: () ->
    ui = new Graph.Graph()
    ui.setNode 'listOfFiles', path: 'node a'
    ui.setNode 'b', label: 'node b'
    ui.setEdge 'listOfFiles', 'b', label: 'edge a->b'
    json = Graph.json.write ui
    #console.log JSON.stringify json

    options = noColor: false
    console.log prettyjson.render(json, options)

#    g = new Graph.Graph()
#    g.setNode 'a', label: 'node a'
#    g.setNode 'b', label: 'node b'
#    g.setEdge 'a', 'b', label: 'edge a->b'
#    json = Graph.json.write g
#    console.log json
#    console.log '----'

    g2 = Graph.json.read(json)
    console.log g2.nodes()
    # ['a', 'b']
    console.log g2.edges()

  createUI: () ->
    ui = new Graph.Graph()
    ui.setNode 'listOfFiles', path: 'node a'
    ui.setNode 'b', label: 'node b'
    ui.setEdge 'listOfFiles', 'b', label: 'edge a->b'
    json = Graph.json.write g
    console.log json

  createListNode: (graph) ->
    console.log 'hi'

module.exports = SetupGraph
