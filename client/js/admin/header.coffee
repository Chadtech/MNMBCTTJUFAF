# Libraries
React         = require 'react'  
Parse         = require('parse').Parse 

# Stores
labStore  = require './../lab.store'
userStore = require './../user.store'

# DOM Elements
{p, div, input, img} = React.DOM


HeaderClass = React.createClass

  getInitialState: ->
    sun: @props.sun
    mon: @props.mon
    tue: @props.tue
    wed: @props.wed
    thu: @props.thu
    fri: @props.fri
    sat: @props.sat

    contact: @props.contact


  handleSave: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      lab =
        sun: context.state.sun
        mon: context.state.mon
        tue: context.state.tue
        wed: context.state.wed
        thu: context.state.thu
        fri: context.state.fri
        sat: context.state.sat

        contact: context.state.contact

      labStore.updateById labId, lab, ->


  handleSun: (event) ->
    @setState sun: event.target.value


  handleMon: (event) ->
    @setState mon: event.target.value


  handleTue: (event) ->
    @setState tue: event.target.value


  handleWed: (event) ->
    @setState wed: event.target.value


  handleThu: (event) ->
    @setState thu: event.target.value


  handleFri: (event) ->
    @setState fri: event.target.value


  handleSat: (event) ->
    @setState sat: event.target.value


  handleContact: (event) ->
    @setState contact: event.target.value


  render: ->


    div
      style:
        marginLeft: '4em'

      p
        className: 'events'
        'Header'

      p
        className: 'point hilight'
        'Hours and Contact Email'

      input
        className:    'input full'
        placeholder:  'Sun : <open> to <close>'
        onChange:     @handleSun
        value:        @state.sun
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'Mon : <open> to <close>'
        onChange:     @handleMon
        value:        @state.mon
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'Tue : <open> to <close>'
        onChange:     @handleTue
        value:        @state.tue
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'Wed : <open> to <close>'
        onChange:     @handleWed
        value:        @state.wed
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'Thu : <open> to <close>'
        onChange:     @handleThu
        value:        @state.thu
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'Fri : <open> to <close>'
        onChange:     @handleFri
        value:        @state.fri
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'Sat : <open> to <close>'
        onChange:     @handleSat
        value:        @state.sat
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  '<person>@local-motors.com'
        onChange:     @handleContact
        value:        @state.contact
        style:
          display:      'table'
          marginRight:  '4em'


      input
        className: 'submit'
        type:      'submit'
        value:     'save'
        onClick:   @handleSave



module.exports = HeaderClass