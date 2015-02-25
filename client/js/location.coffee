# Libraries
React  = require 'react'

# DOM Elements
{p, div, input, iframe} = React.DOM


Location = React.createClass


  getInitialState: ->
    pointerEvents: 'auto'


  mapClick: ->
    @setState pointerEvents: 'none'


  render: ->
    div {},

      div
        style:
          width: '100%'

        p
          className: 'events'
          'Location'

        iframe
          src: 'https://www.google.com/maps/embed/v1/place?q=Local%20Motors%2C%20South%20Nelson%20Drive%2C%20Chandler%2C%20AZ%2C%20United%20States&key=AIzaSyAB1TaRsN2p7fNrSMJFMfp8xtsVdU_7QtA'
          style:
            border:      '0px'
            width:       window.innerWidth
            height:      '600px'
            frameborder: '0px'

        div
          onClick: @mapClick

          style:
            pointerEvents: @state.pointerEvents
            background: 'transparent'
            position: 'relative'
            width: window.innerWidth
            height: '606px'
            marginTop: '-606px'


module.exports = Location