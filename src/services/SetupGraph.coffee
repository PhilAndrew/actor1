
Graph = require '@dagrejs/graphlib'
prettyjson = require 'prettyjson'

class SetupGraph

  constructor: (opts) ->

  setup: () ->

    UI_LIST = 'UI_LIST'
    UI_LIST_TYPE_FILE_SYSTEM_PATH = 'UI_LIST_TYPE_FILE_SYSTEM_PATH'
    UI_POSITION = 'UI_POSITION'

    EDGE_LIST_POSITION = 'EDGE_LIST_POSITION'

    ui = new Graph.Graph()

    ui.setNode UI_LIST,
      type: UI_LIST_TYPE_FILE_SYSTEM_PATH
      path: 'c:\\'

    ui.setNode UI_POSITION,
      x: 100
      y: 100
      width: 200
      height: 800

    # Give the list a position on the screen
    ui.setEdge UI_LIST, UI_POSITION, type: EDGE_LIST_POSITION

    json = Graph.json.write ui

    #console.log JSON.stringify json

    console.log prettyjson.render(json, {})












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
