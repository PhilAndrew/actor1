
class SumActor
  # @todo Dependency injection of gun database and actor system and our node in the database

  constructor: (opts) ->
    @gun = opts.gun

  sum: () ->
    # 1. Read context from graph database
    # 2. Perform the sum operation
    # 3. Write results to the database
    # 4. Reply
    console.log "Hello, #{to}!"
    gun.get('mark').put
      name: 'Mark'
      email: 'mark@gunDB.io'

module.exports = SumActor
