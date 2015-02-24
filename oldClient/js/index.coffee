# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# Sections
Header    = require './header.coffee'
Center    = require './center.coffee'
Info      = require './info.coffee'
CoCreate  = require './cocreate.coffee'
Calendar  = require './calendar.coffee'
Options   = require './options.coffee'


# DOM Elements
{p, div, input} = React.DOM

IndexClass = React.createClass


  getInitialState: ->

    beinDope: true

  negateDope: ->
    @setState beinDope: not @state.beinDope


  render: ->


    div {className: 'content'},


      div 
        className: 'column narrow'

        Info()

        div {className: 'horizontal'}

        Calendar()

      div {className: 'edge'}

      div {className: 'column fat'},

        div
          float: 'right'

        Header()

        div {className: 'horizontal'}

        Center()




      div {className: 'spacer'}

IndexPage = React.createFactory IndexClass
website = new IndexPage
element = document.getElementById 'content'
React.render website, element