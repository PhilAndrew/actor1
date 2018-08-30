
Comedy = require 'comedy'
Awilix = require 'awilix'
Winston = require 'winston'
Graph = require '@dagrejs/graphlib'

graphClass = Graph.Graph
graphInstance = new graphClass()

# Logging
logger = Winston.createLogger(transports: [
  new (Winston.transports.Console)
  new (Winston.transports.File)(filename: 'combined.log')
])

logger.log('info', 'Startup')

# Setup
actorSystem = Comedy()

# radisk false and file false to force in memory storage
#gun = Gun({radisk: false, file: false})

# Dependency injection
container = Awilix.createContainer
  injectionMode: Awilix.InjectionMode.PROXY

container.register
  logger: Awilix.asValue logger
  actorSystem: Awilix.asValue actorSystem
  graphClass: Awilix.asClass graphClass
  graph: Awilix.asValue graphInstance

  #gun: Awilix.asValue gun

opts = {}

container.loadModules [
  'src/services/*.js'
], opts

module.exports = {container: container}
