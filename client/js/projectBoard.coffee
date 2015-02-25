# Libraries
React  = require 'react'

# DOM Elements
{p, div, input, img} = React.DOM


ProjectBoard = React.createClass


  render: ->
    div
      style:
        backgroundColor: '#c0c0c0'
        width: '100%'

      div 
        style:
          display:         'table'
          backgroundColor: '#c0c0c0'
          marginLeft:      'auto'
          marginRight:     'auto'

        img
          src: './projectBoard.png'
          style:
            horizontalAlign: 'middle'
            display:         'table'



module.exports = ProjectBoard