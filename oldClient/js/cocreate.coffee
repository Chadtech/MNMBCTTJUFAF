# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input} = React.DOM


Cocreate = React.createClass


  render: ->
    div {},

      p
        className: 'point'
        'COCREATE!!'



module.exports = Cocreate