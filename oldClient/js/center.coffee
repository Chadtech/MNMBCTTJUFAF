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
        className: 'row short'

        p
          className: 'point'
          'February 19th, 2015'

        p
          className: 'point header'
          "World's largest White Board"

        img
          src: './exampleBraggable.jpg'
          style:
            'max-width':  '800px'
            height: 'auto'


module.exports = Center