# Libraries
React  = require 'react'   
Router = require 'react-router' 
Parse  = require('parse').Parse 


# Stores
labStore  = require './lab.store'
userStore = require './user.store'


# Sections
Header        = require './main/header.coffee'
FauxHeader    = require './main/fauxHeader.coffee'
Latest        = require './main/latest.coffee'
Calendar      = require './main/calendar.coffee'
ProjectBoard  = require './main/ProjectBoard.coffee'
About         = require './main/about.coffee'
Location      = require './main/location.coffee'
Tools         = require './main/tools.coffee'


# DOM Elements
{div} = React.DOM


IndexClass = React.createClass


  mixins: [ Router.Navigation, Router.State ]


  getInitialState: ->
    renderIndex: false


  componentWillMount: ->
    context = @

    Lab = Parse.Object.extend 'lab'
    query = new Parse.Query Lab
    query.equalTo 'location', @getParams().labName
    query.find 
      success: (lab) =>
        lab = lab[0]

        context.setState tools: lab.attributes.tools

        context.setState sun: lab.attributes.sun
        context.setState mon: lab.attributes.mon
        context.setState tue: lab.attributes.tue
        context.setState wed: lab.attributes.wed
        context.setState thu: lab.attributes.thu
        context.setState fri: lab.attributes.fri
        context.setState sat: lab.attributes.sat

        context.setState contact: lab.attributes.contact

        context.setState locationURL: lab.attributes.locationURL

        context.setState about:       lab.attributes.about
        context.setState aboutImage:  lab.attributes.aboutImage

        context.setState calendarURL: lab.attributes.calendarURL

        context.setState _URL:    lab.attributes.latestURL
        context.setState caption: lab.attributes.latestCaption
        context.setState image:   lab.attributes.latestImage, =>
          context.setState renderIndex: true

      error: (error) =>
        console.log 'ERROR IS ', error 


  render: ->

    if @state.renderIndex
      div className: 'content',

        Header
          sun: @state.sun
          mon: @state.mon
          tue: @state.tue
          wed: @state.wed
          thu: @state.thu
          fri: @state.fri
          sat: @state.sat
          contact: @state.contact

        FauxHeader()

        Latest
          _URL:     @state._URL
          caption:  @state.caption
          image:    @state.image

        Calendar
          calendarURL: @state.calendarURL

        ProjectBoard()

        About
          about:        @state.about
          aboutImage:   @state.aboutImage

        Location
          locationURL:  @state.locationURL

        Tools
          tools: @state.tools

    else
      div null

module.exports = IndexClass


