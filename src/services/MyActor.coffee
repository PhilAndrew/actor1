
class MyActor

  constructor: (opts) ->
    @gun = opts.gun

  sayHello: (to) ->
    console.log "Hello, #{to}!"
    @gun.get('mark').put
      name: 'Mark'
      email: 'mark@gunDB.io'

module.exports = MyActor

