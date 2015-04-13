Parse = require('parse').Parse

User = Parse.Object.extend 'User', {},

  updateById: (id, user, callback) ->
    instance    = new User()
    instance.id = id

    instance.save user,
      success: (user) ->
        callback(instance)

      error: (obj, err) ->
        console.error('create() error', obj, err)

  getById: (id, callback) ->
    query = new Parse.Query(User)

    query.get id,
      success: (user) ->
        callback(user)

      error: (obj, err) ->
        console.error 'getById() error', obj, err

  # create: (labState, callback) ->
  #   instance = new lab()

  #   instance.save labState,
  #     success: (labState) ->
  #       callback(labState)

  #     error: (obj, err) ->
  #       console.error 'create() error', obj, err


module.exports = User
