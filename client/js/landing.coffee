# Libraries
React   = require 'react'

# DOM Elements
{div} = React.DOM


Landing= React.createClass


  componentDidMount: ->
    window.location.assign 'http://lm-labs.github.io/#/lab/Chandler'


  render: ->

    div null





module.exports = Landing