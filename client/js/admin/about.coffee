# Libraries
React         = require 'react'  
Parse         = require('parse').Parse 

# Stores
labStore  = require './../lab.store' 
userStore = require './../user.store'

# DOM Elements
{p, div, input, textarea, img} = React.DOM


AboutClass = React.createClass

  
  getInitialState: ->
    about: @props.about
    image: @props.aboutImage


  handleAbout: (event) ->
    @setState about: event.target.value


  handleSave: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      lab =
        about:      context.state.about
        aboutImage: context.state.image

      labStore.updateById labId, lab, ->  


  handleImage: (event) ->
    reader = new FileReader()
    file   = event.target.files[0]

    latestImage = new Parse.File 'about.png', file

    latestImage.save().then =>
      @setState image: latestImage._url


  render: ->

    div
      style:
        marginLeft: '4em'

      p
        className: 'events'
        'About'

      textarea
        className:    'input area'
        placeholder:  'about'
        onChange:     @handleAbout
        value:        @state.about
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

module.exports = AboutClass