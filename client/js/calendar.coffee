# Libraries
React  = require 'react'

# DOM Elements
{p, div, iframe} = React.DOM


Calendar = React.createClass


  render: ->
    div {},

      p
        className: 'events'
        'Events'

      iframe
        src: 'https://www.google.com/calendar/embed?showTitle=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;ctz=America%2FNew_York'
        style:
          border:      '0px'
          width:       window.innerWidth + 'px'
          height:      '600px'
          frameborder: '0px'


module.exports = Calendar