# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, iframe} = React.DOM


Calendar = React.createClass


  render: ->
    div {},

      p
        className: 'point header'
        'Events'

      iframe
        src: 'https://www.google.com/calendar/embed?title=LM%20Labs%20Events&amp;showTitle=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;ctz=America%2FNew_York'
        style:
          border:      '0px'
          width:       '200px'
          height:      '600px'
          frameborder: '0px'


module.exports = Calendar