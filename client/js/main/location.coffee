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
    div null,

      div
        style:
          width: '100%'

        p
          className: 'events'
          'Location'

        iframe
          src: @props.locationURL
          style:
            border:      '0px'
            width:       window.innerWidth
            height:      '600px'
            frameborder: '0px'

        div
          onClick: @mapClick

          style:
            pointerEvents: @state.pointerEvents
            background:   'transparent'
            position:     'relative'
            width:        window.innerWidth
            height:       '606px'
            marginTop:    '-606px'


module.exports = Location