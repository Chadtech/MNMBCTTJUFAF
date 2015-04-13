# Libraries
React = require 'react'

# DOM Elements
{p, div, iframe} = React.DOM


Calendar = React.createClass


  render: ->
    div {},

      p
        className: 'events'
        'Events'

      iframe
        src: @props.calendarURL
        style:
          border:      '0px'
          width:       window.innerWidth + 'px'
          height:      '600px'
          frameborder: '0px'


module.exports = Calendar