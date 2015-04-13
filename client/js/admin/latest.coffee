# Libraries
React         = require 'react'  
Parse         = require('parse').Parse 

# Stores
labStore  = require './../lab.store'
userStore = require './../user.store'

# DOM Elements
{p, div, input, img} = React.DOM


LatestClass = React.createClass


  getInitialState: ->
    caption: @props.caption
    _URL:    @props._URL
    image:   @props.image


  handleSave: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      lab =
        latestCaption: context.state.caption
        latestURL:     context.state._URL
        latestImage:   context.state.image

      labStore.updateById labId, lab, ->


  handleCaption: (event) ->
    @setState caption: event.target.value


  handleURL: (event) ->
    @setState _URL: event.target.value


  handleImage: (event) ->
    reader = new FileReader()
    file   = event.target.files[0]

    latestImage = new Parse.File 'latest.png', file

    latestImage.save().then =>
      @setState image: latestImage._url

  render: ->


    div
      style:
        marginLeft: '4em'

      p
        className: 'events'
        'Latest'

      input
        className:    'input full'
        placeholder:  'image caption'
        onChange:     @handleCaption
        value:        @state.caption
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input full'
        placeholder:  'image URL'
        onChange:     @handleURL
        value:        @state._URL
        style:
          display:      'table'
          marginRight:  '4em'

      input
        className:    'input file'
        placeholder:  'image caption'
        type:         'file'
        onChange:     @handleImage
        style:
          marginTop:    'auto'
          marginBottom: 'auto'
          display:      'table'

      img
        src: @state.image
        style:
          width:        '200px'
          display:      'table'
          marginBottom: '0.5em'

      input
        className: 'submit'
        type:      'submit'
        value:     'save'
        onClick:   @handleSave


module.exports = LatestClass