# Libraries
React  = require 'react'

# DOM Elements
{p, div, img} = React.DOM


caption = "Martin designs a glove compartment in Solid Edge"


Latest = React.createClass


  componentDidMount: ->
    window.onscroll = =>
      scrollAmount = document.documentElement.scrollTop or document.body.scrollTop
      if scrollAmount > 0
        @setState scrollOpacity: 0
      else
        @setState scrollOpacity: 1    


  getInitialState: ->
    scrollOpacity: 1

    captionBoxColor:   '#ffffff'
    captionBoxOpacity: '0.5'
    captionColor:      '#000000'


  hoveredIn: ->
    @setState captionBoxColor:   '#000000'
    @setState captionBoxOpacity: '1'
    @setState captionColor:      '#bdd530'


  hoveredOut: ->
    @setState captionBoxColor:   '#ffffff'
    @setState captionBoxOpacity: '0.5'
    @setState captionColor:      '#000000'


  render: ->
    div {},

      div 
        style:
          width:    '100%'
          height:   '800px'
          overflow: 'hidden'
          
        img
          src:   './braggable0.jpg'
          width: '100%'

        div
          className: 'captionBox'
          style:
            opacity: @state.scrollOpacity

          div
            style:
              height:          'auto'
              maxWidth:        '66em'
              width:           'auto'
              position:        'absolute'
              bottom:          '50px'
              left:            '50px'
              backgroundColor: @state.captionBoxColor
              opacity:         @state.captionBoxOpacity
              filter:          'blur(10px)'
              padding:         '0.5em'

            p
              className: 'caption'
              style:
                position:        'table'
                verticalAlign:   'middle'
                horizontalAlign: 'middle'
                color:           @state.captionColor 

              "Yesterday at LM Labs.."

            p
              className: 'caption faux'
              style:
                verticalAlign:   'middle'
                horizontalAlign: 'middle'
                opacity:         0

              caption

          div
            onMouseEnter: @hoveredIn
            onMouseLeave: @hoveredOut
            style:
              height:   'auto'
              maxWidth: '66em'
              position: 'absolute'
              bottom:   '50px'
              left:     '50px'
              padding:  '0.5em'

            p
              className: 'caption'
              style:
                position:        'table'
                verticalAlign:   'middle'
                horizontalAlign: 'middle'
                color:           @state.captionColor 

              "Yesterday at LM Labs.."

            p
              className: 'caption'
              style:
                position:        'table'
                verticalAlign:   'middle'
                horizontalAlign: 'middle'
                color:           @state.captionColor 

              caption


module.exports = Latest

