# Libraries
React  = require 'react'

# DOM Elements
{p, div, img} = React.DOM


Latest = React.createClass


  componentDidMount: ->
    window.onscroll = =>
      scrollAmount = document.documentElement.scrollTop or document.body.scrollTop
      if scrollAmount > 50
        @setState scrollOpacity: 0
      else
        @setState scrollOpacity: 1  


  getInitialState: ->
    scrollOpacity: 1

    captionBoxColor:   '#ffffff'
    captionBoxOpacity: '0.5'
    captionColor:      '#000000'

    caption:  @props.caption
    _URL:     @props._URL
    image:    @props.image


  hoveredIn: ->
    @setState captionBoxColor:   '#000000'
    @setState captionBoxOpacity: '1'
    @setState captionColor:      '#bdd530'


  hoveredOut: ->
    @setState captionBoxColor:   '#ffffff'
    @setState captionBoxOpacity: '0.5'
    @setState captionColor:      '#000000'


  handleCaptionClick: ->
    console.log 'A', @state._URL
    unless @state._URL isnt ''
      console.log 'B'
      window.location.assign @state._URL

  render: ->
    div {},

      div 
        style:
          backgroundImage: 'url(' + @state.image + ')'
          backgroundSize:  '100% auto'
          width:    '100%'
          height:   '800px'
          overflow: 'hidden'
          position: 'relative'
          top:    '0px'
          left:   '0px'
          zIndex: '-1'
          
        img
          src:      @state.image
          width:    '100%'
          opacity:  0
          position: 'relative'
          top:      '0px'
          left:     '0px'
          zIndex:   '-1'

        div
          className: 'captionBox'
          style:
            opacity: @state.scrollOpacity

          div
            style:
              height:           'auto'
              maxWidth:         '66em'
              width:            'auto'
              position:         'absolute'
              bottom:           '200px'
              left:             '50px'
              backgroundColor:  @state.captionBoxColor
              opacity:          @state.captionBoxOpacity
              filter:           'blur(10px)'
              padding:          '0.5em'
              zIndex:           '1'

            p
              className: 'caption'
              style:
                position:        'table'
                verticalAlign:   'middle'
                horizontalAlign: 'middle'
                color:           @state.captionColor 

              "Yesterday at LM Labs.."

            p
              className:          'caption faux'
              style:
                verticalAlign:    'middle'
                horizontalAlign:  'middle'
                opacity:          0

              @state.caption

          div
            onMouseEnter: @hoveredIn
            onMouseLeave: @hoveredOut
            # onClick:      @handleCaptionClick
            style:
              height:     'auto'
              maxWidth:   '66em'
              position:   'absolute'
              bottom:     '200px'
              left:       '50px'
              padding:    '0.5em'
              zIndex:     '1'

            p
              className: 'caption'
              style:
                position:        'table'
                verticalAlign:   'middle'
                horizontalAlign: 'middle'
                color:           @state.captionColor 

              "Yesterday at LM Labs.."

            p
              className:          'caption'
              style:
                position:         'table'
                verticalAlign:    'middle'
                horizontalAlign:  'middle'
                color:            @state.captionColor 

              @state.caption


module.exports = Latest

