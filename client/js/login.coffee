# Libraries
React   = require 'react'
Router  = require 'react-router'
Parse   = require('parse').Parse

# DOM Elements
{p, div, input, iframe} = React.DOM


Login = React.createClass


  mixins: [ Router.Navigation, Router.State ]


  getInitialState: ->
    username: ''
    password: ''


  usernameHandle: (event) ->
    @setState username: event.target.value


  passwordHandle: (event) ->
    @setState password: event.target.value


  submitHandle: ->
    context = @

    Parse.User.logIn @state.username, @state.password,
      success: (user) =>
        context.transitionTo 'admin'

      error: (user, error) =>
        console.log 'NOPE', user, error


  render: ->


    div
      style:
        marginLeft:   'auto'
        marginRight:  'auto'
        marginTop:    '20%'
        width:        '185px'

      p
        className:      'events'
        style:
          marginBottom: '0.5em'
        'Login'

      input
        className:    'input'
        value:        @state.usernameValue
        onChange:     @usernameHandle
        placeholder:  'username'
        style:
          display:    'table'

      input
        className:    'input'
        type:         'password'
        value:        @passwordValue
        onChange:     @passwordHandle
        placeholder:  'password'
        style:
          display:    'table'

      input
        className:  'submit'
        type:       'submit'
        value:      'Submit'
        onClick:    @submitHandle
        style:
          display:  'table'





module.exports = Login