# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, img} = React.DOM


Center = React.createClass


  render: ->
    div {},

      div 
        style:
          width: '100%'
          height: '800px'
          overflow: 'hidden'
          
        img
          src: './exampleBraggable.jpg'
          width: '100%'

        p
          className: 'caption'
          style:
            'margin-top': '-725px'
            'margin-left': '50px'
          "World's largest white board assembled at LM Labs"

        p
          className: 'point hilight'
          style:
            'margin-top': '-700px'
            'margin-left': '50px'
          "February 19th, 2015"

module.exports = Center