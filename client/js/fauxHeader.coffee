# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{a, p, div, input, img, span, iframe} = React.DOM



FauxHeader = React.createClass


  render: ->
    div
      style:
        backgroundColor: '#000000'
        width:           '100%'
        height:          '91px'







module.exports = FauxHeader