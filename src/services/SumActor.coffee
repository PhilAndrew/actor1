
class SumActor

  constructor: (opts) ->
    console.log 'hi'
    #@gun = opts.gun

  sum: () ->
# 1. Read context from graph database
# 2. Perform the sum operation
# 3. Write results to the database
# 4. Reply
    console.log "Hello, #{to}!"

module.exports = SumActor
