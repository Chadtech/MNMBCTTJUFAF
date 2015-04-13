# Libraries
React  = require 'react'

# DOM Elements
{p, div, input, img, iframe} = React.DOM


ProjectBoard = React.createClass


  getInitialState: ->
    pointerEvents: 'auto'


  boardClick: ->
    @setState pointerEvents: 'none'


  render: ->


    div
      style:
        backgroundColor: '#c0c0c0'
        width: '100%'

      div 
        style:
          display:         'table'
          backgroundColor: '#c0c0c0'
          marginLeft:      'auto'
          marginRight:     'auto'

        iframe
          src: 'http://www.phxtech.us'
          style:
            width:  window.innerWidth
            height: 600

        div
          onClick: @boardClick

          style:
            pointerEvents: @state.pointerEvents
            background:   'transparent'
            position:     'relative'
            width:        window.innerWidth
            height:       '606px'
            marginTop:    '-606px'


module.exports = ProjectBoard