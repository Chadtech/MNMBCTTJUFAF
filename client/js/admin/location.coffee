# Libraries
React         = require 'react'  
Parse         = require('parse').Parse 

# Stores
labStore  = require './../lab.store' 
userStore = require './../user.store'

# DOM Elements
{p, div, input} = React.DOM


LocationClass = React.createClass


  getInitialState: ->
    locationURL: @props.locationURL


  handleLocation: (event) ->
    @setState locationURL: event.target.value


  handleSave: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      lab =
        locationURL: context.state.locationURL

      labStore.updateById labId, lab, ->  


  render: ->


    div
      style:
        marginLeft: '4em'

      p
        className: 'events'
        'Location'

      input
        className:    'input full'
        placeholder:  'Google Maps URL'
        onChange:     @handleLocation
        value:        @state.locationURL
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className: 'submit'
        type:      'submit'
        value:     'save'
        onClick:   @handleSave

module.exports = LocationClass