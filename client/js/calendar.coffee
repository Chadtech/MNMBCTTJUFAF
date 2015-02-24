# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, iframe} = React.DOM


Calendar = React.createClass


  render: ->
    div {},

      div
        style:
          height: '50px'

      div
        style:
          #'horizontal-align': 'center'
          'margin-left': 'auto'
          'margin-right': 'auto'
          width: '800px'

        p
          className: 'events'
          'Events'

        iframe
          src: 'https://www.google.com/calendar/embed?showTitle=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;ctz=America%2FNew_York'
          style:
            border:      '0px'
            width:       '800px'
            height:      '600px'
            frameborder: '0px'

      div
        style:
          height: '50px'



module.exports = Calendar