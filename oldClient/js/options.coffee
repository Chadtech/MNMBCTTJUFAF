# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input} = React.DOM


Options = React.createClass


  render: ->
    div {},

      p
        className: 'point'
        'OPTIONS!!'



module.exports = Options