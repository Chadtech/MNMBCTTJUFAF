# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# Sections
Header        = require './header.coffee'
Latest        = require './latest.coffee'
Calendar      = require './calendar.coffee'
ProjectBoard  = require './ProjectBoard.coffee'
About         = require './about.coffee'
Location      = require './location.coffee'





# DOM Elements
{p, div, input} = React.DOM

IndexClass = React.createClass


  render: ->


    div {className: 'content'},

      Header()

      div
        style:
          height: '132px'

      Latest()

      Calendar()

      ProjectBoard()

      About()

      Location()


IndexPage = React.createFactory IndexClass
website = new IndexPage
element = document.getElementById 'content'
React.render website, element