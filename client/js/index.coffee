# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# Sections
Header        = require './header.coffee'
FauxHeader    = require './fauxHeader.coffee'
Latest        = require './latest.coffee'
Calendar      = require './calendar.coffee'
ProjectBoard  = require './ProjectBoard.coffee'
About         = require './about.coffee'
Location      = require './location.coffee'
Tools         = require './tools.coffee'




# DOM Elements
{p, div, input} = React.DOM

IndexClass = React.createClass


  render: ->


    div {className: 'content'},

      Header()

      FauxHeader()

      Latest()

      Calendar()

      ProjectBoard()

      About()

      Location()

      Tools()


IndexPage = React.createFactory IndexClass
website = new IndexPage
element = document.getElementById 'content'
React.render website, element