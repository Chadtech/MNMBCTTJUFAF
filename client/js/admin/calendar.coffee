# Libraries
React         = require 'react'  
Parse         = require('parse').Parse 

# Stores
labStore  = require './../lab.store'
userStore = require './../user.store'

# DOM Elements
{p, div, input} = React.DOM


CalendarClass = React.createClass


  getInitialState: ->
    calendarURL: @props.calendarURL

  
  handleCalendar: (event) ->
    @setState calendarURL: event.target.value


  handleSave: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      lab =
        calendarURL: context.state.calendarURL

      labStore.updateById labId, lab, ->  


  render: ->


    div
      style:
        marginLeft: '4em'

      p
        className: 'events'
        'Events'

      input
        className:    'input full'
        placeholder:  'Google Calendar URL'
        onChange:     @handleCalendar
        value:        @state.calendarURL
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className: 'submit'
        type:      'submit'
        value:     'save'
        onClick:   @handleSave


module.exports = CalendarClass