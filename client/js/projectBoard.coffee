# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, img} = React.DOM


ProjectBoard = React.createClass


  render: ->
    div
      style:
        'background-color': '#c0c0c0'
        width: '100%'
      div 
        style:
          display: 'table'
          'background-color': '#c0c0c0'
          'margin-left': 'auto'
          'margin-right': 'auto'

        img
          src: './projectBoard.png'
          style:
            'horizontal-align': 'middle'
            display: 'table'



module.exports = ProjectBoard