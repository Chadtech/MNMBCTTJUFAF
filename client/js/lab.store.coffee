Parse   = require('parse').Parse

Lab = Parse.Object.extend 'lab', {},

  updateById: (id, lab, callback) ->
    instance    = new Lab()
    instance.id = id

    instance.save lab,
      success: (lab) ->
        callback(instance)

      error: (obj, err) ->
        console.error('create() error', obj, err)


  getById: (id, callback) ->
    query = new Parse.Query(Lab)

    query.get id,
      success: (lab) ->
        callback(lab)

      error: (obj, err) ->
        console.error 'getById() error', obj, err


module.exports = Lab
