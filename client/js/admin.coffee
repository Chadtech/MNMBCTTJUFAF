# Libraries
React   = require 'react'
Router  = require 'react-router'
Parse   = require('parse').Parse

# Stores
labStore  = require './lab.store'
userStore = require './user.store'

# Sections
Header        = require './admin/header.coffee'
Latest        = require './admin/latest.coffee'
Calendar      = require './admin/calendar.coffee'
ProjectBoard  = require './admin/ProjectBoard.coffee'
About         = require './admin/about.coffee'
Location      = require './admin/location.coffee'
Tools         = require './admin/tools.coffee'

# DOM Elements
{p, div, input} = React.DOM


Authentication = 
  statics:
    willTransitionTo: (transition) ->
      if Parse.User.current() is null
        transition.redirect 'login'


AdminClass = React.createClass

  
  mixins: [ Authentication, Router.Navigation, Router.State]


  getInitialState: ->
    renderLatest: false


  componentWillMount: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      labStore.getById labId, (lab) =>

        context.setState tools: lab.attributes.tools

        context.setState sun: lab.attributes.sun
        context.setState mon: lab.attributes.mon
        context.setState tue: lab.attributes.tue
        context.setState wed: lab.attributes.wed
        context.setState thu: lab.attributes.thu
        context.setState fri: lab.attributes.fri
        context.setState sat: lab.attributes.sat

        context.setState contact: lab.attributes.contact

        context.setState locationName: lab.attributes.location

        context.setState locationURL: lab.attributes.locationURL

        context.setState about:       lab.attributes.about
        context.setState aboutImage:  lab.attributes.aboutImage

        context.setState calendarURL: lab.attributes.calendarURL

        context.setState _URL:    lab.attributes.latestURL
        context.setState caption: lab.attributes.latestCaption
        context.setState image:   lab.attributes.latestImage, =>
          context.setState renderLatest: true


  signOutHandle: ->
    Parse.User.logOut()
    @transitionTo 'login'


  render: ->


    div {className: 'content'},

      if @state.renderLatest
        div
          style:
            marginLeft:'4em'

          p
            className: 'events'
            'Admin'

          p
            className: 'point hilight'
            'LM Labs ' + @state.locationName

          input
            className: 'submit'
            type:      'submit'
            value:     'sign out'
            onClick:   @signOutHandle

      div
        className: 'break'

      div
        className: 'break'

      if @state.renderLatest
        Header
          sun: @state.sun
          mon: @state.mon
          tue: @state.tue
          wed: @state.wed
          thu: @state.thu
          fri: @state.fri
          sat: @state.sat
          contact: @state.contact

      div
        className: 'break'


      if @state.renderLatest
        Latest
          image:   @state.image
          caption: @state.caption
          _URL:     @state._URL

      div
        className: 'break'


      if @state.renderLatest
        Calendar
          calendarURL: @state.calendarURL

      div
        className: 'break'


      if @state.renderLatest
        ProjectBoard()

      div
        className: 'break'


      if @state.renderLatest
        About
          about: @state.about

      div
        className: 'break'

      if @state.renderLatest
        Location
          locationURL: @state.locationURL

      div
        className: 'break'

      if @state.renderLatest
        Tools
          tools: @state.tools



module.exports = AdminClass