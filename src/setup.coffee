
Gun = require 'gun'
Comedy = require 'comedy'
Awilix = require 'awilix'

# Setup
actorSystem = Comedy()

# radisk false and file false to force in memory storage
gun = Gun({radisk: false, file: false})

# Dependency injection
container = Awilix.createContainer
  injectionMode: Awilix.InjectionMode.PROXY

container.register
  gun: Awilix.asValue gun
  actorSystem: Awilix.asValue actorSystem

opts = {}

container.loadModules [
  'src/services/*.js'
], opts

module.exports = {container: container}
